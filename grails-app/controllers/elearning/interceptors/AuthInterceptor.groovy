package elearning.interceptors

class AuthInterceptor {
    def authentificationService
/*    AuthInterceptor  (){
       match controller: 'formation|demande|home', action: '*'

    }*/
    AuthInterceptor  (){
        match controller: 'home', action: '*'

    }
    boolean before() {
//        if(!authentificationService.isAuthenticated(request)){
//            redirect(controller: "auth", action: "index")
//            return false
//        }
        return true
    }

    boolean after() {
        return true
    }

    void afterView() {
        // no-op
    }
}
