<%--
  Created by IntelliJ IDEA.
  User: Konan Kouadio Patrick
  Date: 27/12/2023
  Time: 13:26
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
<h3 style="color: #ff8000;">Gestion des inscriptions</h3>
<div class='container-fluid grid'>
    <div class='subnav subnav-operations subnav-static' role='navigation'>
        <div class='container-fluid'>
            <ul class='nav nav-pills'>
                <div>
                    <g:link controller="inscription" action="create" class='btn btn-success' name='create' title="S'inscrire à une formation">Ajouter une inscription</g:link>
                </div>
            </ul>
        </div>
    </div>
    <div id="list-inscription" class="content scaffold-list" role="main">
        <div class="row">
            <div class="col-md-9 m-5 ">
            </div>
            <div class="col-md-3 m-5 ">
                <input type="text" id="myInput" onkeyup="myFunction()" class="form-control " placeholder="Rechercher module..." title="Taper le nom d'un partenaire">
            </div>
        </div>
        <br>

        <table id="myTable">
            <thead>
            <tr>
                <th>Formation</th>
                <th>Date & heure</th>
                <th>Email</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            </thead>

            <g:each in="${new elearning.Inscription().findAllWhere(typePartrnaire : "Operateur Economique")}" var="thisInscription" >
                <tr>
                    <td>${thisInscription.formationDisponible.module}</td>
                    <td>${thisInscription.formationDisponible.dateFormtation.dateString} à ${thisInscription.formationDisponible.heureDebut}</td>
                    <td>${thisInscription.email}</td>

                    <g:if test="${thisInscription.status == 'En cours'}">
                        <td style="color: #ff8000">
                    </g:if>
                    <g:elseif test="${thisInscription.status == 'Réjetée'}">
                        <td style="color: red">
                    </g:elseif>
                    <g:elseif test="${thisInscription.status == 'Planifiée'}">
                        <td style="color: green">
                    </g:elseif>
                    <g:else>
                        <td>
                    </g:else>
                        ${thisInscription.status}
                    </td>

                    <td>
                        <div class="actions">
                            <g:form method="DELETE" title="Afficher" controller="inscription" action="delete" id="${thisInscription.id}">

                                <g:link controller="inscription" action="showHelpDk" id="${thisInscription.id}" method="POST" >
                                    <i  >
                                        <span class='glyphicon glyphicon-eye-open'></span>
                                    </i>
                                </g:link>
                                <g:link controller="inscription" title="Mettre à jour" action="editHelpDk" id="${thisInscription.id}" method="POST" >
                                    <i  >
                                        <span class='glyphicon glyphicon-pencil'></span>
                                    </i>
                                </g:link>
%{--                                <button style ="border : none; background-color: transparent;" data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
%{--                                        onclick="return confirm('Supprimer cette inscription ?');">--}%
%{--                                    <i title="Supprimer">--}%
%{--                                        <span class="glyphicon glyphicon-glyphicon glyphicon-trash"></span>--}%
%{--                                    </i>--}%
%{--                                </button>--}%
                            </g:form>
                        </div>
                    </td>
                </tr>
            </g:each>
        </div>
    </div>
</div>
<script>
    function myFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>
</body>
</html>

