<%--
  Created by IntelliJ IDEA.
  User: Konan Patrick
  Date: 07/11/2023
  Time: 17:54
--%>
<header>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MZX59M7"
                      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    <div class="top">
        <div class="header-bar">
            <div class="container container-condensed">
                <div class="pull-right">
                    <div>
                        <a href="https://trn.guce.gouv.ci/twm?lang=fr">
                            <span>Services communautaires
                            </span>
                        </a>
                    </div>
                    <div>
                        <li title="Déconnexion">
                            <g:link controller="auth" action="logout" title="Déconnexion">
                                <span class='glyphicon glyphicon-user'></span>
                            </g:link>
                        </li>
                    </div>
                    <div class="padding">
                        <div id="lang_selector" class="lang_selector">
                            <a href="/login?lang=fr" class="lang_link" title="français (France)">
                                <span class="lang_flag opacity_selected">
                                    <asset:image src="logoFr.png"/>
                                </span>
                            </a>
                            <a href="/login?lang=en" class="lang_link" title="English (United Kingdom)">
                                <span class="lang_flag opacity_not_selected">
                                    <asset:image src="logoGb.png"/>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>


            </div>



        </div>
        <div class="brand">
            <div class="container container-condensed">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-9">
                        <a href="http://guce.gouv.ci/?lang=fr">
                            <asset:image src="logoGuce.png" class="img-responsive" alt="Style"/>
                        </a>
                    </div>
                    <div class="col-md-3 test-environment">
                        Environnement de test
                    </div>
                    <div class="pull-right">
                        <a href="http://guce.gouv.ci/?lang=fr">
                            <asset:image src="logo-ci.png" class="img-responsive" style="height:65px"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-default navbar-main" role="navigation">
            <div class="container container-condensed">
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#header_normal" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                    </button>
                </div>
                <div id="header_normal" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="hidenavbar">
                            <a role="button" aria-haspopup="true" class="dropdown-toggle" href="https://applb01.webbfontaine.ci/efem/login/auth#" aria-expanded="false" data-toggle="dropdown">Administrations
                                <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="dropdown dropdown-submenu"><a href="https://applb01.webbfontaine.ci/efem/login/auth#" class="dropdown-toggle" data-toggle="dropdown"><span>Ministères</span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="http://guce.gouv.ci/commerce?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère du Commerce, de l’Industrie et de la Promotion des PME</span></a></li>
                                        <li><a href="http://guce.gouv.ci/finances?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère de l'Economie et des Finances</span></a></li>
                                        <li><a href="http://guce.gouv.ci/transports?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère des Transports</span></a></li>
                                        <li><a href="http://guce.gouv.ci/infrastructures?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère des Infrastructures Économiques</span></a></li>
                                        <li><a href="http://guce.gouv.ci/energie?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère des Mines, du Pétrole et de l’Energie</span></a></li>
                                        <li><a href="http://guce.gouv.ci/sante?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère de la Santé, de l'Hygiène Publique et de la Couverture Maladie Universelle</span></a></li>
                                        <li><a href="http://guce.gouv.ci/resources-animales?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère des Ressources Animales et Halieutiques</span></a></li>
                                        <li><a href="http://guce.gouv.ci/agriculture?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère d'Etat, Ministère de l'Agriculture et du Développement Rural</span></a></li>
                                        <li><a href="http://guce.gouv.ci/eaux-forets?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère des Eaux et Forêts</span></a></li>
                                        <li><a href="http://guce.gouv.ci/industry?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère du Commerce, de l’Industrie et de la Promotion des PME</span></a></li>
                                        <li><a href="http://guce.gouv.ci/culture?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère de la Culture et de l'Industrie des Arts et du Spectacle</span></a></li>
                                        <li><a href="http://guce.gouv.ci/defense?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère d'Etat, Ministère de la Défense</span></a></li>
                                        <li><a href="http://guce.gouv.ci/investment?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère de la Promotion de l'Investissement et du Développement du Secteur Privé</span></a></li>
                                        <li><a href="http://guce.gouv.ci/diplomatie?lang=fr" tabindex="-1" role="menuitem"><span>Le Ministère d'Etat, Ministère des Affaires Etrangères, de l'Intégration Africaine et de la Diaspora</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="http://guce.gouv.ci/banque-centrale?lang=fr" tabindex="-1" role="menuitem"><span>Banque Centrale</span></a></li>
                                <li class="dropdown dropdown-submenu"><a href="https://applb01.webbfontaine.ci/efem/login/auth#" class="dropdown-toggle" data-toggle="dropdown"><span>Directions Générales</span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="http://guce.gouv.ci/douanes?lang=fr" tabindex="-1" role="menuitem"><span>Direction Générale des Douanes</span></a></li>
                                        <li><a href="http://guce.gouv.ci/dgi?lang=fr" tabindex="-1" role="menuitem"><span>Direction Générale des Impôts</span></a></li>
                                    </ul>
                                </li>
                                <li class="dropdown dropdown-submenu"><a href="https://applb01.webbfontaine.ci/efem/login/auth#" class="dropdown-toggle" data-toggle="dropdown"><span>Organismes Nationaux</span></a>
                                    <ul class="dropdown-menu">

                                        <li><a href="http://guce.gouv.ci/ruling-center?lang=fr" tabindex="-1" role="menuitem"><span>Ruling Center</span></a></li>

                                        <li><a href="http://guce.gouv.ci/cci?lang=fr" tabindex="-1" role="menuitem"><span>La Chambre de Commerce et d’Industrie</span></a></li>

                                        <li><a href="http://guce.gouv.ci/cepici?lang=fr" tabindex="-1" role="menuitem"><span>CEPICI</span></a></li>

                                        <li><a href="http://guce.gouv.ci/codinorm?lang=fr" tabindex="-1" role="menuitem"><span>L’Organisme National de Normalisation et de Certification</span></a></li>

                                        <li><a href="http://guce.gouv.ci/bcc?lang=fr" tabindex="-1" role="menuitem"><span>Le Conseil du Café-Cacao</span></a></li>
                                    </ul>
                                </li>
                                <li class="dropdown dropdown-submenu"><a href="https://applb01.webbfontaine.ci/efem/login/auth#" class="dropdown-toggle" data-toggle="dropdown"><span>Ports et offices portuaires</span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="http://guce.gouv.ci/port-abidjan?lang=fr" tabindex="-1" role="menuitem"><span>Port Autonome d'Abidjan</span></a></li>
                                        <li><a href="http://guce.gouv.ci/port-sanpedro?lang=fr" tabindex="-1" role="menuitem"><span>Port Autonome de San Pédro</span></a></li>
                                        <li><a href="http://guce.gouv.ci/oic?lang=fr" tabindex="-1" role="menuitem"><span>Office Ivoirien des Chargeurs (OIC)</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a role="button" aria-haspopup="true" class="dropdown-toggle" href="https://applb01.webbfontaine.ci/efem/login/auth#" aria-expanded="false" data-toggle="dropdown">Pré-Dédouanement
                                <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="https://app3.webbfontaine.ci/elicense" data-trigger="hover" data-toggle="tooltip" title="Créer et soumettre une licence pour approbation par les ministères techniques">e-Licence</a>
                                </li>
                                <li>
                                    <a href="https://app3.webbfontaine.ci/ephyto" data-trigger="hover" data-toggle="tooltip" title="Demander un certificat phytosanitaire pour l’export de produits agricoles">e-Phytosanitaire</a>
                                </li>
                                <li>
                                    <a href="https://app3.webbfontaine.ci/einsurance" data-trigger="hover" data-toggle="tooltip" title="Demander un certificat d&#39;assurance pour l&#39;import ou l&#39;export de marchandises à des fins commerciales ou industrielles.">e-Certificat d'assurance</a>
                                </li>
                                <li>
                                    <a href="https://guce.gouv.ci/coo" data-trigger="hover" data-toggle="tooltip" title="Demander un certificat d&#39;origine pour l&#39;exportation de certaines marchandises.">e-Certificat d'origine</a>
                                </li>
                                <li>
                                    <a href="https://app4.webbfontaine.ci/etimber" data-trigger="hover" data-toggle="tooltip" title="Demander une autorisation d&#39;exportation pour les produits forestiers">Timber</a>
                                </li>
                                <li>
                                    <a href="https://guce.gouv.ci/phyto" data-trigger="hover" data-toggle="tooltip" title="Dématérialisation du processus de délivrance du certificat phytosanitaire pour lexportation des produits agricoles">Certificat Phyto Electronique</a>
                                </li>
                                <li>
                                    <a href="https://applb01.webbfontaine.ci/vw" data-trigger="hover" data-toggle="tooltip" title="Demande de RFCV à partir du DVT">Demande de certificat de valeur</a>
                                </li>
                                <li>
                                    <a href="https://app2.webbfontaine.ci/coc" data-trigger="hover" data-toggle="tooltip" title="Consulter les certificats de conformité">e-Certificat de Conformité</a>
                                </li>
                                <li>
                                    <a href="https://app.webbfontaine.ci/tvf" data-trigger="hover" data-toggle="tooltip" title="Créer et soumettre un DVT (déclaration sommaire) pour domiciliation et approbation par le Ministère du Commerce">Transaction Commerciale</a>
                                </li>
                                <li>
                                    <a href="https://app2.webbfontaine.ci/bsc" data-trigger="hover" data-toggle="tooltip" title="">BSC Intégral</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a role="button" aria-haspopup="true" class="dropdown-toggle" href="https://applb01.webbfontaine.ci/efem/login/auth#" aria-expanded="false" data-toggle="dropdown">Dédouanement
                                <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu" role="menu"> <li>
                                    <a href="https://app3.webbfontaine.ci/urm" data-trigger="hover" data-toggle="tooltip" title="Gestion des risques multi-agence">e-Risque</a>
                                </li>
                                <li>
                                    <a href="https://app2.webbfontaine.ci/esad" data-trigger="hover" data-toggle="tooltip" title="Saisir et vérifier une déclaration en Douane pour stockage ou liquidation directe dans SydoniaWorld (Sydam)">e-DAU</a>
                                </li>
                                <li>
                                    <a href="https://app3.webbfontaine.ci/exemption" data-trigger="hover" data-toggle="tooltip" title="Créer un document d’exemption pour utilisation future dans SydoniaWorld (Sydam)">Exonération</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a role="button" aria-haspopup="true" class="dropdown-toggle" href="https://applb01.webbfontaine.ci/efem/login/auth#" aria-expanded="false" data-toggle="dropdown">Logistique
                                <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="http://guce.gouv.ci/douanes/manifest?lang=fr" data-trigger="hover" data-toggle="tooltip" title="Suivi des manifestes">Suivi manifestes</a>
                                </li>
                                <li>
                                    <a href="https://app2.webbfontaine.ci/manifest" data-trigger="hover" data-toggle="tooltip" title="Télécharger ou saisir un manifeste, titres de transport et dégroupages sur le portail, stockage ou soumission directe pour enregistrement dans SydoniaWorld (Sydam)">e-Manifeste</a>
                                </li>
                                <li>
                                    <a href="https://guce.gouv.ci/evoyage" data-trigger="hover" data-toggle="tooltip" title="Gérer les escales navires">e-Voyage PCS</a>
                                </li>
                                <li>
                                    <a href="https://guce.gouv.ci/pcsmanifest" data-trigger="hover" data-toggle="tooltip" title="">Prise en charge des marchandises</a>
                                </li>
                                <li>
                                    <a href="https://guce.gouv.ci/emovement" data-trigger="hover" data-toggle="tooltip" title="Traçabilité des marchandises">e-Mouvement PCS</a>
                                </li>

                                <li>
                                    <a href="https://guce.gouv.ci/erelease" data-trigger="hover" data-toggle="tooltip" title="">e-Release PCS</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a role="button" aria-haspopup="true" class="dropdown-toggle" href="https://applb01.webbfontaine.ci/efem/login/auth#" aria-expanded="false" data-toggle="dropdown">Finance
                                <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="https://app2.webbfontaine.ci/efem" data-trigger="hover" data-toggle="tooltip" title="Demander un document d&#39;autorisation ou d&#39;engagement de change à la banque et aux FINEX. Déclarer un rapatriement de devises.">e-FOREX</a>
                                </li>
                                <li>
                                    <a href="https://app.webbfontaine.ci/epayment" data-trigger="hover" data-toggle="tooltip" title="Payer les factures liées à certaines transactions commerciales">e-Paiement</a>
                                </li>

                            </ul>
                        </li>
                        <li>
                        </li>
                        <li>

                        </li>

                        <li>

                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a role="button" aria-haspopup="true" class="dropdown-toggle" href="https://applb01.webbfontaine.ci/efem/login/auth#" aria-expanded="false" data-toggle="dropdown">Liens rapides
                                <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://guce.gouv.ci/douanes/tariff?lang=fr" tabindex="-1" role="menuitem"><span>Recherche tarifaire</span></a></li>
                                <li><a href="http://guce.gouv.ci/douanes/rates/search?lang=fr" tabindex="-1" role="menuitem"><span>Taux de change douaniers</span></a></li>
                                <li><a href="http://guce.gouv.ci/help/codification?lang=fr" tabindex="-1" role="menuitem"><span>Perdu dans la codification?</span></a></li>
                                <li><a href="http://guce.gouv.ci/help/codification/list?lang=fr" tabindex="-1" role="menuitem"><span>Liste des tables de référence</span></a></li>
                                <li role="separator" class="divider-vertical">
                                </li><li><a href="http://guce.gouv.ci/tariff/prohibited/importList?lang=fr" tabindex="-1" role="menuitem"><span>Liste des produits prohibés (Import)</span></a></li>
                                <li><a href="http://guce.gouv.ci/tariff/prohibited/exportList?lang=fr" tabindex="-1" role="menuitem"><span>Liste des produits prohibés (Export)</span></a></li>
                                <li><a href="http://guce.gouv.ci/ruling-center/exempted?lang=fr" tabindex="-1" role="menuitem"><span>Liste des produits exemptés</span></a></li>
                                <li><a href="http://guce.gouv.ci/ruling-center?lang=fr" tabindex="-1" role="menuitem"><span>Contrôle documentaire à l'importation</span></a></li>
                                <li><a href="http://guce.gouv.ci/interactive-guide?lang=fr" tabindex="-1" role="menuitem"><span>Guide interactif</span></a></li>
                                <li><a href="http://guce.gouv.ci/tax-calculator?lang=fr" tabindex="-1" role="menuitem"><span>Calcul des taxes</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a role="button" aria-haspopup="true" class="dropdown-toggle" href="https://applb01.webbfontaine.ci/efem/login/auth#" aria-expanded="false" data-toggle="dropdown">Support
                                <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://guce.gouv.ci/support/helpdesk?lang=fr" tabindex="-1" role="menuitem"><span>Help-Desk</span></a></li>
                                <li class="disabled"><a href="https://applb01.webbfontaine.ci/efem/login/auth#" tabindex="-1" role="menuitem"><span>Trouble ticket</span></a></li>
                                <li><a href="http://guce.gouv.ci/support/faq?lang=fr" tabindex="-1" role="menuitem"><span>Foire Aux Questions</span></a></li>
                                <li><a href="http://guce.gouv.ci/support/ministries?lang=fr" tabindex="-1" role="menuitem"><span>Contacts Ministères Techniques</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a role="button" aria-haspopup="true" class="dropdown-toggle" href="https://applb01.webbfontaine.ci/efem/login/auth#" aria-expanded="false" data-toggle="dropdown">Téléchargements
                                <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://guce.gouv.ci/downloads/documentation?type=Formulaires%20de%20demande%20compte%20GUCE&amp;lang=fr" tabindex="-1" role="menuitem"><span>Formulaires de demande compte GUCE</span></a></li>
                                <li><a href="http://guce.gouv.ci/downloads/documentation?type=Documents&amp;lang=fr" tabindex="-1" role="menuitem"><span>Documents</span></a></li>
                                <li><a href="http://guce.gouv.ci/downloads/documentation?type=Proc%C3%A9dures%20Ruling%20Center&amp;lang=fr" tabindex="-1" role="menuitem"><span>Procédures Ruling Center</span></a></li>
                                <li><a href="http://guce.gouv.ci/downloads/documentation?type=Didacticiels&amp;lang=fr" tabindex="-1" role="menuitem"><span>Didacticiels</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

</header>