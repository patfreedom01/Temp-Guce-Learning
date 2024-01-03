package elearning.interceptors


class OperateurInterceptor {
    def authentificationService

    OperateurInterceptor(){
        match controller: 'demande|home', action:'*'
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
