<%--
  Created by IntelliJ IDEA.
  User: Konan Kouadio Patrick
  Date: 18/12/2023
  Time: 10:59
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
<h3 style="color: #ff8000;">Liste des partenaires</h3>
<div class='container-fluid grid'>
    <div class='subnav subnav-operations subnav-static' role='navigation'>
        <div class='container-fluid'>
            <ul class='nav nav-pills'>
                <div>
                    <g:link controller="societe" action="create" class='btn btn-success' name='create' title='Ajouter utilisateur'>Ajouter</g:link>
                </div>
            </ul>
        </div>
    </div>
%{--<g:render template="formulaire"/>--}%


<div id="list-societe" class="content scaffold-list" role="main">
    <div class="row">
        <div class="col-md-9 m-5 ">
%{--            <h3 style="color: #ff8000;">Liste des partenaires</h3>--}%
        </div>
        <g:render template="tableau"/>




    </div>
    </div>
    </div>


</body>
</html>