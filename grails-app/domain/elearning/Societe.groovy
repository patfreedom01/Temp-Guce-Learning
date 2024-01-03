package elearning

class Societe implements Serializable {

    private static final long serialVersionUID = 1
    String nom
    String compteContribuable
    String adresse
    String telephone
    String emailSociete
    String code
    static mapping = {
        version false
    }
    static hasMany = [utilisateur : Utilisateur]
    static constraints = {
    }

    String toString(){return nom}

}
