<br>
<g:form resource="${this.societe}" method="POST" class="form-horizontal form-normal form-left" action="save">
    <h3 style="color: #ff8000;">Ajouter un partenaire</h3>
    <div class='container-fluid grid'>
        <div class='subnav subnav-operations subnav-static' role='navigation'>
            <div class='container-fluid'>
                <ul class='nav nav-pills'>
                    <div>
                        <input type="submit" class="btn btn-create btn-success j_confirm" name="create" value="Enregistrer" id="create"/>
                        <g:link controller="societe" action="index" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                    </div>
                </ul>
            </div>
        </div>
        <div class="row g-4">
            <div class="col-md-8 col-lg-8">
                <div class="row g-3">
                    <div class="col-md-6">
                        <label for="nom" class="form-label">Raison sociale</label>
                        <input type="text" name="nom" class="form-control mb-3" id="nom" placeholder="" value="${societe?.nom}" required>
                    </div>
                    <div class="col-md-6">
                        <label for="compteContribuable" class="form-label">N°Compte Contribuable</label>
                        <input type="text" name="compteContribuable" class="form-control mb-3" id="compteContribuable" placeholder="" value="${societe?.compteContribuable}" required >
                    </div>
                    <div class="col-md-6">
                        <label for="adresse" class="form-label">Adresse</label>
                        <input type="text" name="adresse" class="form-control mb-3" id="adresse" placeholder="" value="${societe?.adresse}" required>
                    </div>
                    <div class="col-md-6">
                        <label for="telephone" class="form-label">Téléphone</label>
                        <input type="text" name="telephone" class="form-control mb-3" id="telephone" placeholder="" value="${societe?.telephone}" required>
                    </div>
                    <div class="col-md-6">
                        <label for="emailSociete" class="form-label">Email professionnelle</label>
                        <input type="text" name="emailSociete" class="form-control mb-3" id="emailSociete" placeholder="" value="${societe?.emailSociete}" required>
                    </div>
                    <div class="col-md-6">
                        <label for="code" class="form-label">Code</label>
                        <input type="text" name="code" class="form-control mb-3" id="code" placeholder="" value="${societe?.code}" required>
                    </div>
                </div>

            </div>
        </div>
    </div>
</g:form>
<br>
<br>