<%--
  Created by IntelliJ IDEA.
  User: Konan Kouadio Patrick
  Date: 22/12/2023
  Time: 17:09
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'inscription.label', default: 'Inscription')}" />
</head>
<body>
<br>
<h3 style="color: #ff8000;">Details inscription formation</h3>
<div class='container-fluid grid'>
    <div class='subnav subnav-operations subnav-static' role='navigation'>
        <div class='container-fluid'>
            <ul class='nav nav-pills'>
                <div>
                    <g:form method="DELETE" controller="inscription" action="delete" id="${params.id}">
                        <g:link class="edit btn btn-success" style = "border : none;" action="editHelpDk" resource="${this.inscription}"><g:message code="Traiter" default="Traiter" /></g:link>
                        <g:link controller="inscription" action="tableauHelpDk" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                    </g:form>
                </div>
            </ul>
        </div>
    </div>
    <div class="col-md-10 col-lg-10">
        <div class="row">
            <div class="col-md-6">
                <f:display  bean="inscription" order="formationDisponible" />
            </div>
            <div class="col-md-4">
                <f:display  bean="inscription" order="status"/>
            </div>
        </div>
        <h3 class="mb-2">Vos coordonnées</h3>
        <div class="row">
            <div class="col-md-6">
                <f:display  bean="inscription" order="nom"/>
            </div>
            <div class="col-md-4">
                <f:display  bean="inscription" order="telephone"/>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-6">
                <f:display  bean="inscription" order="email"/>
            </div>
            <div class="col-md-6">
                <f:display  bean="inscription" order="typePartrnaire"/>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-10">
                <f:display  bean="inscription" order="commentaire"/>
            </div>
        </div>
    </div>
</div>

</body>
</html>