package elearning.interceptors


class FormateurInterceptor {
    def authentificationService

    FormateurInterceptor(){
        match controller: 'formation|home', action:'*'
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
