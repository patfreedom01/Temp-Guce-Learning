package elearning

class Module implements Serializable {


    private static final long serialVersionUID = 1
    String nom
    String typeModule
    String description
//    static hasMany = [formationPlanifiée: Formation, demande : Demande]

    static constraints = {
        nom nullable: false, blank: false
        typeModule nullable: false, blank: false
        description nullable: false, blank: false
    }
    static mapping = {
        version false
    }
    String toString(){return nom}
}
