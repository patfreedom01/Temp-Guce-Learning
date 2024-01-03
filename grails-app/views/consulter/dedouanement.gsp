<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 20/11/2023
  Time: 20:02
--%>

<g:applyLayout name="main">




    <div class="col-sm-12" id="">
        <h1 style="color: #ff8000; font-weight : 500 ">MODULES DEDOUANEMENT</h1>

        <h3 style="margin-left: 22px">Ces modules permettent la déclaration en douane des marchandises et la gestion des risques liés aux marchandises des opérateurs  ils répondent ainsi aux obligations administratives, fiscales et règlementaires à l’arrivée de leurs marchandises en Côte d’Ivoire.</h3>

        <div class="leWrapper">
            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-1" >
                <label for="tab-1" class="tab-1">
                    <span>E-RISQUE</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Ce module est un outil destiné aux Ministères techniques qui permet d’apprécier le niveau de risque d’une transaction commerciale selon certains paramètres préalablement configurés dans le système.</br>
                    <br>Le module peut être couplé avec tous les autres modules du GUCE notamment celui de la déclaration en douane. Il se déclenche en générant un rapport d’analyse de risque lors de la levée dudit document et envoie une notification au département technique ayant paramétré ces critères de risque. Les critères d’évaluation prévus dans le module e-Risque sont :
                    <li>Pays de destination de la cargaison</li>
                    <li>Pays de provenance de la cargaison</li>
                    <li>Pays d’origine de la cargaison</li>
                    <li>La liste des produits</li>
                    <li>Les opérateurs économiques (Déclarant, importateur/exportateur, etc)</li>
                </br>
                    <br>Lorsque le rapport de risque est généré, il donne lieu à une analyse documentaire ou à une inspection de la cargaison puis à un résultat qui est matérialisé dans le module. Seul ce résultat permettra de donner une suite de la procédure notamment la condition pour que la douane libère la marchandise.</br>
                    <h4 class="inscrire"><g:link controller="sinscrire" action="index" name="E-RISQUE" value="${this.module.nom}">S'inscrire</g:link></h4>
                </div>
            </div>

            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-2" >
                <label for="tab-2" class="tab-2">
                    <span>E-DAU</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Ce module permet la saisie et la soumission de la déclaration en détail par les commissionnaires en douane à partir du GUCE. Il permet également aux importateurs et exportateurs de consulter leurs déclarations en ligne via la plateforme du GUCE.</br>
                    <br>Il est partiellement utilisé depuis 2016 car les opérateurs ont la latitude de lever leurs déclarations en douane directement au SYDAM.</br>
                    <br>Par ailleurs, certains contrôles, règles de gestion ou régimes douaniers n’ont pu être implémenté du fait de la nécessité de mettre à jour le connecteur WFConnect qui permet d’interagir avec le SYDAM.</br>
                    <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
                </div>
            </div>

            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-3" >
                <label for="tab-3" class="tab-3">
                    <span>EXONERATION</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Le module Exonération permet d’obtenir en ligne les attestations d’exonération des droits et taxes à l’importation. Le traitement peut nécessiter l’approbation du Ministère Technique ayant délivré préalablement l’autorisation d’exonération puis la validation de la Douane ou uniquement la validation de la Douane selon le cas.</br>
                    <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
                </div>
            </div>
        </div>
    </div>

</g:applyLayout>










%{--<!DOCTYPE html>--}%
%{--<html>--}%
%{--<head>--}%

%{--    <meta name="layout" content="main" />--}%

%{--</head>--}%
%{--<body>--}%

%{--<div class="patNav" role="navigation">--}%
%{--    <ul>--}%
%{--    </ul>--}%
%{--</div>--}%
%{--<div id="" class="content scaffold-list" role="main">--}%

%{--    <div class="py-5">--}%
%{--        <h2 style="color : #ff8000 ">MODULES DEDOUANEMENT</h2>--}%
%{--        <p class="lead">Ces modules permettent la déclaration en douane des marchandises et la gestion des risques liés aux marchandises des opérateurs  ils répondent ainsi aux obligations administratives, fiscales et règlementaires à l’arrivée de leurs marchandises en Côte d’Ivoire.</p>--}%
%{--    </div>--}%
%{--    <div class="row g-4">--}%
%{--        <div class="col-md-8 col-lg-8">--}%
%{--            <hr class="my-4">--}%
%{--            <g:form resource="${this.formation}" method="POST" class="form-group">--}%
%{--                <div class="row g-3">--}%
%{--                    <div class="col-md-6">--}%
%{--                        <hr class="my-4">--}%
%{--                        <f:all bean="formation" order="module"/>--}%
%{--                    </div>--}%
%{--                    <div class="col-md-12 m-5">--}%
%{--                        <hr class="my-4">--}%
%{--                        <g:textArea class="form-control" id="exampleFormControlTextarea1" rows="3" name="description" value="${formation?.description}" placeholder="Description"/>--}%
%{--                    </div>--}%
%{--                    <div class="row">--}%
%{--                        <div class="col-md-12 left">--}%
%{--                            <div class="col-md-3 ">--}%
%{--                                <hr class="my-4">--}%
%{--                                <label>   <f:all bean="formation" order="interne"/></label>--}%
%{--                            </div>--}%
%{--                            <div class="col-md-3">--}%
%{--                                <hr class="my-4">--}%
%{--                                <label>   <f:all bean="formation" order="presentiel"/></label>--}%
%{--                            </div>--}%
%{--                            <div class="col-md-3">--}%
%{--                                <hr class="my-4">--}%
%{--                                <label><f:all bean="formation" order="heureDebut" /></label>--}%
%{--                            </div>--}%
%{--                            <div class="col-md-3">--}%
%{--                                <hr class="my-4">--}%
%{--                                <label><f:all bean="formation" order="duree"/></label>--}%
%{--                            </div>--}%
%{--                        </div>--}%
%{--                    </div>--}%
%{--                    --}%%{--                    <f:all bean="formation" order=", dateFormtation, dateLimiteInscription, heureDebut, duree, nombreDeParticipantsParEntreprise"/>--}%

%{--                    <div class="col-md-12">--}%
%{--                        <hr class="my-4">--}%
%{--                        <label><f:all bean="formation" order="dateFormtation"/></label>--}%
%{--                    </div>--}%
%{--                    <div class="col-md-12">--}%
%{--                        <hr class="my-4">--}%
%{--                        <label ><f:all  bean="formation" order="dateLimiteInscription"/></label>--}%
%{--                    </div>--}%
%{--                    <div class="col-md-12">--}%
%{--                        <hr class="my-4">--}%
%{--                        <label ><f:all  bean="formation" order="nombreDeParticipantsParEntreprise"/></label>--}%
%{--                    </div>--}%
%{--                    <div class="col-md-12 m-5">--}%
%{--                        <hr class="my-4">--}%
%{--                        <g:textArea class="form-control" id="exampleFormControlTextarea2" rows="1" name="lieu" value="${formation?.description}" placeholder="Lieu"/>--}%
%{--                    </div>--}%
%{--                </div>--}%
%{--                <hr class="my-4">--}%
%{--                <g:submitButton name="create" class="save w-50 d-grid gap-2 col-6 mx-auto btn btn-success btn-lg" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
%{--            </g:form>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</div>--}%

%{--</body>--}%
%{--</html>--}%