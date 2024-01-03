<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 18/12/2023
  Time: 17:09
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'societe.label', default: 'Société')}" />

</head>
<body>
<br>
    <h3 style="color: #ff8000;">Details partenaire</h3>
    <div class='container-fluid grid'>
        <div class='subnav subnav-operations subnav-static' role='navigation'>
            <div class='container-fluid'>
                <ul class='nav nav-pills'>
                    <div>
                        <g:form method="DELETE" controller="societe" action="delete" id="${params.id}">
                            <g:link class="edit btn btn-success" style = "border : none;" action="edit" resource="${this.societe}"><g:message code="Modifier" default="Modifier" /></g:link>
                            <input class="delete btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            <g:link controller="societe" action="index" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                        </g:form>
                    </div>
                </ul>
            </div>
        </div>
        <div class="row g-4">
            <div class="col-md-8 col-lg-8">
                <div class="row g-3">
                    <div class="col-md-6">
                        <f:display bean="societe" order="nom" />
                    </div>
                    <div class="col-md-6">
                        <f:display bean="societe" order="compteContribuable" />
                    </div>
                    <div class="col-md-6">
                        <f:display bean="societe" order="adresse" />
                    </div>
                    <div class="col-md-6">
                        <f:display bean="societe" order="telephone" />
                    </div>
                    <div class="col-md-6">
                        <f:display bean="societe" order="emailSociete" />
                    </div>
                    <div class="col-md-6">
                        <f:display bean="societe" order="code" />
                    </div>
                </div>
            </div>
        </div>
    </div>
<br>
<br>




</body>
</html>