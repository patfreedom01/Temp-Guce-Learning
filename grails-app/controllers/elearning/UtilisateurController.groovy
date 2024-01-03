package elearning

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.OK

class UtilisateurController {

    UtilisateurService utilisateurService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond utilisateurService.list(params), model:[utilisateurCount: utilisateurService.count()]
    }

    def create() {
        respond new Utilisateur(params)
    }

    def save() {
        Utilisateur utilisateur = new Utilisateur()
        bindData (utilisateur, params)

        if (utilisateur == null) {
            notFound()
            return
        }

        try {
            utilisateurService.save(utilisateur)
        } catch (ValidationException e) {
            respond utilisateur.errors, view:'create'
            return
        }
        return redirect(action: 'index')
    }


    def update(Utilisateur utilisateur) {
        if (utilisateur == null) {
            notFound()
            return
        }

        try {
            utilisateurService.save(utilisateur)
        } catch (ValidationException e) {
            respond utilisateur.errors, view:'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'utilisateur.label', default: 'utilisateur'), utilisateur.id])
                redirect(action: 'index')
            }
            '*'{ respond utilisateur, [status: OK] }
        }
    }


    def show () {
        respond utilisateurService.get(params.id)
    }
    def edit () {
        respond utilisateurService.get(params.id)
    }

    def delete () {
        Utilisateur utilisateur = utilisateurService.get(params.id)
        utilisateurService.delete(utilisateur.id)
        redirect(action: 'index')
    }





}
