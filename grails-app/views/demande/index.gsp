<%--
  Created by IntelliJ IDEA.
  User: Konan Kouadio Patrick
  Date: 22/12/2023
  Time: 08:59
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
<h3 style="color: #ff8000;">Liste de vos demandes</h3>
<div class='container-fluid grid'>
    <div class='subnav subnav-operations subnav-static' role='navigation'>
        <div class='container-fluid'>
            <ul class='nav nav-pills'>
                <div>
                    <g:link controller="demande" action="create" class='btn btn-success' name='create' title='Demander une formation'>Faire une demande de formation</g:link>
                </div>
            </ul>
        </div>
    </div>
    <div id="list-demande" class="content scaffold-list" role="main">
        <div class="row">
            <div class="col-md-9 m-5 ">
            </div>
            <g:render template="tableau"/>
        </div>
    </div>
</div>
</body>
</html>