package elearning.interceptors

class AdminInterceptor {

    def authentificationService

/*    AdminInterceptor(){
        match controller: 'formation|demande', action:'*'
    }*/
    AdminInterceptor(){
        match controller: 'demande|formation|home|societe|utilisateur|utilisateurRole', action:'*'
    }

    boolean before() {
//        if(!authentificationService.isAccess(request)){
//            if(!authentificationService.isAuthenticated(request)){
//                redirect(controller: "auth", action: "index")
//                return false
//            }
//            redirect (controller: "auth", action: "noaccess")
//            return false
//        }
        return true
    }


    boolean after() { return true }

    void afterView() {
        // no-op
    }
}
