package elearning

class HomeController {
    InscriptionService inscriptionService
    DemandeService demandeService
    def index() {

    }

    def tableauDebord(Integer max) {
        params.max = Math.min(max ?: 10, 1000)
        params.sort = "id"
        params.order = "desc"
        respond inscriptionService.list(params), model:[inscriptionCount: inscriptionService.count()]
        respond demandeService.list(params), model:[demandeCount: demandeService.count()]
    }

}
