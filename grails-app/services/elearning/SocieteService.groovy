package elearning

import grails.gorm.services.Service

@Service(Societe)
interface SocieteService {

    Societe get(Serializable id)

    List<Societe> list(Map args)

    Long count()

    void delete(Serializable id)

    Societe save(Societe societe)

}