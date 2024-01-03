package elearning

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.OK

class DemandeController {

    DemandeService demandeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond demandeService.list(params), model:[demandeCount: demandeService.count()]
    }
    def tableauHelpDk(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond demandeService.list(params), model:[demandeCount: demandeService.count()]
    }
    def tableauMep(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond demandeService.list(params), model:[demandeCount: demandeService.count()]
    }

    def create(){
        respond new Demande(params)
    }
    def createInscription(){
        respond new Demande(params)
    }

    def save() {
        Demande demande = new Demande()
        bindData (demande, params)

        if (demande == null) {
            notFound()
            return
        }

        try {
            demandeService.save(demande)
        } catch (ValidationException e) {
            respond demande.errors, view:'index'
            return
        }
        return redirect(action: 'index')
    }

    def update(Demande demande ) {
        if (demande == null) {
            notFound()
            return
        }

        try {
            demandeService.save(demande)
        } catch (ValidationException e) {
            respond demande.errors, view:'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'demande.label', default: 'Demande'), demande.id])
                redirect demande
            }
            '*'{ respond demande, [status: OK] }
        }

    }

    def updateHelpDk(Demande demande ) {
        if (demande == null) {
            notFound()
            return
        }

        try {
            demandeService.save(demande)
        } catch (ValidationException e) {
            respond demande.errors, view:'editHelpDk'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'demande.label', default: 'Demande'), demande.id])
                redirect(action: 'showHelpDk')
            }
            '*'{ respond demande, [status: OK] }
        }

    }
    def updateMep(Demande demande ) {
        if (demande == null) {
            notFound()
            return
        }

        try {
            demandeService.save(demande)
        } catch (ValidationException e) {
            respond demande.errors, view:'editMep'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'demande.label', default: 'Demande'), demande.id])
                respond view: "showMep"
//                redirect (view: "showMep")
            }
            '*'{ respond demande, [status: OK] }
        }

    }
    def show(Long id) {
        respond demandeService.get(id)
    }

    def showHelpDk(Long id) {
        respond demandeService.get(id)
    }

    def showMep(Long id) {
        respond demandeService.get(id)
    }

    def edit () {
        respond demandeService.get(params.id)
    }
    def editHelpDk () {
        respond demandeService.get(params.id)
    }
    def editMep () {
        respond demandeService.get(params.id)
    }

    def delete () {
        Demande demande = demandeService.get(params.id)
        demandeService.delete(demande.id)
        redirect(action: 'index')
    }
}
