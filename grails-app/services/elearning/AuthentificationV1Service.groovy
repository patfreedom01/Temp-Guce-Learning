//package elearning
//
//class AuthentificationV1Service {
//    Utilisateur authenticated (String email, String password, request){
//        Utilisateur utilisateurEmail = Utilisateur.findByEmailPro(email)
//        if (!utilisateurEmail || password != utilisateurEmail.motDePasse){
//            throw new AuthentificatedException("Mot de passe ou email incorrect !")
//        }
//        utilisateurEmail.enabled=true
//        utilisateurEmail.save()
//        def session = request.getSession()
//        session.setAttribute("isAuthenticated", "true")
//        session.setAttribute("email",email)
//        return utilisateurEmail;
//    }
//    def static getUser(javax.servlet.http.HttpServletRequest request){
//        def session = request.getSession()
//        def email = session.getAttribute("email")
//        return  Utilisateur.findByEmailPro(email)
//    }
//    def isAuthenticated(request){
//        def session = request.getSession()
//        return session && session.getAttribute("isAuthenticated") &&
//                (new String(session.getAttribute("isAuthenticated"))).equals("true")
//    }
//
//    def static isAdmin(javax.servlet.http.HttpServletRequest request){
//        def user = getUser(request)
//        def utilisateurRole = UtilisateurRole.findByUtilisateur(user)
//        return  utilisateurRole?.authority == "ADMIN"
//    }
//    def static isOperateur(request){
//        def user = getUser(request)
//        def utilisateurRole = UtilisateurRole.findByUtilisateur(user)
//        return  utilisateurRole?.role.authority == "OPERATEUR"
//
//    }
//
//    def logout(request){
//        def session = request.getSession()
//        session.removeAttribute("isAuthenticated")
//        session.removeAttribute("email")
//    }
//}