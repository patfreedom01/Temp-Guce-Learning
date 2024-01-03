
<div class="col-md-3 m-5 ">
    <input type="text" id="myInput" onkeyup="myFunction()" class="form-control " placeholder="Rechercher partenaire..." title="Taper le nom d'un partenaire">
</div>
</div>
<br>
<table id="myTable">
    <thead>
    <tr>
        <th>Nom</th>
        <th>Compte Contribuable</th>
        <th>Adresse</th>
        <th>Téléphone</th>
        <th>Email professionnel</th>
        <th>Code</th>
        <th>Action</th>
    </tr>
    </thead>

    <g:each in="${societeList}" var="thisSociete" >
        <tr>
            <td>${thisSociete.nom}</td>
            <td>${thisSociete.compteContribuable}</td>
            <td>${thisSociete.adresse}</td>
            <td>${thisSociete.telephone}</td>
            <td>${thisSociete.emailSociete}</td>
            <td>${thisSociete.code}</td>
            <td>
                <div class="actions">
                    <g:form method="DELETE" controller="societe" action="delete" id="${thisSociete.id}">

                        <g:link controller="societe" title="Afficher" action="show" id="${thisSociete.id}" method="POST" >
                        <i  >
                            <span class='glyphicon glyphicon-eye-open'></span>
                        </i>
                         </g:link>
                        <g:link controller="societe" title="Mettre à jour" action="edit" id="${thisSociete.id}" method="POST" >
                            <i  >
                                <span class='glyphicon glyphicon-pencil'></span>
                            </i>
                        </g:link>
                         <button style ="border : none;background-color: transparent;" title="Supprimer" data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                 onclick="return confirm('Supprimer ce partenaire ?');">
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
    <g:paginate total="${societeCount ?: 0}" />
</div>


<script>
    function myFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
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