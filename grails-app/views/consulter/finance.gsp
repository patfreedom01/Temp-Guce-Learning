<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 20/11/2023
  Time: 20:02
--%>



<g:applyLayout name="main">
    <div class="col-sm-12" id="">
        <h1 style="color: #ff8000; font-weight : 500; font-size: 2em; padding: 10px 20px;">MODULES FINANCE</h1>
        <h3 style="margin-left: 22px;font-size: 1.7em;">Ces modules permettent la gestion des changes de devises conformément à la réglementation de la BCEAO relatives aux relations financières avec l’extérieures et la collecte en ligne des redevances liées aux procédures et formalités administratives pour le compte de l’état ou des structures bénéficiaires.</h3>

        <div class="leWrapper">
            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-1" >
                <label for="tab-1" class="tab-1">
                    <span>E-FOREX</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <li>Délivrance des Autorisation de change (AC) pour le règlement des factures fournisseurs à l’importation.</li>
                    <li>Délivrance des Engagements de change (EC) et Attestations d’exportation à l’exportation.</li>
                    <li>Déclaration de Rapatriement des recettes d’exportation ou de préfinancement d’une exportation.</li>
                    <li>Déclaration des Cessions des devises rapatriées à la BCEAO.</li>
                    <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
                </div>
            </div>
            <div class="parent-tab">
                <input type="checkbox" name="tab" id="tab-2" >
                <label for="tab-2" class="tab-2">
                    <span>E-PAIEMENT</span>
                    <div class="icon"><i class="fas fa-plus"></i></div>
                </label>
                <div class="content">
                    <br>C’est un module transversal qui permettra à terme aux importateurs/exportateurs et aux déclarants de payer en ligne les factures des frais locaux déterminés par d’autres modules, notamment les factures des frais liées à certaines Autorisations Préalables d’Importation (API), aux primes d’assurance, aux droits et taxes en douane, etc.</br>
                    <br>Une première phase pilote a eu lieu et a permis de payer certaines des déclarations douanières des entreprise Bolloré, Dikan Transit et MOVIS par virement bancaire avec succès.</br>
                    <br>A ce jour, les moyens de paiement implémentés sont :</br>
                    <li>Virement bancaire compte à compte avec ECOBANK et BNI</li>
                    <li>Mobile Money avec WAVE.</li>
                    <br>Une seconde phase pilote est en cours pour le paiement des APIs des produits chimiques via WAVE.</br>
                    <br>En ce qui concerne, les virements bancaires, un courrier de demande d’accord a été adressé à la DGD afin de démarrer une nouvelle phase pilote avec la banque ECOBANK et deux déclarants en douane.</br>
                    <h4 class="inscrire"><g:link controller="sinscrire" action="index">S'inscrire</g:link></h4>
                </div>
            </div>
        </div>
    </div>
</g:applyLayout>

