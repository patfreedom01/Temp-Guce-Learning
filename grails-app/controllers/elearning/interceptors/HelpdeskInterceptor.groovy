package elearning.interceptors


class HelpdeskInterceptor {

    def authentificationService

    HelpdeskInterceptor(){
        match controller: 'demande|formation|home|societe|utilisateur', action:'*'
    }

    boolean before() {
//        if(!authentificationService.isAccess(request)){
//            redirect (controller: "auth", action: "noaccess")
//            return false
//        }
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
