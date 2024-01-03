package elearning

class Formation implements Serializable {

//Planification des formations

    private static final long serialVersionUID = 1

//    String module
    String description
    String lieu
    Date dateLimiteInscription
    Date dateFormtation
    String heureDebut
    String duree
    String interne
    String presentielle
    String nombreDeParticipantsParEntreprise

    static belongsTo = [module : Module]
    static constraints = {
//        module()
        description nullable : true, widget : 'textarea'
        interne ()
        lieu()
        dateLimiteInscription  min: new Date()
        dateFormtation validator: {val,formation -> val >= formation.dateLimiteInscription}
        heureDebut()
        duree ()
        presentielle ()
        nombreDeParticipantsParEntreprise ()
    }
    String toString(){return "Module "+module+" programmé pour le "+dateFormtation+" à "+heureDebut  }
}