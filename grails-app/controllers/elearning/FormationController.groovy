package elearning

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.OK

class FormationController {

    FormationService formationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond formationService.list(params), model: [formationCount: formationService.count()]
    }

    def create() {
        List<Module> modules = Module.list()
        Formation formation = new Formation(params)
        return render(view: 'create', model: [formation: formation, modules: modules])
    }


    def update(Formation formation) {

        if (formation == null) {
            notFound()
            return
        }

        try {
            formationService.save(formation)
        } catch (ValidationException e) {
            respond formation.errors, view: 'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formation.label', default: 'formation'), formation.id])
                redirect formation
            }
            '*' { respond formation, [status: OK] }
        }
    }

    def save() {
        Formation formation = new Formation()
        bindData(formation, params)

        if (formation == null) {
            notFound()
            return
        }

        try {
            formationService.save(formation)
        } catch (ValidationException e) {
            return redirect(action: 'create')

        }
        redirect formation
    }

    def show(Long id) {
        respond formationService.get(id)
    }

    def edit() {
        respond formationService.get(params.id)
    }

    def delete() {
        Formation formation = formationService.get(params.id)
        formationService.delete(formation.id)
        redirect(action: 'index')
    }
}
