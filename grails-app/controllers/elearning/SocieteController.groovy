package elearning

import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.OK

class SocieteController {

    SocieteService societeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond societeService.list(params), model:[societeCount: societeService.count()]
    }

    def create(){
        respond new Societe(params)
    }
    def save() {
        Societe societe = new Societe()
        bindData (societe, params)

        if (societe == null) {
            notFound()
            return
        }

        try {
            societeService.save(societe)
        } catch (ValidationException e) {
            respond societe.errors, view:'index'
            return
        }
        return redirect(action: 'index')
    }


    def update(Societe societe) {
        if (societe == null) {
            notFound()
            return
        }

        try {
            societeService.save(societe)
        } catch (ValidationException e) {
            respond societe.errors, view:'edit'
            return
        }
         request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'societe.label', default: 'Societe'), societe.id])
                redirect(action: 'index')
            }
            '*'{ respond societe, [status: OK] }
        }

    }

    def show (Long id){
        respond societeService.get(params.id)
    }
//    def show (){
//        respond societeService.get(params.id)
//    }
    def edit () {
        respond societeService.get(params.id)
//        redirect(action: 'index')
    }

    def delete () {
        Societe societe = societeService.get(params.id)
        societeService.delete(societe.id)
        redirect(action: 'index')
    }





}
