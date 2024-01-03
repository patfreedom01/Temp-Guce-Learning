<br>
<g:form resource="${this.utilisateurRole}" method="POST" class="form-horizontal form-normal form-left" action="save">
    <h3 style="color: #ff8000;">Gestion des rôles</h3>
    <div class='container-fluid grid'>
        <div class='subnav subnav-operations subnav-static' role='navigation'>
            <div class='container-fluid'>
                <ul class='nav nav-pills'>
                    <div>

                        <input type="submit" class="save btn btn-create btn-success j_confirm" name="create" value="Enregistrer" id="create"/>
                        <g:link controller="utilisateurRole" action="index" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                    </div>
                </ul>
            </div>
        </div>
        <br>
        <div class="row g-4">
            <div class="col-md-9 col-lg-9">
                <div class="row g-3">
                    <div class="col-md-6">
                        <f:all bean="utilisateurRole" order="utilisateur" />
%{--                        <label for="utilisateur" class="form-label">Utilisateur</label>--}%
%{--                        <input type="text" name="utilisateur" class="form-control mb-3" id="utilisateur" placeholder="" value="${utilisateurRole?.utilisateur}" required >--}%
                        <br>
                        <f:all bean="utilisateurRole" order="authority" />
%{--                        <label for="authority" class="form-label">Authority</label>--}%
%{--                        <input type="text" name="authority" class="form-control mb-3" id="authority" placeholder="" value="${utilisateurRole?.authority}" required >--}%
                    </div>

                </div>
            </div>
        </div>
    </div>
</g:form>
<br>
<br>