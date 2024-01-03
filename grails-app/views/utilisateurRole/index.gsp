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
    <g:set var="entityName" value="${message(code: 'utilisateurRole.label', default: 'Utilisateurs et leurs Rôles')}" />

</head>
<body>

<br>
<h3 style="color: #ff8000;">Utilisateurs et leurs Rôles</h3>
<div class='container-fluid grid'>
    <div class='subnav subnav-operations subnav-static' role='navigation'>
        <div class='container-fluid'>
            <ul class='nav nav-pills'>
                <div>
                    <g:link controller="utilisateurRole" action="create" class='btn btn-success' name='create' title='Gestion des rôles'>Ajouter</g:link>
                </div>
            </ul>
        </div>
    </div>
</div>
<div id="list-utilisateurRole" class="content scaffold-list" role="main">
    <div class="row">
        <div class="col-md-9 m-5 "></div>
        <g:render template="tableau"/>
    </div>
</div>
</div>

</body>
</html>
