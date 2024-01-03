package elearning
/*
import grails.gorm.transactions.Transactional
import grails.util.Holders
import org.apache.shiro.SecurityUtils
import org.apache.shiro.subject.Subject
@Transactional
*/

class UtilService {

    def static authentificationService

    static boolean isAdmin(request) {
        return authentificationService.isAdmin(request)
    }

    /*static boolean isSimpleUser() {
     Subject s = SecurityUtils.getSubject()
     return s.hasRole('ROLE_USER')
 }

 static boolean isAuthenticated(){
     SecurityUtils.getSubject().isAuthenticated()
 }

 static List<Rapport> reportList(){
     List<Rapport> rapports = []
     Utilisateur user = Utilisateur.findByUsername(SecurityUtils.getSubject().getPrincipal().toString())
     Rapport.findAll().each { Rapport r ->
         if(PermissionRapport.findByUserAndRapport(user,r)){
             r?.uri = setUri(r?.lien)
             rapports.add(r)
         }
     }
     return rapports
 }


 static String setUri(String lien) {
     String uri
     def reportServerHost=getReportServerHost()
     if (lien){
         String strToEncode ="d=${lien?.trim()}&t=1&c=1"
         String encodedParams = AESObject.doEncryptedAES(strToEncode,"ciy@syl2021")
         uri = "${reportServerHost}/Rapport/?${encodedParams}"
     }
     uri
 }

 static getReportServerHost() {
     return  Holders.config.com.guce.report.reportServerHost
 }
*/
}
