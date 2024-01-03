package elearning

class Utilisateur implements Serializable {

    private static final long serialVersionUID = 1
    String nomEtPrenoms
    String titre
    String telephone
    String emailPro
    String numPieceID
    String motDePasse


//    static hasMany = [affecterFormation : Formation]
    static belongsTo = [societe : Societe ]
    static constraints = {
        nomEtPrenoms()
        titre()
        telephone()
        emailPro email: true, nullable: false, unique: true, blank: false
        numPieceID unique: true
        motDePasse()
    }
    String toString(){return nomEtPrenoms}

}
