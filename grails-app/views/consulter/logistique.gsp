<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 20/11/2023
  Time: 20:02
--%>



<g:applyLayout name="main">
    <div class="col-sm-12" id="">
        <h1 style="color: #ff8000; font-weight : 500 ">MODULES LOGISTIQUES</h1>
        <h3 style="margin-left: 22px"> Ces modules permettent la déclaration de l’arrivée des navires et aéronefs, la gestion des opérations portuaires liés aux marchandises des opérateurs par les consignataires et acconiers. Ils répondent ainsi aux obligations administratives, et règlementaires liés à la gestion portuaire des armements et des marchandises.</h3>

        <div class="leWrapper">
            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-1" >
                <label for="tab-1" class="tab-1">
                    <span>SUIVI MANIFESTES</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Ce module permet de rechercher et de suivre l’évolution des manifestes.</br>
                    <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
                </div>
            </div>

            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-2" >
                <label for="tab-2" class="tab-2">
                    <span>E-MANIFESTE</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Ce module permet aux consignataires et aux transporteurs aériens via le GUCE d’enregistrer les manifestes auprès de l’administration douanière puis de l’envoyer vers les autres Administrations (PAA, PASP, DGAMP, Aéroport, Communauté Portuaire, etc.).  Il permet également de faire les dégroupages, les éclatements et intègre les fonctionnalités de gestion des Co-chargeurs et de gestion des amendements en ligne via le GUCE. Ce module est partiellement utilisé depuis 2015 car il est possible d’enregistrer son manifeste directement dans le SYDAM.</br>
                    <br>La fonctionnalité de gestion des Co-chargeurs permet de mentionner les différents consignataires ayant embarqués leurs marchandises sur le même navire afin que chacun puisse enregistrer son propre manifeste.A ce jour, la gestion des co-chargeurs impliquant qu’un navire pourrait avoir plusieurs manifestes selon le nombre de co-chargeur n’a pas été adopté par la DGD.</br>
                    <br>La fonctionnalité d’amendement en ligne permet aux opérateurs après enregistrement de leurs manifestes de faire les demandes de rectifications et modifications des titres de transport auprès de la douane.A ce jour, la demande d’amendement en ligne via le GUCE n’a pas obtenu l’approbation de la DGD.</br>
                    <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
                </div>
            </div>

            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-3" >
                <label for="tab-3" class="tab-3">
                    <span>E-VOYAGE PCS</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Ce module permet aux consignataires d’annoncer leurs moyens de transports. Il prend en compte toutes les demandes annexes adressées aux autorités portuaires et aéroportuaires durant l’escale.Il est pleinement utilisé au PAA pour les demandes d’escale depuis 2021. Cependant, les travaux techniques d’échanges automatiques de données entre systèmes pour les autres demandes, sont en cours de finalisation.En ce qui concerne le PASP, les travaux ont été suspendu dans l’attente de la signature d’un protocole d’accord entre le port et GUCE CI.</br>
                    <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
                </div>
            </div>

            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-4" >
                <label for="tab-4" class="tab-4">
                    <span>PRISE EN CHARGE DES MARCHANDISES</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Ce module est la version améliorée de module Manifeste et est adapté à l’approche PCS de GUCE CI.</br>
                    <h5 class="inscrire">S'inscrire...</h5>
                </div>
            </div>
            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-5" >
                <label for="tab-5" class="tab-5">
                    <span>E-MOUVEMENT</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Ce module est consacré au suivi en temps réel des mouvements (déchargement/chargement, entrée, sortie, transfert) des unités de manutentions et des marchandises. Les travaux sont finalisés avec le Terminal roulier (TERRA) et les échanges de données sont effectifs. En revanche, les travaux avec les autres terminaux sont suspendus en attente de la pleine exploitation du Manifeste avec les fonctionnalités de gestion des co-chargeurs et des amendements. De plus, l’accord d’Abidjan Terminal et des consignataires est attendu pour la mise à disposition des données.</br>
                    <h5 class="inscrire">S'inscrire...</h5>
                </div>
            </div>
            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-6" >
                <label for="tab-6" class="tab-6">
                    <span>E-RELEASE PCS</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>Ce module permet la collecte des différents statuts accordés aux marchandises par les Acteurs portuaires et/ou les autres modules du GUCE afin de générer des autorisations de relâche et/ou des blocages.</br>
                    <h5 class="inscrire">S'inscrire...</h5>
                </div>
            </div>
        </div>
    </div>
</g:applyLayout>

