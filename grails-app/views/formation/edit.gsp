<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'formation.label', default: 'Formation')}" />
</head>
<body>
<br>
<g:form resource="${this.formation}" method="PUT" class="form-horizontal form-normal form-left" action="update">
    <h3 style="color: #ff8000;">Modifier une formation</h3>
    <div class='container-fluid grid'>
        <div class='subnav subnav-operations subnav-static' role='navigation'>
            <div class='container-fluid'>
                <ul class='nav nav-pills'>
                    <div>
                        <input type="submit" class="btn btn-create btn-success j_confirm" name="create" value="Enregistrer" id="create"/>
                        <g:link controller="formation" action="index" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                    </div>
                </ul>
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col-md-6">

                <div class="col-md-7 col-lg-7">
                    <div class="row">
                        <div class="col-md-6">
                            %{--                    <label for="module" class="form-label">Module</label>--}%
                            %{--                    <select class="wfinput col-md-2 form-control form-input form-input-0" name="module" id="module"  value="${formation?.module}" >--}%
                            <f:all bean="formation" order="module" />
                            %{--                    </select>--}%
                        </div>
                        <br>
                        <br>
                        <div class="col-md-12">
                            <textarea class="form-control col-md-6" name="description" id="exampleFormControlTextarea1" rows="3"  placeholder="Objet de la planification de cette formation dans ce module" value="${formation?.description}" ></textarea>
                        </div>
                    </div>
                    <br>
                </div>
                <div class="row">
                    <div class="col-md-12 left">
                        <div class="col-md-3">
                            <label for="interne" class="form-label">Interne</label>
                            <select class="wfinput col-md-2 form-control form-input form-input-0" name="interne" id="interne"  value="${formation?.interne}" >
                                <option value=""> -- choix -- </option>
                                <option value="Oui">Oui</option>
                                <option value="Non">Non</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label for="presentielle" class="form-label">En présentielle</label>
                            <select class="wfinput col-md-2 form-control form-input form-input-0" name="presentielle" id="presentielle"  value="${formation?.presentielle}" >
                                <option value=""> -- choix -- </option>
                                <option value="Oui">Oui</option>
                                <option value="Non">Non</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label for="heureDebut" class="form-label">Heure</label>
                            <select class="wfinput col-md-2 form-control form-input form-input-0" name="heureDebut" id="heureDebut"  value="${formation?.heureDebut}" >
                                <option value=""> -- choix -- </option>
                                <option value="8h">8h</option>
                                <option value="9h">9h</option>
                                <option value="10h">10h</option>
                                <option value="11h">11h</option>
                                <option value="14h">14h</option>
                                <option value="15h">15h</option>
                                <option value="16h">16h</option>
                                <option value="17h">17h</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label for="duree" class="form-label">Durée</label>
                            <select class="wfinput col-md-2 form-control form-input form-input-0" name="duree" id="duree"  value="${formation?.duree}" >
                                <option value=""> -- choix -- </option>
                                <option value="1h">1h</option>
                                <option value="2h">2h</option>
                                <option value="3h">3h</option>
                                <option value="4h">4h</option>
                            </select>
                        </div>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <div class="col-md-8">
                            <f:all bean="formation" order="dateFormtation"/>
                        </div>
                        <br>
                        <br>
                        <div class="col-md-8">
                            %{--                            <label for="dateLimiteInscription" class="form-label">Date Limite Inscription</label>--}%
                            %{--                            <input type="text" name="dateLimiteInscription" class="form-control mb-3" id="dateLimiteInscription" placeholder="" value="${formation?.dateLimiteInscription}" required>--}%
                            <f:all  bean="formation" order="dateLimiteInscription"/>
                        </div>
                        <br>
                        <br>
                        <div class="col-md-8 m-5">
                            <label for="lieu" class="form-label">Lieu</label>
                            <input type="text" name="lieu" class="form-control mb-3" id="lieu" placeholder="" value="${formation?.lieu}" required>
                        </div>
                        <br>
                        <br>
                        <br>
                        <br>
                        <div class="col-md-4">
                            <label for="nombreDeParticipantsParEntreprise" class="form-label">Participants par entreprise</label>
                            <select class="wfinput form-control form-input form-input-0 " name="nombreDeParticipantsParEntreprise" id="nombreDeParticipantsParEntreprise" value="${formation?.nombreDeParticipantsParEntreprise}" >
                                <option value=""> -- choix -- </option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </select>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-6">
                <div class=" col-md-12">
                    <div class="col-md-8">
                        <f:display bean="formation" order="module"/>
                    </div>
                    <div class="col-md-12 m-5">
                        <f:display bean="formation" order="description"/>
                    </div>
                    <div class="col-md-6 ">
                        <f:display bean="formation" order="interne"/>
                    </div>
                    <div class="col-md-6">
                        <f:display bean="formation" order="presentielle"/>
                    </div>
                    <div class="col-md-6">
                        <f:display bean="formation" order="heureDebut" />
                        <f:display bean="formation" order="dateFormtation"/>

                    </div>
                    <div class="col-md-6">
                        <f:display bean="formation" order="duree"/>
                        <f:display  bean="formation" order="dateLimiteInscription"/>
                    </div>
                    <div class="col-md-10">
                        <f:display  bean="formation" order="nombreDeParticipantsParEntreprise"/>
                        <f:display  bean="formation" order="lieu"/>
                    </div>
            </div>
            </div>
        </div>



    </div>

</g:form>


</body>
</html>