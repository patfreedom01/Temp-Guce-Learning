package elearning

import grails.gorm.services.Service

@Service(Demande)
interface DemandeService {

    Demande get(Serializable id)

    List<Demande> list(Map args)

    Long count()

    void delete(Serializable id)

    Demande save(Demande demande)

}