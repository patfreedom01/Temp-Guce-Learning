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
    <g:set var="entityName" value="${message(code: 'utilisateurRole.label', default: 'UtilisateurRole')}" />

</head>
<body>
<br>
    <h3 style="color: #ff8000;">Details utilisateur rôle</h3>
    <div class='container-fluid grid'>
        <div class='subnav subnav-operations subnav-static' role='navigation'>
            <div class='container-fluid'>
                <ul class='nav nav-pills'>
                    <div>
                        <g:form method="DELETE" controller="utilisateurRole" action="delete" id="${params.id}">
                            <g:link class="edit btn btn-success" style = "border : none;" action="edit" resource="${this.utilisateurRole}"><g:message code="Modifier" default="Modifier" /></g:link>
                            <input class="delete btn btn-danger" type="submit" value="${message(code: 'Supprimer', default: 'Supprimer')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            <g:link controller="utilisateurRole" action="index" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                        </g:form>
                    </div>
                </ul>
            </div>
        </div>
        <div class="row g-4">
            <div class="col-md-9 col-lg-9">
                <div class="row g-3">
                    <div class="col-md-6">
                        <f:display bean="utilisateurRole" order="utilisateur"/>
                    </div>
                    <div class="col-md-6 m-5 ">
                        <f:display bean="utilisateurRole" order="authority"/>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>