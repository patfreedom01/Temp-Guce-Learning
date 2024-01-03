package elearning

import org.grails.web.util.WebUtils

class AuthentificationService {

//    def rest
//
//    def authenticated (String email, String password, request){
//
//
//        def response = rest.post("https://trn.guce.gouv.ci/auth-ws/rest/api/authenticate"){
//            contentType("application/json")
//            json ('{ "username": "'+email+'", "password": "'+password+'" }')
//        }
//
//        def sessionId = response.json.sessionId
//        def appRoles = response.json.APP_ROLES
//        if(sessionId){
//            def session = request.getSession()
//            // session.setAttribute("isAuthenticated", "true")
//          //  session.setAttribute("email","fady.diarra@guce.gouv.ci")
//            session.setAttribute("sessionId",sessionId)
//            session.setAttribute("appRoles",appRoles)
//            println("test")
//        }else{
//            throw new AuthentificatedException("Mot de passe ou email incorrect !")
//        }
//    }
//    def static getUser(javax.servlet.http.HttpServletRequest request){
//        def session = request.getSession()
//        def email = session.getAttribute("email")
//        return  Utilisateur.findByEmailPro(email)
//    }
//    def isAuthenticated(request){
//        def session = request.getSession()
//        def sessionId = session.getAttribute("sessionId")
//
//        def response = rest.post("https://trn.guce.gouv.ci/auth-ws/rest/api/properties"){
//            contentType("application/json")
//            json ('{ "jossoSessionId": "'+sessionId+'" }')
//        }
//
//        return response && response.status == 200 && response.json && response.json.sessionId
//    }
//
//
//    def static isAdmin(javax.servlet.http.HttpServletRequest request){
//        /*def user = getUser(request)
//        def utilisateurRole = UtilisateurRole.findByUtilisateur(user)
//        return  utilisateurRole?.authority == "ADMIN"*/
//
//        def session = request.getSession()
//        def appRoles = session.getAttribute("appRoles") //la valeur de appRoles dans la session inserrée dans authenticated
//        def role = appRoles.find{ it.equals("efemci_super_administrator")} // fouiller dans le tableau de roles si la valeur du role récupérée dans appRoles existe
//        return role != null // retourne le booleen
//    }
//
//    def static isFormateur(javax.servlet.http.HttpServletRequest request){
//        def session = request.getSession()
//        def appRoles = session.getAttribute("appRoles") //la valeur de appRoles dans la session inserrée dans authenticated
//        def role = appRoles.find{ it.equals("efemci_admin")} // fouiller dans le tableau de roles si la valeur du role récupérée dans appRoles existe
//        return role != null // retourne le booleen
//    }
//
//    def static isResponsableMep(javax.servlet.http.HttpServletRequest request){
//        def session = request.getSession()
//        def appRoles = session.getAttribute("appRoles") //la valeur de appRoles dans la session inserrée dans authenticated
//        def role = appRoles.find{ it.equals("efemci_govt_supervisor")} // fouiller dans le tableau de roles si la valeur du role récupérée dans appRoles existe
//        return role != null // retourne le booleen
//    }
//
//    def static isHelpdesk(request){
//        def session = request.getSession()
//        def appRoles = session.getAttribute("appRoles") //la valeur de appRoles dans la session inserrée dans authenticated
//        def role = appRoles.find{ it.equals("efemci_govt_officer")} // fouiller dans le tableau de roles si la valeur du role récupérée dans appRoles existe
//        return role != null // retourne le booleen
//    }
//
//    def static isOperateur(request){
//        def session = request.getSession()
//        def appRoles = session.getAttribute("appRoles") //la valeur de appRoles dans la session inserrée dans authenticated
//        def role = appRoles.find{ it.equals("efemci_trader")} // fouiller dans le tableau de roles si la valeur du role récupérée dans appRoles existe
//        return role != null // retourne le booleen
//    }
//
//    def static getRoleUser(request){
//        def session = request.getSession()
//        def roles = session.getAttribute("appRoles")
//        def response = null
//        roles.each{
//            def role = ConfigPermission.RolesUser.find{ config -> config.key == it}
//            if(role)
//                response = role.value
//        }
//        return response
//    }
//
//    def logout(request){
//        def session = request.getSession()
//        session.removeAttribute("sessionId")
//        session.removeAttribute("email")
//    }
//
//    def static isAccess(request){
//        def controllerName = WebUtils.retrieveGrailsWebRequest().controllerName
//        def role = getRoleUser(request)
//        return ConfigPermission.isAccess(controllerName, role)
//    }
}