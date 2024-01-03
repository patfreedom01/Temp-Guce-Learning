
<div class="col-md-3 m-5 ">
    <input type="text" id="myInput" onkeyup="myFunction()" class="form-control " placeholder="Rechercher utilisateur..." title="Taper le nom d'un partenaire">
</div>
</div>
<br>
<table id="myTable">
    <thead>
    <tr>
        <th>Nom & Prénoms</th>
        <th>Société</th>
        <th>Titre</th>
        <th>Téléphone</th>
        <th>Email professionnel</th>
        <th>N°Pièce d'identité</th>
        <th>Action</th>
    </tr>
    </thead>
    <g:each in="${utilisateurList}" var="thisUtilisateur" >
        <tr>
            <td>${thisUtilisateur.nomEtPrenoms}</td>
            <td>${thisUtilisateur.societe}</td>
            <td>${thisUtilisateur.titre}</td>
            <td>${thisUtilisateur.telephone}</td>
            <td>${thisUtilisateur.emailPro}</td>
            <td>${thisUtilisateur.numPieceID}</td>
            <td>
                <div class="actions">
                    <g:form method="DELETE" controller="utilisateur" action="delete" id="${thisUtilisateur.id}">

                        <g:link controller="utilisateur"  title="Afficher" action="show" id="${thisUtilisateur.id}" method="POST" >
                            <i >
                                <span class='glyphicon glyphicon-eye-open'></span>
                            </i>
                        </g:link>
                        <g:link controller="utilisateur" title="Mettre à jour" action="edit" id="${thisUtilisateur.id}" method="POST" >
                            <i  >
                                <span class='glyphicon glyphicon-pencil'></span>
                            </i>
                        </g:link>
                        <button style ="border : none;background-color: transparent;" title="Supprimer" data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('Supprimer cet utilisateur ?');">
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
    <g:paginate total="${utilisateurCount ?: 0}" />
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