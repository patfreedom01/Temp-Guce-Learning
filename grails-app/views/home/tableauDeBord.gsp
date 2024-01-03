<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 02/01/2024
  Time: 12:13
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
</head>
<body>
<br>
<h3 style="color: #ff8000;">Tableau de bord</h3>
<div class='container-fluid grid'>
    <div class='subnav subnav-operations subnav-static' role='navigation'>
        <div class='container-fluid'>
            <ul class='nav nav-pills'>
                <div>
                    <g:link controller="demande" action="create" class='btn btn-default' name='create' title='Demander une formation'>Faire une demande de formation</g:link>
                    <g:link controller="inscription" action="create" class='btn btn-primary' name='create' title="S'inscrire à une formation">S'inscrire à une formation planifiée</g:link>
                </div>
            </ul>
        </div>
    </div>
    <div id="list-tableauDebord" class="content scaffold-list" role="main">
        <div class="row">
            <div class="col-md-9 m-5 ">
            </div>
            <g:render template="/layouts/tableauDebord"/>
%{--            <g:render template="/layouts/tableauDebord2"/>--}%
        </div>
    </div>
</div>
</body>
</html>