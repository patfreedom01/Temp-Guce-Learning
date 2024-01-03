<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 20/11/2023
  Time: 20:02
--%>

<g:applyLayout name="main">
%{--    <asset:stylesheet src="accordeonCSS/styleAccordeon.css"/>--}%
<div class="col-sm-12" id="">
    <h1 style="color: #ff8000; font-weight : 500 ">MODULES PRE-DEDOUANEMENT</h1>
    <h3 style="margin-left: 22px">Ces modules permettent aux opérateurs économiques de répondent aux obligations administratives et règlementaires avant importation ou exportation de leurs marchandises à destination ou au départ de la Côte d’Ivoire à l’adresse des Ministères Techniques ou d’organismes privés.</h3>
    <div class="leWrapper">
        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-1" >
            <label for="tab-1" class="tab-1">
                <span>E-LICENCE</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet de lever les certificats, licences et autorisations préalables d’importation (API) pour les marchandises soumises au régime de la limitation à l’importation. Le traitement peut nécessiter l’approbation d’un ou plusieurs Ministères Techniques en charge du contrôle de ces produits.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>
        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-2" >
            <label for="tab-2" class="tab-2">
                <span>E-PHYTOSANITAIRE</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet à l’exportateur ou à son déclarant d’obtenir son Certificat phytosanitaire auprès du ministère en charge l’Agriculture à travers la dématérialisation des procédures de traitements et contrôles phytosanitaires précédent la délivrance dudit certificat.</br>
                <br>En 2015, une première version du module dénommé e-Phyto v1 couvrant uniquement la délivrance du certificat phytosanitaire avait été déployée et était généralisée à tous les produits végétaux et faisait l’objet d’amélioration continue.</br>
                <br>Les améliorations ont permis d’aboutir à une nouvelle version e-Phyto v2 qui couvre l’intégralité de la procédure en vue de l’émission du certificat phytosanitaire à l’export suivi de sa transmission automatique à la plateforme (HUB) du secrétariat de Convention Internationale pour la Protection des Végétaux (CIPV) depuis février 2022 et de la récupération des certificats pour les cargaisons à destination de la Côte d’Ivoire.</br>
                <br>Ce module est en pleine exploitation pour tous les produits végétaux et d’origine végétale et est en perpétuelle amélioration.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>
        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-3" >
            <label for="tab-3" class="tab-3">
                <span>E-CERTIFICAT D’ASSURANCE</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet aux importateurs/exportateurs de lever les certificats d’assurance pour couvrir les risques encourus par la marchandise pendant le transport. Il est également utilisé par les coutiers en assurance pour lever des certificats d’assurance pour leurs clients et par les assureurs pour gérer les contrats d’assurance et certificats d’assurance. Il est également possible de payer la prime d’assurance à travers la plateforme afin de bénéficier du certificat.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>
        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-4" >
            <label for="tab-4" class="tab-4">
                <span>E-CERTIFICAT D’ORIGINE</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet au fabricant ou à l’exportateur de faire la demande du certificat via le GUCE. Il permet aux destinataires de bénéficier des abattements sur les droits relatifs aux accords sur l’origine des marchandises et est également fait à des fins statistiques pour l’Administration Ivoirienne en générale.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>
        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-5" >
            <label for="tab-5" class="tab-5">
                <span>E-TIMBER</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet aux exportateurs d’obtenir l’autorisation d’exportation des produits forestiers (produits ligneux et produits non ligneux) auprès du Ministère des Eaux et Forêts.</br>
                <br>Toutes les étapes de la procédure sont prises en compte depuis la demande de suivi d’empotage jusqu’à l’ajout du BL à l’autorisation pour confirmer le départ de la cargaison.</br>
                <br>Ce module intègre les fonctionnalités suivantes :</br>
                <br>-   Gestion des entreprises agréées et des quotas de sciages frais alloués.</br>
                <br>-   Suivi et apurement des quotas</br>
                <br>-   Inspection de la cargaison et de délivrance de l’autorisation d’exportation </br>
                <br>-   Changement de navire</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>

        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-6" >
            <label for="tab-6" class="tab-6">
                <span>DEMANDE DE CERTIFICAT DE VALEUR</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet à l’importateur/exportateur de faire la demande d’évaluation et de classification via le GUCE de sa cargaison importée. A l’issue de cette évaluation, un document est émis qui est le Rapport Final de Classification et de Valeur (RFCV).</br>
                <br>Ce document est exigé lors de la levée de la déclaration en douane pour toutes transactions commerciales d’un montant supérieur à 1 000 000 FCFA et pour certains produits.</br>
                <br>Après la soumission, les informations sont envoyées dans ValueWebb le système mis à la disposition de la Direction de l’Analyse du risque, du renseignement et de la valeur (DARRV) qui procède au traitement de la transaction. Enfin de traitement, le RFCV est disponible et téléchargeable à travers le GUCE via le module e-Ruling Center (e-RC).</br>
                <br>Il faut noter que la DARRV dispose de 2 jours pour une importation aérienne express, 3 pour une importation aérienne normale et de 5 jours pour une importation maritime hors denrées périssables pour émettre le RFCV.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>

        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-7">
            <label for="tab-7" class="tab-7">
                <span>DEMANDE DE CERTIFICAT DE VALEUR</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet à l’importateur/exportateur de faire la demande d’évaluation et de classification via le GUCE de sa cargaison importée. A l’issue de cette évaluation, un document est émis qui est le Rapport Final de Classification et de Valeur (RFCV).</br>
                <br>Ce document est exigé lors de la levée de la déclaration en douane pour toutes transactions commerciales d’un montant supérieur à 1 000 000 FCFA et pour certains produits.</br>
                <br>Après la soumission, les informations sont envoyées dans ValueWebb le système mis à la disposition de la Direction de l’Analyse du risque, du renseignement et de la valeur (DARRV) qui procède au traitement de la transaction. Enfin de traitement, le RFCV est disponible et téléchargeable à travers le GUCE via le module e-Ruling Center (e-RC).</br>
                <br>Il faut noter que la DARRV dispose de 2 jours pour une importation aérienne express, 3 pour une importation aérienne normale et de 5 jours pour une importation maritime hors denrées périssables pour émettre le RFCV.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>

        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-8">
            <label for="tab-8">
                <span>E-CERTIFICAT DE CONFORMITE</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet aux opérateurs et aux administrations en charge du contrôle de la qualité de consulter les certificats de conformité aux normes de qualité internationales des produits à l’importation.</br>
                <br>Ces certificats sont délivrés avant embarquement de la cargaison par les prestataires du programme de vérifications de la conformité que sont : SGS, COTECNA, BUREAU VERITAS et INTERTEK.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>

        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-9" >
            <label for="tab-9">
                <span>TRANSACTION COMMERCIALE</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet aux importateurs ou aux déclarants de soumettre leurs dossiers de demande d’importation auprès du ministère du Commerce. Le module intègre le processus de domiciliation de la facture commerciale auprès d’une banque commerciale lorsque la valeur FOB de celle-ci est supérieure ou égale à 500 000 FCFA. Après l’étape de la domiciliation par la banque, le dossier est envoyé au ministère du commerce pour approbation. Cette dernière opération entraine la délivrance du document d’importation appelé FDI (Fiche de Déclaration à l’Importation). Ce document est valable 3 mois et renouvelable 1 fois pour une durée de 3 mois.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>

        <div class="parent-tab">
            <input type="checkbox" name="tab" id="tab-10">
            <label for="tab-10">
                <span>BSC INTEGRAL</span>
                <div class="icon"><i class="fas fa-plus"></i></div>
            </label>
            <div class="content">
                <br>Ce module permet de soumettre, consulter et télécharger le Bordereau de Suivi de Cargaison (BSC) sur la plateforme du GUCE. Il est nécessaire à la collecte des données de sureté et de facturation de la DGAMP.</br>
                <br>Le module intègre également les informations relatives au navire ainsi qu’à son équipage et permet une réconciliation entre manifeste cargo Armateur et celui enregistré à la douane.</br>
                <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
            </div>
        </div>
    </div>
</div>
</div>
</g:applyLayout>

