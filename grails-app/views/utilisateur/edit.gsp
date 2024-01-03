<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
</head>
<body>
<br>
<g:form resource="${this.utilisateur}" method="PUT" class="form-horizontal form-normal form-left" action="update">
    <h3 style="color: #ff8000;">Modifier un utilisateur</h3>
    <div class='container-fluid grid'>
        <div class='subnav subnav-operations subnav-static' role='navigation'>
            <div class='container-fluid'>
                <ul class='nav nav-pills'>
                    <div>
                        <input type="submit" class="btn btn-create btn-success j_confirm" name="create" value="Enregistrer" id="create" value="${message(code: 'Sauvegarder', default: 'Sauvegarder')}"/>
                        <g:link controller="utilisateur" action="index" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>

                    </div>
                </ul>
            </div>
        </div>
        <div class="row g-4">
            <div class="col-md-9 col-lg-9">
                <div class="row g-3">
                    <div class="col-md-8">
                        <f:all bean="utilisateur" order="societe"/>
                    </div>
                    <br>
                    <br>
                    <div class=" col-md-8 m-5 ">
                        <div class="row">
                            <div class="col-md-8">
                                <label for="nomEtPrenoms" class="form-label">Nom & Prénoms</label>
                                <input type="text" name="nomEtPrenoms" class="form-control mb-3" id="nomEtPrenoms" placeholder="" value="${utilisateur?.nomEtPrenoms}" required >
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-8">
                                <label for="emailPro" class="form-label">Email professionnelle</label>
                                <input type="email" name="emailPro" class="form-control mb-3" id="emailPro" placeholder="" value="${utilisateur?.emailPro}" required>
                            </div>
                        </div>
                        <br>
                        <label for="motDePasse" class="form-label ">Mot de Passe</label><br>
                        <div class="row">
                            <div class="col-md-4 m-5 ">
                                <input type="password" name="motDePasse" class="form-control col-md-6 mb-3" id="motDePasse" placeholder="un mot de passe..."  value="${utilisateur?.motDePasse}" required>
                            </div>
                            <div class="col-md-4 m-5 ">
                                <input type="password" name="motDePasse2" class="form-control col-md-6 mb-3" id="motDePasse2"  placeholder="confirmez mot de passe" required>
                            </div>
                        </div>
                        <br>
                        <span name="info" id="info" style="color: red"></span>
                    </div>
                    <div class=" col-md-4 m-5 ">
                        <div class="row">
                            <label for="titre" class="form-label">Titre</label>
                            <input type="text" name="titre" class="form-control mb-3" id="titre" placeholder="" value="${utilisateur?.titre}" required>
                        </div>
                        <br>
                        <div class="row">
                            <label for="numPieceID" class="form-label">N°Pièce d'identité</label>
                            <input type="text" name="numPieceID" class="form-control mb-3" id="numPieceID" placeholder="" value="${utilisateur?.numPieceID}" required>
                        </div>
                        <br>
                        <div class="row">
                            <label for="telephone" class="form-label">Téléphone</label>
                            <input type="text" name="telephone" class="form-control mb-3" id="telephone" placeholder="" value="${utilisateur?.telephone}" required>
                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class="col-md-6">
                        %{--                        <f:all bean="utilisateur" order="formation"/>--}%

                        %{--                        <label for="formation" class="form-label">Assigner Formation</label>--}%
                        %{--                        <input type="text" name="formation" class="form-control mb-3" id="formation" placeholder="" value="${utilisateur?.formation}" required >--}%
                    </div>

                </div>
            </div>

        </div>
    </div>
</g:form>
<br>
<br>


%{--<div id="list-societe" class="content scaffold-list" role="main">--}%
%{--    <div class="row">--}%
%{--        <div class="col-md-9 m-5 ">--}%
%{--            <h3 style="color: #ff8000;">Liste des partenaires</h3>--}%
%{--        </div>--}%
%{--        <g:render template="tableau"/>--}%




%{--    </div>--}%
%{--</div>--}%

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Sélectionnez les éléments de formulaire
        var motDePasse = document.getElementById('motDePasse');
        var motDePasse2 = document.getElementById('motDePasse2');
        var info = document.getElementById('info');
        var create = document.getElementById('create');

        // Ajoutez un écouteur d'événement à la saisie du champ de mot de passe 2
        motDePasse2.addEventListener('input', function () {
            // Vérifiez si les mots de passe sont identiques
            if (motDePasse.value === motDePasse2.value) {
                info.textContent = 'Les mots de passe sont identiques.';
                info.style.color = 'green';
                create.removeAttribute("disabled","");

            } else {
                info.textContent = 'Les mots de passe ne correspondent pas.';
                info.style.color = 'red';
                create.setAttribute("disabled","");
            }
        });
    });
</script>
</body>
</html>