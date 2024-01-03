<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 22/11/2023
  Time: 16:27
--%>


<g:set var="entityName" value="${message(code: 'sinscrire.label', default: 'une Demande')}" />
<g:applyLayout name="main">
    <div class="patNav" role="navigation">
        <ul>
            <li><g:link class="create" action="create"><g:message code="default.create.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
        <div class="py-5">
            <h2 style="color : #ff8000 ">Liste demande de formation</h2>
        </div>
        <div class="row g-5">

        </div>
</g:applyLayout>