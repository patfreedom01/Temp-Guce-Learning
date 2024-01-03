package elearning.interceptors


class ResponsableMepInterceptor {

    def authentificationService

    ResponsableMepInterceptor(){
        match controller: 'formation|home|demande', action:'*'
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
