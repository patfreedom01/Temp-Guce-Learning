package elearning

import grails.gorm.services.Service

@Service(Inscription)
interface InscriptionService {

    Inscription get(Serializable id)

    List<Inscription> list(Map args)

    Long count()

    void delete(Serializable id)

    Inscription save(Inscription inscription)

}