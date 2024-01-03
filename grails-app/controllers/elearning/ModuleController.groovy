package elearning

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.OK

class ModuleController {

    ModuleService moduleService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond moduleService.list(params), model:[moduleCount: moduleService.count()]
    }

    def create() {
        respond new Module(params)
    }




    def update(Module module) {

        if (module == null) {
            notFound()
            return
        }

        try {
            moduleService.save(module)
        } catch (ValidationException e) {
            respond module.errors, view:'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'module.label', default: 'module'), module.id])
//                redirect(action: 'index')
                redirect module
            }
            '*'{ respond module, [status: OK] }
        }
    }

    def save() {
        Module module = new Module()
        bindData (module, params)

        if (module == null) {
            notFound()
            return
        }

        try {
            moduleService.save(module)
        } catch (ValidationException e) {
            respond module.errors, view:'create'
            return
        }
//        return redirect(action: 'index')
        redirect module

    }

    def show () {
        respond moduleService.get(params.id)
    }

    def edit () {
        respond moduleService.get(params.id)
    }

    def delete () {
        Module module = moduleService.get(params.id)
        moduleService.delete(module.id)
        redirect(action: 'index')
    }
}
