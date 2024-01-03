package elearning

import grails.gorm.services.Service

@Service(TestDomain)
interface TestDomainService {

    TestDomain get(Serializable id)

    List<TestDomain> list(Map args)

    Long count()

    void delete(Serializable id)

    TestDomain save(TestDomain testDomain)

}