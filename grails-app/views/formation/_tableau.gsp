
<div class="col-md-3 m-5 ">
    <input type="text" id="myInput" onkeyup="myFunction()" class="form-control " placeholder="Rechercher module..." title="Taper le nom d'un partenaire">
</div>
</div>
<br>

<table id="myTable">
    <thead>
    <tr>
        <th>Module</th>
        <th>Date Formtation</th>
        <th>Date Limite Inscription</th>
        <th>Lieu</th>
        <th>Heure Debut</th>
        <th>Action</th>
    </tr>
    </thead>

    <g:each in="${formationList}" var="thisFormation" >
        <tr>
            <td>${thisFormation.module}</td>
            <td>${thisFormation.dateFormtation.dateString}</td>
            <td>${thisFormation.dateLimiteInscription.dateString}</td>
            <td>${thisFormation.lieu}</td>
            <td>${thisFormation.heureDebut}</td>
            <td>
                <div class="actions">
                    <g:form method="DELETE" controller="formation" action="delete" id="${thisFormation.id}">

                        <g:link controller="formation" title="Afficher" action="show" id="${thisFormation.id}" method="POST" >
                            <i  >
                                <span class='glyphicon glyphicon-eye-open'></span>
                            </i>
                        </g:link>
                        <g:link controller="formation"  title="Mettre à jour" action="edit" id="${thisFormation.id}" method="POST" >
                            <i >
                                <span class='glyphicon glyphicon-pencil'></span>
                            </i>
                        </g:link>
                        <button style ="border : none; background-color: transparent;" data-bs-toggle="modal" title="Supprimer" data-bs-target="#exampleModal" type="submit" class="delete " value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('Supprimer cette formation ?');">
                            <i >
                                <span class="glyphicon glyphicon-glyphicon glyphicon-trash"></span>
                            </i>
                        </button>
                    </g:form>
                </div>
            </td>
        </tr>
    </g:each>
</table>

<div class="pagination">
    <g:paginate total="${formationCount ?: 0}" />
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