package elearning

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.OK

class UtilisateurController2 {

    UtilisateurService utilisateurService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond utilisateurService.list(params), model:[utilisateurCount: utilisateurService.count()]
    }

//    def show(Long id) {
//        respond utilisateurService.get(id)
//    }

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
            respond utilisateur.errors, view:'index'
            return
        }
        return redirect(utilisateur)
    }

//    def save(Utilisateur utilisateur) {
//        if (utilisateur == null) {
//            notFound()
//            return
//        }
//
//        try {
//            utilisateurService.save(utilisateur)
//        } catch (ValidationException e) {
//            respond utilisateur.errors, view:'index'
//            return
//        }
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.created.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), utilisateur.id])
//                redirect utilisateur
//            }
//            '*' { respond utilisateur, [status: CREATED] }
//        }
//    }

//    def edit(Long id) {
//        respond utilisateurService.get(id)
//    }

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
                flash.message = message(code: 'default.updated.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), utilisateur.id])
                redirect utilisateur
            }
            '*'{ respond utilisateur, [status: OK] }
        }
    }

//    def delete(Long id) {
//        if (id == null) {
//            notFound()
//            return
//        }
//
//        utilisateurService.delete(id)
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.deleted.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), id])
//                redirect action:"index", method:"GET"
//            }
//            '*'{ render status: NO_CONTENT }
//        }
//    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }


//    ******************* Fonctions réécrites ***************


    def show (Integer max) {
        respond new Societe(params)
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond utilisateurService.list(params), model:[utilisateurCount: utilisateurService.count()]
    }

    def details (Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond utilisateurService.get(params.id)
        respond utilisateurService.list(params), model:[utilisateurCount: utilisateurService.count()]
    }
    def edit (Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond utilisateurService.get(params.id)
        respond utilisateurService.list(params), model:[utilisateurCount: utilisateurService.count()]
    }

    def delete () {
        Societe societe = utilisateurService.get(params.id)
        utilisateurService.delete(societe.id)
        redirect(societe)
    }

}
