package elearning

class Inscription implements Serializable {

    private static final long serialVersionUID = 1

//cette classe fait référence aux inscription aux formations planifiées

    String nom
    String telephone
    String email
    String typePartrnaire
    String commentaire
    String status = "En attente"

    static belongsTo = [formationDisponible : Formation]
    static constraints = {
        nom()
        telephone()
        email()
        typePartrnaire()
        commentaire()
        status inList: ['En attente', 'Réjetée', 'En cours','Planifiée', 'Terminée']
    }
}
