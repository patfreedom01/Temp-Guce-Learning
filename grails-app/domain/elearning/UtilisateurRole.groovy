package elearning

/*
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@ToString(cache=true, includeNames=true, includePackage=false)
 */

class UtilisateurRole implements Serializable {

    private static final long serialVersionUID = 1



    String authority
    Utilisateur utilisateur

    static belongsTo = [utilisateur: Utilisateur]

    static constraints = {
        utilisateur nullable: false
        authority inList: ["","ADMIN", "OPERATEUR","FORMATEUR","RESPONSABLE MEP","HELPDESK"],nullable: false
        /*role nullable: false, validator: { Role r, UtilisateurRole ur ->
            if (ur.utilisateur?.id) {
                if (UtilisateurRole.findByUtilisateurAndRole(ur.utilisateur, r)) {
                    return ['userRole.exists']
                }
            }
        }*/
    }

}
