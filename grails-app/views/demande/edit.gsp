
<%--
  Created by IntelliJ IDEA.
  User: KONAN KOUADIO PATRICK
  Date: 11/12/2023
  Time: 11:41
--%>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'formation.label', default: 'Formation')}" />
</head>
<body>
<br>
<g:form resource="${this.demande}" method="PUT" class="form-horizontal form-normal form-left" action="update">
    <h3 style="color: #ff8000;">Modifier une demande de formation</h3>
    <p class="lead">Veuillez remplir le formulaire ci-dessous pour modifier votre demande.</p>
    <div class='container-fluid grid'>
        <div class='subnav subnav-operations subnav-static' role='navigation'>
            <div class='container-fluid'>
                <ul class='nav nav-pills'>
                    <div>
                        <input type="submit" class="save btn btn-create btn-success j_confirm" name="create" value="${message(code: 'Sauvegarder', default: 'Sauvegarder')}" id="create"/>
                        <g:link controller="demande" action="index" class='btn btn-default' name='close' title='Fermer'>Fermer</g:link>
                    </div>
                </ul>
            </div>
        </div>
        <div class="col-md-7 col-lg-7">
            <div class="row">
                <div class="col-md-6">
                    <label >Type Module</label>
                    <select class="wfinput col-md-2 form-control form-input form-input-0" name="typeModule" id="slct1" onchange="lesModules(this.id,'slct2')" value="${demande?.typeModule}" >
                        <option value=""> -- choix -- </option>
                        <option value="PRE-DEDOUANEMENT">PRE-DEDOUANEMENT</option>
                        <option value="DEDOUANEMENT">DEDOUANEMENT</option>
                        <option value="LOGISTIQUE">LOGISTIQUE</option>
                        <option value="FINANCE">FINANCE</option>
                        <option value="LES DONNEES">LES DONNEES</option>
                    </select>
                    <br>
                    <br>
                    <br>
                    <br>
                    <label >Module</label>
                    <select class="wfinput col-md-2 form-control form-input form-input-0" name="module" id="slct2" onchange="infoModule(this.id,'slct3')" value="${demande?.module}" ></select>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
            </div>
            <br>
            <h3 class="mb-2">Vos coordonnées</h3>
            <div class="row">
                <div class="col-md-6">
                    <label for="nom" class="form-label">Nom & Prénoms</label>
                    <input type="text" class="form-control mb-3" id="nom" name="nom" placeholder="" value="${demande?.nom}" required>
                </div>
                <div class="col-md-4">
                    <label for="telephone" class="form-label">N°Téléphone</label>
                    <input type="text" class="form-control mb-3" id="telephone" name="telephone" placeholder="" value="${demande?.telephone}" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-10">
                    <label for="email" class="form-label ">Adresse Email</label>
                    <input type="email" class="form-control " id="email" name="email" placeholder="adresse@exemple.com" value="${demande?.email}" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-6">
                    <label class="form-label">Vous êtes un : </label>
                    <select class="wfinput col-md-2 form-control form-input form-input-0" name="typePartrnaire" id="typePartrnaire"  value="${demande?.typePartrnaire}" required>
                        <option value=""> -- choix -- </option>
                        <option value="Operateur Economique" >Opérateur Economique</option>
                        <option value="Ministere Technique" >Ministrère Technique</option>
                    </select>
                </div>
                <br>
                <br>
                <br>
                <br>
                <div class="col-md-10">
                    <textarea class="form-control" name="commentaire" id="exampleFormControlTextarea1" rows="3"  placeholder="Un commentaire ?" value="${demande?.commentaire}" ></textarea>
                </div>
            </div>
        </div>
        <div class="col-md-5 col-lg-5 ">
            <span name="commentaire" id="slct3" ></span>
        </div>
    </div>
</g:form>

<script>
    function lesModules(s1,s2)
    {
        var s1 = document.getElementById(s1);
        var s2 = document.getElementById(s2);

        s2.innerHTML = "";

        if(s1.value == "PRE-DEDOUANEMENT")
        {
            var optionArray = [
                '-- choix --|-- choix --',
                'e-Licence|e-Licence',
                'e-Phytosanitaire|e-Phytosanitaire',
                'e-Certificat d\'assurance|e-Certificat d\'assurance',
                'e-Certificat d\'origine|e-Certificat d\'origine',
                'e-Timber|e-Timber',
                'Certificat Phyto Electronique|Certificat Phyto Electronique',
                'Demande de certificat de valeur|Demande de certificat de valeur',
                'e-Certificat de Conformité|e-Certificat de Conformité',
                'Transaction Commerciale|Transaction Commerciale',
                'BSC Intégral|BSC Intégral'
            ];
        }
        else if(s1.value  == 'DEDOUANEMENT')
        {
            var optionArray = [
                '-- choix --|-- choix --',
                'e-Risque|e-Risque',
                'e-DAU|e-DAU',
                'Exonération|Exonération'
            ];
        }

        else if(s1.value  == 'LOGISTIQUE')
        {
            var optionArray = [
                '-- choix --|-- choix --',
                'Suivi manifestes|Suivi manifestes',
                'e-Manifeste|e-Manifeste',
                'e-Voyage PCS|e-Voyage PCS',
                'Prise en charge des marchandises|Prise en charge des marchandises',
                'e-Mouvement PCS|e-Mouvement PCS',
                'e-Release PCS|e-Release PCS'
            ];
        }

        else if(s1.value  == 'FINANCE')
        {
            var optionArray = [
                '-- choix --|-- choix --',
                'e-FOREX|e-FOREX',
                'e-Paiement|e-Paiement'
            ];
        }

        else if(s1.value  == 'LES DONNEES')
        {
            var optionArray = [
                '-- choix --|-- choix --',
                'Rapport|Rapport'];
        }

        for(var option in optionArray)
        {
            var pair = optionArray[option].split("|");
            var newoption = document.createElement("option");

            newoption.value = pair[0];
            newoption.innerHTML=pair[1];
            s2.options.add(newoption);
        }
    }

    function infoModule(s2,s3)
    {
        var s2 = document.getElementById(s2);
        var s3 = document.getElementById(s3);
        s3.innerHTML = "";

        if(s2.value == "e-Licence")
        {
            s3.innerHTML =
                "<label for=\"tab-1\" class=\"tab-1\">\n" +
                "<span>E-LICENCE</span>\n" +
                "</label>\n" +
                "<div class=\"content\">\n" +
                "    <br>Ce module permet de lever les certificats, licences et autorisations préalables d’importation (API) pour les marchandises soumises au régime de la limitation à l’importation. Le traitement peut nécessiter l’approbation d’un ou plusieurs Ministères Techniques en charge du contrôle de ces produits.</br>\n" +
                "</div>";
        }
        else if(s2.value == "e-Phytosanitaire")
        {
            s3.innerHTML = "\n" +
                "            <label for=\"tab-2\" class=\"tab-2\">\n" +
                "                <span>E-PHYTOSANITAIRE</span>\n" +
                "            </label>\n" +
                "            <div class=\"content\">\n" +
                "                <br>Ce module permet à l’exportateur ou à son déclarant d’obtenir son Certificat phytosanitaire auprès du ministère en charge l’Agriculture à travers la dématérialisation des procédures de traitements et contrôles phytosanitaires précédent la délivrance dudit certificat.</br>\n" +
                "                <br>En 2015, une première version du module dénommé e-Phyto v1 couvrant uniquement la délivrance du certificat phytosanitaire avait été déployée et était généralisée à tous les produits végétaux et faisait l’objet d’amélioration continue.</br>\n" +
                "                <br>Les améliorations ont permis d’aboutir à une nouvelle version e-Phyto v2 qui couvre l’intégralité de la procédure en vue de l’émission du certificat phytosanitaire à l’export suivi de sa transmission automatique à la plateforme (HUB) du secrétariat de Convention Internationale pour la Protection des Végétaux (CIPV) depuis février 2022 et de la récupération des certificats pour les cargaisons à destination de la Côte d’Ivoire.</br>\n" +
                "                <br>Ce module est en pleine exploitation pour tous les produits végétaux et d’origine végétale et est en perpétuelle amélioration.</br>\n" +
                "            </div>";
        }
        else if(s2.value == "e-Certificat d\'assurance")
        {
            s3.innerHTML = "\n" +
                "            <label for=\"tab-3\" class=\"tab-3\">\n" +
                "                <span>E-CERTIFICAT D’ASSURANCE</span>\n" +
                "            </label>\n" +
                "            <div class=\"content\">\n" +
                "                <br>Ce module permet aux importateurs/exportateurs de lever les certificats d’assurance pour couvrir les risques encourus par la marchandise pendant le transport. Il est également utilisé par les coutiers en assurance pour lever des certificats d’assurance pour leurs clients et par les assureurs pour gérer les contrats d’assurance et certificats d’assurance. Il est également possible de payer la prime d’assurance à travers la plateforme afin de bénéficier du certificat.</br>\n" +
                "            </div>";
        }
        else if(s2.value == "e-Certificat d\\'origine")
        {
            s3.innerHTML = "\n" +
                "            <label for=\"tab-4\" class=\"tab-4\">\n" +
                "                <span>E-CERTIFICAT D’ORIGINE</span>\n" +
                "            </label>\n" +
                "            <div class=\"content\">\n" +
                "                <br>Ce module permet au fabricant ou à l’exportateur de faire la demande du certificat via le GUCE. Il permet aux destinataires de bénéficier des abattements sur les droits relatifs aux accords sur l’origine des marchandises et est également fait à des fins statistiques pour l’Administration Ivoirienne en générale.</br>\n" +
                "            </div>";
        }
        else if(s2.value == "e-Timber")
        {
            s3.innerHTML = "\n" +
                "            <label for=\"tab-5\" class=\"tab-5\">\n" +
                "                <span>E-TIMBER</span>\n" +
                "            </label>\n" +
                "            <div class=\"content\">\n" +
                "                <br>Ce module permet aux exportateurs d’obtenir l’autorisation d’exportation des produits forestiers (produits ligneux et produits non ligneux) auprès du Ministère des Eaux et Forêts.</br>\n" +
                "                <br>Toutes les étapes de la procédure sont prises en compte depuis la demande de suivi d’empotage jusqu’à l’ajout du BL à l’autorisation pour confirmer le départ de la cargaison.</br>\n" +
                "                <br>Ce module intègre les fonctionnalités suivantes :"+
                "                <br>-   Gestion des entreprises agréées et des quotas de sciages frais alloués." +
                "                <br>-   Suivi et apurement des quotas" +
                "                <br>-   Inspection de la cargaison et de délivrance de l’autorisation d’exportation" +
                "                <br>-   Changement de navire" +
                "            </div>";
        }
        else if(s2.value == "Certificat Phyto Electronique")
        {
            s3.innerHTML = "";
        }
        else if(s2.value == "Demande de certificat de valeur")
        {
            s3.innerHTML = "\n" +
                "            <label for=\"tab-6\" class=\"tab-6\">\n" +
                "                <span>DEMANDE DE CERTIFICAT DE VALEUR</span>\n" +
                "            </label>\n" +
                "            <div class=\"content\">\n" +
                "                <br>Ce module permet à l’importateur/exportateur de faire la demande d’évaluation et de classification via le GUCE de sa cargaison importée. A l’issue de cette évaluation, un document est émis qui est le Rapport Final de Classification et de Valeur (RFCV).</br>\n" +
                "                <br>Ce document est exigé lors de la levée de la déclaration en douane pour toutes transactions commerciales d’un montant supérieur à 1 000 000 FCFA et pour certains produits.</br>\n" +
                "                <br>Après la soumission, les informations sont envoyées dans ValueWebb le système mis à la disposition de la Direction de l’Analyse du risque, du renseignement et de la valeur (DARRV) qui procède au traitement de la transaction. Enfin de traitement, le RFCV est disponible et téléchargeable à travers le GUCE via le module e-Ruling Center (e-RC).</br>\n" +
                "                <br>Il faut noter que la DARRV dispose de 2 jours pour une importation aérienne express, 3 pour une importation aérienne normale et de 5 jours pour une importation maritime hors denrées périssables pour émettre le RFCV.</br>\n" +
                "            </div>";
        }
        else if(s2.value == "e-Certificat de Conformité")
        {
            s3.innerHTML = "\n" +
                "            <label for=\"tab-8\">\n" +
                "                <span>E-CERTIFICAT DE CONFORMITE</span>\n" +
                "            </label>\n" +
                "            <div class=\"content\">\n" +
                "                <br>Ce module permet aux opérateurs et aux administrations en charge du contrôle de la qualité de consulter les certificats de conformité aux normes de qualité internationales des produits à l’importation.</br>\n" +
                "                <br>Ces certificats sont délivrés avant embarquement de la cargaison par les prestataires du programme de vérifications de la conformité que sont : SGS, COTECNA, BUREAU VERITAS et INTERTEK.</br>\n" +
                "            </div>";
        }
        else if(s2.value == "Transaction Commerciale")
        {
            s3.innerHTML = "\n" +
                "            <label for=\"tab-9\">\n" +
                "                <span>TRANSACTION COMMERCIALE</span>\n" +
                "            </label>\n" +
                "            <div class=\"content\">\n" +
                "                <br>Ce module permet aux importateurs ou aux déclarants de soumettre leurs dossiers de demande d’importation auprès du ministère du Commerce. Le module intègre le processus de domiciliation de la facture commerciale auprès d’une banque commerciale lorsque la valeur FOB de celle-ci est supérieure ou égale à 500 000 FCFA. Après l’étape de la domiciliation par la banque, le dossier est envoyé au ministère du commerce pour approbation. Cette dernière opération entraine la délivrance du document d’importation appelé FDI (Fiche de Déclaration à l’Importation). Ce document est valable 3 mois et renouvelable 1 fois pour une durée de 3 mois.</br>\n" +
                "            </div>";
        }
        else if(s2.value == "BSC Intégral")
        {
            s3.innerHTML = "\n" +
                "            <label for=\"tab-10\">\n" +
                "                <span>BSC INTEGRAL</span>\n" +
                "            </label>\n" +
                "            <div class=\"content\">\n" +
                "                <br>Ce module permet de soumettre, consulter et télécharger le Bordereau de Suivi de Cargaison (BSC) sur la plateforme du GUCE. Il est nécessaire à la collecte des données de sureté et de facturation de la DGAMP.</br>\n" +
                "                <br>Le module intègre également les informations relatives au navire ainsi qu’à son équipage et permet une réconciliation entre manifeste cargo Armateur et celui enregistré à la douane.</br>\n" +
                "            </div>\n" +
                "        </div>";
        }
        else if(s2.value == "e-Risque")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-1\" class=\"tab-1\">\n" +
                "                    <span>E-RISQUE</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Ce module est un outil destiné aux Ministères techniques qui permet d’apprécier le niveau de risque d’une transaction commerciale selon certains paramètres préalablement configurés dans le système.</br>\n" +
                "                    <br>Le module peut être couplé avec tous les autres modules du GUCE notamment celui de la déclaration en douane. Il se déclenche en générant un rapport d’analyse de risque lors de la levée dudit document et envoie une notification au département technique ayant paramétré ces critères de risque. Les critères d’évaluation prévus dans le module e-Risque sont :\n" +
                "                    <li>Pays de destination de la cargaison</li>\n" +
                "                    <li>Pays de provenance de la cargaison</li>\n" +
                "                    <li>Pays d’origine de la cargaison</li>\n" +
                "                    <li>La liste des produits</li>\n" +
                "                    <li>Les opérateurs économiques (Déclarant, importateur/exportateur, etc)</li>\n" +
                "                    <br>Lorsque le rapport de risque est généré, il donne lieu à une analyse documentaire ou à une inspection de la cargaison puis à un résultat qui est matérialisé dans le module. Seul ce résultat permettra de donner une suite de la procédure notamment la condition pour que la douane libère la marchandise.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "e-DAU")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-2\" class=\"tab-2\">\n" +
                "                    <span>E-DAU</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Ce module permet la saisie et la soumission de la déclaration en détail par les commissionnaires en douane à partir du GUCE. Il permet également aux importateurs et exportateurs de consulter leurs déclarations en ligne via la plateforme du GUCE.</br>\n" +
                "                    <br>Il est partiellement utilisé depuis 2016 car les opérateurs ont la latitude de lever leurs déclarations en douane directement au SYDAM.</br>\n" +
                "                    <br>Par ailleurs, certains contrôles, règles de gestion ou régimes douaniers n’ont pu être implémenté du fait de la nécessité de mettre à jour le connecteur WFConnect qui permet d’interagir avec le SYDAM.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "Exonération")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-3\" class=\"tab-3\">\n" +
                "                    <span>EXONERATION</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Le module Exonération permet d’obtenir en ligne les attestations d’exonération des droits et taxes à l’importation. Le traitement peut nécessiter l’approbation du Ministère Technique ayant délivré préalablement l’autorisation d’exonération puis la validation de la Douane ou uniquement la validation de la Douane selon le cas.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "Suivi manifestes")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-1\" class=\"tab-1\">\n" +
                "                    <span>SUIVI MANIFESTES</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Ce module permet de rechercher et de suivre l’évolution des manifestes.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "e-Manifeste")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-2\" class=\"tab-2\">\n" +
                "                    <span>E-MANIFESTE</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Ce module permet aux consignataires et aux transporteurs aériens via le GUCE d’enregistrer les manifestes auprès de l’administration douanière puis de l’envoyer vers les autres Administrations (PAA, PASP, DGAMP, Aéroport, Communauté Portuaire, etc.).  Il permet également de faire les dégroupages, les éclatements et intègre les fonctionnalités de gestion des Co-chargeurs et de gestion des amendements en ligne via le GUCE. Ce module est partiellement utilisé depuis 2015 car il est possible d’enregistrer son manifeste directement dans le SYDAM.</br>\n" +
                "                    <br>La fonctionnalité de gestion des Co-chargeurs permet de mentionner les différents consignataires ayant embarqués leurs marchandises sur le même navire afin que chacun puisse enregistrer son propre manifeste.A ce jour, la gestion des co-chargeurs impliquant qu’un navire pourrait avoir plusieurs manifestes selon le nombre de co-chargeur n’a pas été adopté par la DGD.</br>\n" +
                "                    <br>La fonctionnalité d’amendement en ligne permet aux opérateurs après enregistrement de leurs manifestes de faire les demandes de rectifications et modifications des titres de transport auprès de la douane.A ce jour, la demande d’amendement en ligne via le GUCE n’a pas obtenu l’approbation de la DGD.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "e-Voyage PCS")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-3\" class=\"tab-3\">\n" +
                "                    <span>E-VOYAGE PCS</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Ce module permet aux consignataires d’annoncer leurs moyens de transports. Il prend en compte toutes les demandes annexes adressées aux autorités portuaires et aéroportuaires durant l’escale. Il est pleinement utilisé au PAA pour les demandes d’escale depuis 2021. Cependant, les travaux techniques d’échanges automatiques de données entre systèmes pour les autres demandes, sont en cours de finalisation. En ce qui concerne le PASP, les travaux ont été suspendu dans l’attente de la signature d’un protocole d’accord entre le port et GUCE CI.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "Prise en charge des marchandises")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-4\" class=\"tab-4\">\n" +
                "                    <span>PRISE EN CHARGE DES MARCHANDISES</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Ce module est la version améliorée de module Manifeste et est adapté à l’approche PCS de GUCE CI.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "e-Mouvement PCS")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-5\" class=\"tab-5\">\n" +
                "                    <span>E-MOUVEMENT</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Ce module est consacré au suivi en temps réel des mouvements (déchargement/chargement, entrée, sortie, transfert) des unités de manutentions et des marchandises. Les travaux sont finalisés avec le Terminal roulier (TERRA) et les échanges de données sont effectifs. En revanche, les travaux avec les autres terminaux sont suspendus en attente de la pleine exploitation du Manifeste avec les fonctionnalités de gestion des co-chargeurs et des amendements. De plus, l’accord d’Abidjan Terminal et des consignataires est attendu pour la mise à disposition des données.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "e-Release PCS")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-6\" class=\"tab-6\">\n" +
                "                    <span>E-RELEASE PCS</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>Ce module permet la collecte des différents statuts accordés aux marchandises par les Acteurs portuaires et/ou les autres modules du GUCE afin de générer des autorisations de relâche et/ou des blocages.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "e-FOREX")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-1\" class=\"tab-1\">\n" +
                "                    <span>E-FOREX</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <li>Délivrance des Autorisation de change (AC) pour le règlement des factures fournisseurs à l’importation.</li>\n" +
                "                    <li>Délivrance des Engagements de change (EC) et Attestations d’exportation à l’exportation.</li>\n" +
                "                    <li>Déclaration de Rapatriement des recettes d’exportation ou de préfinancement d’une exportation.</li>\n" +
                "                    <li>Déclaration des Cessions des devises rapatriées à la BCEAO.</li>\n" +
                "                </div>";
        }
        else if(s2.value == "e-Paiement")
        {
            s3.innerHTML = "\n" +
                "                <label for=\"tab-2\" class=\"tab-2\">\n" +
                "                    <span>E-PAIEMENT</span>\n" +
                "                </label>\n" +
                "                <div class=\"content\">\n" +
                "                    <br>C’est un module transversal qui permettra à terme aux importateurs/exportateurs et aux déclarants de payer en ligne les factures des frais locaux déterminés par d’autres modules, notamment les factures des frais liées à certaines Autorisations Préalables d’Importation (API), aux primes d’assurance, aux droits et taxes en douane, etc.</br>\n" +
                "                    <br>Une première phase pilote a eu lieu et a permis de payer certaines des déclarations douanières des entreprise Bolloré, Dikan Transit et MOVIS par virement bancaire avec succès.</br>\n" +
                "                    <br>A ce jour, les moyens de paiement implémentés sont :</br>\n" +
                "                    <li>Virement bancaire compte à compte avec ECOBANK et BNI</li>\n" +
                "                    <li>Mobile Money avec WAVE.</li>\n" +
                "                    <br>Une seconde phase pilote est en cours pour le paiement des APIs des produits chimiques via WAVE.</br>\n" +
                "                    <br>En ce qui concerne, les virements bancaires, un courrier de demande d’accord a été adressé à la DGD afin de démarrer une nouvelle phase pilote avec la banque ECOBANK et deux déclarants en douane.</br>\n" +
                "                </div>";
        }
        else if(s2.value == "Rapport")
        {
            s3.innerHTML = "";
        }
    }
</script>

</body>
</html>