<%--
  Created by IntelliJ IDEA.
  User: Konan Kouadio Patrick
  Date: 18/12/2023
  Time: 17:09
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'demande.label', default: 'Demande')}" />
</head>
<body>
<br>
<h3 style="color: #ff8000;">Details demande de formation</h3>
<div class='container-fluid grid'>
    <div class='subnav subnav-operations subnav-static' role='navigation'>
        <div class='container-fluid'>
            <ul class='nav nav-pills'>
                <div>
                    <g:form method="DELETE" controller="demande" action="delete" id="${params.id}">
                        <g:link class="edit btn btn-success" style = "border : none;" action="editMep" resource="${this.demande}"><g:message code="Modifier" default="Modifier" /></g:link>
                    %{--                        <input class="delete btn btn-danger" type="submit" value="${message(code: 'Supprimer', default: 'Supprimer')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                        <g:link controller="demande" action="tableauMep" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                    </g:form>
                </div>
            </ul>
        </div>
    </div>
    <div class="col-md-7 col-lg-7">
        <div class="row">
            <div class="col-md-4">
                <f:display  bean="demande" order="typeModule"/>
            </div>
            <div class="col-md-4">
                <f:display  bean="demande" order="module"/>
            </div>
            <div class="col-md-4">
                <f:display  bean="demande" order="status"/>
            </div>
        </div>
        <h3 class="mb-2">Coordonnées du partenaire</h3>
        <div class="row">
            <div class="col-md-6">
                <f:display  bean="demande" order="nom"/>
            </div>
            <div class="col-md-4">
                <f:display  bean="demande" order="telephone"/>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-6">
                <f:display  bean="demande" order="email"/>
            </div>
            <div class="col-md-6">
                <f:display  bean="demande" order="typePartrnaire"/>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-10">
                <f:display  bean="demande" order="commentaire"/>
            </div>
        </div>
    </div>
</div>

</body>
</html>