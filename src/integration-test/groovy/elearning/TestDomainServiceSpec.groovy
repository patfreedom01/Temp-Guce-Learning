package elearning

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TestDomainServiceSpec extends Specification {

    TestDomainService testDomainService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TestDomain(...).save(flush: true, failOnError: true)
        //new TestDomain(...).save(flush: true, failOnError: true)
        //TestDomain testDomain = new TestDomain(...).save(flush: true, failOnError: true)
        //new TestDomain(...).save(flush: true, failOnError: true)
        //new TestDomain(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //testDomain.id
    }

    void "test get"() {
        setupData()

        expect:
        testDomainService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TestDomain> testDomainList = testDomainService.list(max: 2, offset: 2)

        then:
        testDomainList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        testDomainService.count() == 5
    }

    void "test delete"() {
        Long testDomainId = setupData()

        expect:
        testDomainService.count() == 5

        when:
        testDomainService.delete(testDomainId)
        sessionFactory.currentSession.flush()

        then:
        testDomainService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TestDomain testDomain = new TestDomain()
        testDomainService.save(testDomain)

        then:
        testDomain.id != null
    }
}
