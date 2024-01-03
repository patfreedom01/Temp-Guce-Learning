package elearning

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TestDomainController {

    TestDomainService testDomainService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond testDomainService.list(params), model:[testDomainCount: testDomainService.count()]
    }

    def show(Long id) {
        respond testDomainService.get(id)
    }

    def create() {
        respond new TestDomain(params)
    }

    def save(TestDomain testDomain) {
        if (testDomain == null) {
            notFound()
            return
        }

        try {
            testDomainService.save(testDomain)
        } catch (ValidationException e) {
            respond testDomain.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testDomain.label', default: 'TestDomain'), testDomain.id])
                redirect testDomain
            }
            '*' { respond testDomain, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond testDomainService.get(id)
    }

    def update(TestDomain testDomain) {
        if (testDomain == null) {
            notFound()
            return
        }

        try {
            testDomainService.save(testDomain)
        } catch (ValidationException e) {
            respond testDomain.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'testDomain.label', default: 'TestDomain'), testDomain.id])
                redirect testDomain
            }
            '*'{ respond testDomain, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        testDomainService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'testDomain.label', default: 'TestDomain'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testDomain.label', default: 'TestDomain'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
