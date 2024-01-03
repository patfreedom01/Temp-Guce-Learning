<%@ page import="elearning.AuthentificationService" %>

<head>
%{--
    <style>
        ul li li span ul{
            display: none;
        }
        ul span:active~.lesFormations{
            display: block;
        }

    </style>
--}%

</head>
<div class="menu-item">
    <button class="menu-button"><i class="fa fa-home"></i> Menu </button>
    <div class="sub-menu">
        <ul>
%{--

            <g:if test="${AuthentificationService.isAdmin(request)}">
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller">
                        <g:link controller="${c.logicalPropertyName}">${c.name}</g:link>
                    </li>
                </g:each>
            </g:if>
--}%

            %{--${request.getSession().getAttribute("email")}--}%

            <li class="controller"><g:link controller="home" action="index">ACCUEIL</g:link></li>

            <li>
            <span class="controller">CONSULTER</span>
					<ul class="lesFormations">
						<li class="controller"><g:link controller="consulter" action="prededouanement">MODULES PRE-DEDOUANEMENT</g:link></li>
						<li class="controller"><g:link controller="consulter" action="dedouanement">MODULES DEDOUANEMENT</g:link></li>
						<li class="controller"><g:link controller="consulter" action="logistique">MODULES LOGISTIQUES</g:link></li>
						<li class="controller"><g:link controller="consulter" action="finance">MODULES FINANCE</g:link></li>
					</ul>
				</li>
            <g:if test="${AuthentificationService.isResponsableMep(request) || AuthentificationService.isAdmin(request)}">
                <li class="controller"><g:link controller="module" action="index">GESTION DES MODULES</g:link></li>
            %{--
                                  </g:if>
                                <g:if test="${AuthentificationService.isResponsableMep(request)}">
            --}%
                <li class="controller"><g:link controller="formation" action="index">PLANIFIER FORMATION</g:link></li>
            </g:if>

            <g:if test="${AuthentificationService.isOperateur(request)}">
            %{--
                                </g:if>
                                <g:if test="${AuthentificationService.isOperateur(request)
                                              ||AuthentificationService.isHelpdesk(request)}">
            --}%
                <li class="controller"><g:link controller="demande" action="index">S'INSCRIRE A UNE FORMATION</g:link></li>
            </g:if>

        %{--
                            <g:if test="${AuthentificationService.isHelpdesk(request)}">
                                <li class="controller"><g:link controller="societe" action="index">Societe</g:link></li>
                           </g:if>

                            <g:if test="${AuthentificationService.isHelpdesk(request)}">
                                <li class="controller"><g:link controller="utilisateur" action="index">Utilisateur</g:link></li>
                           </g:if>
        --}%

        %{-- <g:if test="${AuthentificationService.isAdmin(request)}">
             <li class="controller"><g:link controller="utilisateurRole" action="index">Utilisateur Role</g:link></li>
        </g:if>--}%

        </ul>


    </div>
</div>
<div class="menu-login">
    <li class="controller">
        <button class="login"><i class="fa fa-plug"></i><g:link controller="auth" action="logout">Déconnexion</g:link> </button>
    </li>
</div>


