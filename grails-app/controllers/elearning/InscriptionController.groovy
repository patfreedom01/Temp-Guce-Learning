package elearning

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.OK

class InscriptionController {

    InscriptionService inscriptionService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond inscriptionService.list(params), model:[inscriptionCount: inscriptionService.count()]
    }

    def tableauHelpDk(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond inscriptionService.list(params), model:[inscriptionCount: inscriptionService.count()]
    }
    def tableauMep(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond inscriptionService.list(params), model:[inscriptionCount: inscriptionService.count()]
    }

    def create(){
        List<Formation> formations = Formation.list()
        Inscription inscription = new Inscription(params)
        return render(view: 'create', model: [inscription: inscription, formations: formations])
    }
    def save() {
        Inscription inscription = new Inscription()
        bindData (inscription, params)

        if (inscription == null) {
            notFound()
            return
        }

        try {
            inscriptionService.save(inscription)
        } catch (ValidationException e) {
            respond inscription.errors, view:'index'
            return
        }
        return redirect(action: 'index')
    }


    def update(Inscription inscription) {
        if (inscription == null) {
            notFound()
            return
        }

        try {
            inscriptionService.save(inscription)
        } catch (ValidationException e) {
            respond inscription.errors, view:'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'inscription.label', default: 'Inscription'), inscription.id])
                redirect(action: 'index')
            }
            '*'{ respond inscription, [status: OK] }
        }

    }
    def updateHelpDk(Inscription inscription) {
        if (inscription == null) {
            notFound()
            return
        }

        try {
            inscriptionService.save(inscription)
        } catch (ValidationException e) {
            respond inscription.errors, view:'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'inscription.label', default: 'Inscription'), inscription.id])
                redirect(action: 'tableauHelpDk')
            }
            '*'{ respond inscription, [status: OK] }
        }

    }
    def updateMep(Inscription inscription) {
        if (inscription == null) {
            notFound()
            return
        }

        try {
            inscriptionService.save(inscription)
        } catch (ValidationException e) {
            respond inscription.errors, view:'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'inscription.label', default: 'Inscription'), inscription.id])
                redirect(action: 'tableauMep')
            }
            '*'{ respond inscription, [status: OK] }
        }

    }

    def show (){
        respond inscriptionService.get(params.id)
    }
    def showHelpDk (){
        respond inscriptionService.get(params.id)
    }
    def showMep (){
        respond inscriptionService.get(params.id)
    }
    def edit () {
        respond inscriptionService.get(params.id)
//        redirect(action: 'index')
    }
    def editMep () {
        respond inscriptionService.get(params.id)
//        redirect(action: 'index')
    }
    def editHelpDk () {
        respond inscriptionService.get(params.id)
//        redirect(action: 'index')
    }

    def delete () {
        Inscription inscription = inscriptionService.get(params.id)
        inscriptionService.delete(inscription.id)
        redirect(action: 'index')
    }
}
