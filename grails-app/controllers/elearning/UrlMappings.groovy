package elearning

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
/*
       "/"(view: "/auth/loginForm")
*/

//       "/"(controller: "auth", action: "index")
       "/"(controller: "home", action: "index")

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
