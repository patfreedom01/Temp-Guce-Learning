<%--
  Created by IntelliJ IDEA.
  User: Konan Patrick
  Date: 07/11/2023
  Time: 18:04
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr" data-bs-theme="auto">
<head>
    <title>Guce-Learning</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="text/html; charset=utf-8" http-equiv="content-type"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index, follow"/>
    <meta name="keywords" content="Guichet unique"/>
    <meta name="description" content="CI - GUCE Portail Transactionnel"/>
    <asset:link rel="icon" href="gucefavicon.png" type="image/x-ico"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <asset:stylesheet src="loginStyle.css"/>
</head>

<body class="d-flex align-items-center py-4 bg-body-tertiary">
    <main class="form-signin w-100 m-auto">
        <form action="${createLink(controller: 'auth', action: 'login')}" method="post" id="loginForm">
            <a href="https://guce.gouv.ci/?lang=fr" class="mb-4">
                <asset:image src="logoGuce.png" style="zoom:12%;"/>
            </a>
            <h1 class="h6 mb-6 fw-normal mt-3 text-center">CONNEXION GUCE-LEARNING</h1>
            <div class="form-floating">
                <input type="text" class="form-control" name="josso_username" id="josso_username" placeholder="Utilisateur">
                <label for="floatingInput">Utilisateur</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" name="josso_password" id="josso_password" placeholder="Mot de passe">
                <label for="floatingPassword">Mot de passe</label>
            </div>
            <div class="justify-content-between d-flex my-2" >
                <p class="fw-lighter fs-16" ><a href="https://www.guce.gouv.ci/password/lost"  >Identifiants oubliés ?</a></p>
                <p class="fw-lighter fs-16"><a href="https://guce.gouv.ci/register/procedure#:~:text=d%C3%A9sirant%20obtenir%20un%20compte%20d,%2C%20consignataire%2C%20etc.)">Nouveau sur le Guce ?</a></p>
            </div>
            <button class="btn btn-success w-100 py-2" type="submit">Connexion</button>
            <g:if test="${flash.message}">
                <span class="alert alert-error" style="display: block; position: absolute; color: red;" >${flash.message}</span>
            </g:if>
            <p class="mt-5 mb-3 text-body-secondary">&copy; GUCE CI. Tous droits réservés.
            </p>
        </form>
    </main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
