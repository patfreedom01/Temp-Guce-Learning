package elearning

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.OK

class UtilisateurRoleController {

    UtilisateurRoleService utilisateurRoleService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond utilisateurRoleService.list(params), model:[utilisateurRoleCount: utilisateurRoleService.count()]
    }

    def create() {
        respond new UtilisateurRole(params)
    }

    def save() {
        UtilisateurRole utilisateurRole = new UtilisateurRole()
        bindData (utilisateurRole, params)

        if (utilisateurRole == null) {
            notFound()
            return
        }

        try {
            utilisateurRoleService.save(utilisateurRole)
        } catch (ValidationException e) {
            respond utilisateurRole.errors, view:'create'
            return
        }
        return redirect(action: 'index')
    }


    def update(UtilisateurRole utilisateurRole) {
        if (utilisateurRole == null) {
            notFound()
            return
        }

        try {
            utilisateurRoleService.save(utilisateurRole)
        } catch (ValidationException e) {
            respond utilisateurRole.errors, view:'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'utilisateurRole.label', default: 'utilisateurRole'), utilisateurRole.id])
                redirect(action: 'index')
            }
            '*'{ respond utilisateurRole, [status: OK] }
        }
    }

    def show () {
        respond utilisateurRoleService.get(params.id)
    }


    def edit () {
        respond utilisateurRoleService.get(params.id)
    }


    def delete () {
        UtilisateurRole utilisateurRole = utilisateurRoleService.get(params.id)
        utilisateurRoleService.delete(utilisateurRole.id)
        redirect(action: 'index')
    }
}
