
<%@ page import="elearning.AuthentificationService" %>
<div class="col-md-3 m-5 ">
    <input type="text" id="myInput" onkeyup="myFunction()" class="form-control " placeholder="Rechercher module..." title="Taper le nom d'un module">
</div>
</div>
<br>

<table id="myTable">
    <thead>
    <tr>
        <th>Module</th>
        <th>Email</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>

%{--    <g:if test="${AuthentificationService.isResponsableMep(request)}">--}%
%{--        <g:each in="${new elearning.Demande().findAllWhere(typePartrnaire : "Ministere Technique")}" var="thisDemande" >--}%
%{--            <tr>--}%
%{--                <td>${thisDemande.module}</td>--}%
%{--                <td>${thisDemande.email}</td>--}%
%{--                <td>${thisDemande.status}</td>--}%
%{--                <td>--}%
%{--                    <div class="actions">--}%
%{--                        <g:form method="DELETE" controller="demande" action="delete" id="${thisDemande.id}">--}%

%{--                            <g:link controller="demande" action="show" id="${thisDemande.id}" method="POST" >--}%
%{--                                <i  title="Afficher">--}%
%{--                                    <span class='glyphicon glyphicon-eye-open'></span>--}%
%{--                                </i>--}%
%{--                            </g:link>--}%
%{--                            <g:link controller="demande" action="edit" id="${thisDemande.id}" method="POST" >--}%
%{--                                <i  title="Mettre à jour">--}%
%{--                                    <span class='glyphicon glyphicon-pencil'></span>--}%
%{--                                </i>--}%
%{--                            </g:link>--}%
%{--                            <button style ="border : none;" data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
%{--                                    onclick="return confirm('Supprimer cette demande ?');">--}%
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
%{--        <g:each in="${new elearning.Demande().findAllWhere(typePartrnaire : "Operateur Economique")}" var="thisDemande" >--}%
%{--            <tr>--}%
%{--                <td>${thisDemande.module}</td>--}%
%{--                <td>${thisDemande.email}</td>--}%
%{--                <td>${thisDemande.status}</td>--}%
%{--                <td>--}%
%{--                    <div class="actions">--}%
%{--                        <g:form method="DELETE" controller="demande" action="delete" id="${thisDemande.id}">--}%

%{--                            <g:link controller="demande" action="show" id="${thisDemande.id}" method="POST" >--}%
%{--                                <i  title="Afficher">--}%
%{--                                    <span class='glyphicon glyphicon-eye-open'></span>--}%
%{--                                </i>--}%
%{--                            </g:link>--}%
%{--                            <g:link controller="demande" action="edit" id="${thisDemande.id}" method="POST" >--}%
%{--                                <i  title="Mettre à jour">--}%
%{--                                    <span class='glyphicon glyphicon-pencil'></span>--}%
%{--                                </i>--}%
%{--                            </g:link>--}%
%{--                            <button style ="border : none;" data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
%{--                                    onclick="return confirm('Supprimer cette demande ?');">--}%
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
        <g:each in="${demandeList}" var="thisDemande" >
            <tr>
                <td>${thisDemande.module}</td>
                <td>${thisDemande.email}</td>

                <g:if test="${thisDemande.status == 'En cours'}">
                    <td style="color: #ff8000">
                </g:if>
                <g:elseif test="${thisDemande.status == 'Réjetée'}">
                    <td style="color: red">
                </g:elseif>
                <g:elseif test="${thisDemande.status == 'Planifiée'}">
                    <td style="color: green">
                </g:elseif>
                <g:else>
                    <td>
                </g:else>${thisDemande.status}
                </td>

                <td>
                    <div class="actions">
                        <g:form method="DELETE" controller="demande" action="delete" id="${thisDemande.id}">

                            <g:link controller="demande" title="Afficher" action="show" id="${thisDemande.id}" method="POST" >
                                <i  >
                                    <span class='glyphicon glyphicon-eye-open'></span>
                                </i>
                            </g:link>
                            <g:link controller="demande"  title="Mettre à jour" action="edit" id="${thisDemande.id}" method="POST" >
                                <i  >
                                    <span class='glyphicon glyphicon-pencil'></span>
                                </i>
                            </g:link>
                            <button style ="border : none; background-color: transparent;" data-bs-toggle="modal" title="Supprimer" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('Supprimer cette demande ?');">
                                <i >
                                    <span class="glyphicon glyphicon-glyphicon glyphicon-trash"></span>
                                </i>
                            </button>
                        </g:form>
                    </div>
                </td>
            </tr>
        </g:each>
%{--    </g:if>--}%


%{--    <g:each in="${demandeList}" var="thisDemande" >--}%
%{--        <tr>--}%
%{--            <td>${thisDemande.module}</td>--}%
%{--            <td>${thisDemande.email}</td>--}%
%{--            <td>${thisDemande.status}</td>--}%
%{--            <td>--}%
%{--                <div class="actions">--}%
%{--                    <g:form method="DELETE" controller="demande" action="delete" id="${thisDemande.id}">--}%

%{--                        <g:link controller="demande" action="show" id="${thisDemande.id}" method="POST" >--}%
%{--                            <i  title="Afficher">--}%
%{--                                <span class='glyphicon glyphicon-eye-open'></span>--}%
%{--                            </i>--}%
%{--                        </g:link>--}%
%{--                        <g:link controller="demande" action="edit" id="${thisDemande.id}" method="POST" >--}%
%{--                            <i  title="Mettre à jour">--}%
%{--                                <span class='glyphicon glyphicon-pencil'></span>--}%
%{--                            </i>--}%
%{--                        </g:link>--}%
%{--                        <button style ="border : none;" data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
%{--                                onclick="return confirm('Supprimer cette demande ?');">--}%
%{--                            <i title="Supprimer">--}%
%{--                                <span class="glyphicon glyphicon-glyphicon glyphicon-trash"></span>--}%
%{--                            </i>--}%
%{--                        </button>--}%
%{--                    </g:form>--}%
%{--                </div>--}%
%{--            </td>--}%
%{--        </tr>--}%
%{--    </g:each>--}%
%{--    </g:if>--}%





</table>
<div class="pagination">
    <g:paginate total="${demandeCount ?: 0}" />
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