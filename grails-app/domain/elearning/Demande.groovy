package elearning


class Demande implements Serializable {

    private static final long serialVersionUID = 1

//cette classe fait référence aux demandes de formations
    String typeModule
    String module
    String nom
    String telephone
    String email
    String typePartrnaire
    String commentaire
    String status = "En attente"

    static constraints = {
        typeModule()
        module()
        nom()
        telephone()
        email()
        typePartrnaire()
        commentaire nullable: true, blank:  true, widget : 'textarea'
        status inList: ['En attente', 'Réjetée', 'En cours','Planifiée', 'Terminée']
    }


}
