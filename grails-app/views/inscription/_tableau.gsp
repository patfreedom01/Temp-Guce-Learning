
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

%{--    <g:if test="${AuthentificationService.isResponsableMep(request)}">--}%
%{--        <g:each in="${new elearning.Inscription().findAllWhere(typePartrnaire : "Ministere Technique")}" var="thisInscription" >--}%
%{--            <tr>--}%
%{--                <td>${thisInscription.formationDisponible.module}</td>--}%
%{--                <td>${thisInscription.formationDisponible.dateFormtation.toString().substring(0,10)} à ${thisInscription.formationDisponible.heureDebut}</td>--}%
%{--                <td>${thisInscription.email}</td>--}%
%{--                <td>${thisInscription.status}</td>--}%
%{--                <td>--}%
%{--                    <div class="actions">--}%
%{--                        <g:form method="DELETE" controller="inscription" action="delete" id="${thisInscription.id}">--}%

%{--                            <g:link controller="inscription" action="show" id="${thisInscription.id}" method="POST" >--}%
%{--                                <i  title="Afficher">--}%
%{--                                    <span class='glyphicon glyphicon-eye-open'></span>--}%
%{--                                </i>--}%
%{--                            </g:link>--}%
%{--                            <g:link controller="inscription" action="edit" id="${thisInscription.id}" method="POST" >--}%
%{--                                <i  title="Mettre à jour">--}%
%{--                                    <span class='glyphicon glyphicon-pencil'></span>--}%
%{--                                </i>--}%
%{--                            </g:link>--}%
%{--                            <button style ="border : none;" data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
%{--                                    onclick="return confirm('Supprimer cette inscription ?');">--}%
%{--                                <i title="Supprimer">--}%
%{--                                    <span class="glyphicon glyphicon-glyphicon glyphicon-trash"></span>--}%
%{--                                </i>--}%
%{--                            </button>--}%
%{--                        </g:form>--}%
%{--                    </div>--}%
%{--                </td>--}%
%{--            </tr>--}%
%{--        </g:each>--}%
%{--    </g:if>--}%

%{--    <g:if test="${AuthentificationService.isHelpdesk(request)}">--}%
%{--        <g:each in="${new elearning.Inscription().findAllWhere(typePartrnaire : "Operateur Economique")}" var="thisInscription" >--}%
%{--            <tr>--}%
%{--                <td>${thisInscription.formationDisponible.module}</td>--}%
%{--                <td>${thisInscription.formationDisponible.dateFormtation.toString().substring(0,10)} à ${thisInscription.formationDisponible.heureDebut}</td>--}%
%{--                <td>${thisInscription.email}</td>--}%
%{--                <td>${thisInscription.status}</td>--}%
%{--                <td>--}%
%{--                    <div class="actions">--}%
%{--                        <g:form method="DELETE" controller="inscription" action="delete" id="${thisInscription.id}">--}%

%{--                            <g:link controller="inscription" action="show" id="${thisInscription.id}" method="POST" >--}%
%{--                                <i  title="Afficher">--}%
%{--                                    <span class='glyphicon glyphicon-eye-open'></span>--}%
%{--                                </i>--}%
%{--                            </g:link>--}%
%{--                            <g:link controller="inscription" action="edit" id="${thisInscription.id}" method="POST" >--}%
%{--                                <i  title="Mettre à jour">--}%
%{--                                    <span class='glyphicon glyphicon-pencil'></span>--}%
%{--                                </i>--}%
%{--                            </g:link>--}%
%{--                            <button style ="border : none;" data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
%{--                                    onclick="return confirm('Supprimer cette inscription ?');">--}%
%{--                                <i title="Supprimer">--}%
%{--                                    <span class="glyphicon glyphicon-glyphicon glyphicon-trash"></span>--}%
%{--                                </i>--}%
%{--                            </button>--}%
%{--                        </g:form>--}%
%{--                    </div>--}%
%{--                </td>--}%
%{--            </tr>--}%
%{--        </g:each>--}%
%{--    </g:if>--}%


%{--    <g:if test="${AuthentificationService.isOperateur(request)}">--}%
    <g:each in="${inscriptionList}" var="thisInscription" >
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
                    <g:form method="DELETE" controller="inscription" action="delete" id="${thisInscription.id}">

                        <g:link controller="inscription" title="Afficher" action="show" id="${thisInscription.id}" method="POST" >
                        <i  >
                            <span class='glyphicon glyphicon-eye-open'></span>
                        </i>
                         </g:link>
                        <g:link controller="inscription"  title="Mettre à jour" action="edit" id="${thisInscription.id}" method="POST" >
                            <i >
                                <span class='glyphicon glyphicon-pencil'></span>
                            </i>
                        </g:link>
                         <button style ="border : none; background-color: transparent;" data-bs-toggle="modal" title="Supprimer" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                 onclick="return confirm('Supprimer cette inscription ?');">
                            <i>
                                <span class="glyphicon glyphicon-glyphicon glyphicon-trash"></span>
                            </i>
                         </button>
                    </g:form>
                </div>
            </td>
        </tr>
    </g:each>
%{--    </g:if>--}%




</table>
<div class="pagination">
    <g:paginate total="${inscriptionCount ?: 0}" />
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