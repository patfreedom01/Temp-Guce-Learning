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
    <g:set var="entityName" value="${message(code: 'module.label', default: 'Module')}" />

</head>
<body>
<br>
<h3 style="color: #ff8000;">Details module</h3>
<div class='container-fluid grid'>
    <div class='subnav subnav-operations subnav-static' role='navigation'>
        <div class='container-fluid'>
            <ul class='nav nav-pills'>
                <div>
                    <g:form method="DELETE" controller="module" action="delete" id="${params.id}">
                        <g:link class="edit btn btn-success" style = "border : none;" action="edit" resource="${this.module}"><g:message code="Modifier" default="Modifier" /></g:link>
                        <input class="delete btn btn-danger" type="submit" value="${message(code: 'Supprimer', default: 'Supprimer')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        <g:link controller="module" action="index" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                    </g:form>
                </div>
            </ul>
        </div>
    </div>

    <div class="row g-4">
        <div class="col-md-12 col-lg-12">
            <div class="row g-3">
                <div class=" col-md-12 m-5 ">
                    <div class="row">
                        <div class="col-md-4">
                            <f:display bean="module" order="typeModule"/>
                        </div>
                        <div class="col-md-4">
                            <f:display bean="module" order="nom"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <f:display bean="module" order="description"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>














%{--<%@ page contentType="text/html;charset=UTF-8" %>--}%

%{--<!DOCTYPE html>--}%
%{--<html>--}%
%{--<head>--}%
%{--    <meta name="layout" content="main" />--}%
%{--</head>--}%
%{--<body>--}%

%{--<g:render template="formulaire"/>--}%



%{--<div id="list-societe" class="content scaffold-list" role="main">--}%
%{--    <div class="row">--}%
%{--        <div class="col-md-9 m-5 ">--}%
%{--            <h3 style="color: #ff8000;">Liste des partenaires</h3>--}%
%{--        </div>--}%

%{--        <g:render template="tableau"/>--}%


%{--    </div>--}%


%{--<div class="patNav" role="navigation">--}%
%{--    <ul>--}%
%{--        <li><g:link class="list" action="index"><g:message code="Liste des modules" /></g:link>--}%
%{--        <li><g:link class="create" action="create"><g:message code="Ajouter un nouveau module" args="[entityName]" /></g:link></li>--}%
%{--    </ul>--}%
%{--</div>--}%
%{--<div id="show-module" class="content scaffold-show" role="main">--}%
%{--    <h2 style="color: #ff8000;">Détails module </h2>--}%
%{--    <g:if test="${flash.message}">--}%
%{--        <div class="message" role="status">${flash.message}</div>--}%
%{--    </g:if>--}%
%{--    <f:display bean="module" />--}%
%{--    <div class="row g-3">--}%
%{--        <div class="col-md-6">--}%
%{--            <f:display bean="module" order="typeModule"/>--}%
%{--        </div>--}%
%{--        <div class="col-md-6 m-5 ">--}%
%{--           <f:display bean="module" order="nom"/>--}%
%{--        </div>--}%
%{--        <div class="col-md-6 m-5">--}%
%{--            <f:display bean="module" order="description"/>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--    <g:form resource="${this.module}" method="DELETE">--}%
%{--        <div class="row col-md-6">--}%
%{--                <fieldset class="buttons">--}%
%{--                    <g:link class="edit w-50 d-grid gap-2 col-6 mx-auto btn btn-default btn-lg" action="edit" resource="${this.module}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--                    <g:submitButton name="delete" class="delete w-50 d-grid gap-2 col-6 mx-auto btn btn-danger btn-lg" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--                </fieldset>--}%
%{--        </div>--}%
%{--    </g:form>--}%
%{--</div>--}%
%{--</body>--}%
%{--</html>--}%


