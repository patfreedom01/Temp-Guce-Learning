

<%@ page import="elearning.AuthentificationService" %>

<div style="position : absolute; top: 22px; margin: 10px;">
    <g:link controller="home" action="index" ><asset:image src="gucefavicon.png" style="height:20px; "/> Guce-Learning</g:link>




    %{--    <g:if test="${AuthentificationService.isResponsableMep(request)}">--}%
    <div class="panel panel-default panel-condensed mt-10 panel-border">
        <div class="panel-heading" id="ResponsableMep" role="tab">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#left" href="https://guce.gouv.ci/#left_ResponsableMep" aria-expanded="true" aria-controls="ResponsableMep">SERVICE MEP</a>
            </h4>
        </div>
        <div id="left_ResponsableMep" class="panel-collapse collapse" role="tabpanel" aria-labelledby="ResponsableMep">
            <div class="panel-body">
                <ul class="nav nav-pills nav-stacked">
                    <div class="list-group-item panel panel-default panel-condensed ">
                        <g:link controller="formation" action="index">FORMATION</g:link>
                    </div>
                    <div class="list-group-item panel panel-default panel-condensed ">
%{--                        <g:link controller="demande" action="index">DEMANDE   </g:link>--}%
                        <g:link controller="demande" action="tableauMep">DEMANDE   </g:link>
                        <g:if test="${new elearning.Demande().findAllWhere(typePartrnaire : "Ministere Technique")}" >
                            <span class="top-0 start-100 translate-middle badge rounded-pill bg-danger " >
                                ${new elearning.Demande().findAllWhere(status : 'En attente').size()+
                                        new elearning.Demande().findAllWhere(status : 'En cours').size() }
                            </span>
                        </g:if>
                    </div>
                    <div class="list-group-item panel panel-default panel-condensed ">
%{--                        <g:link controller="inscription" action="index">INSCRIPTION</g:link>--}%
                        <g:link controller="inscription" action="tableauMep">INSCRIPTION</g:link>
                        <g:if test="${new elearning.Inscription().findAllWhere(typePartrnaire : "Ministere Technique")}" >
                            <span class="top-0 start-100 translate-middle badge rounded-pill bg-danger " >
                                ${new elearning.Inscription().findAllWhere(status : 'En attente').size()+
                                        new elearning.Inscription().findAllWhere(status : 'En cours').size() }
                            </span>
                        </g:if>
                    </div>
                </ul>
            </div>
        </div>
    </div>
%{--    </g:if>--}%



%{--    <g:if test="${AuthentificationService.isHelpdesk(request)}">--}%
    <div class="panel panel-default panel-condensed mt-10 panel-border">
        <div class="panel-heading" id="Helpdesk" role="tab">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#left" href="https://guce.gouv.ci/#left_Helpdesk" aria-expanded="true" aria-controls="Helpdesk">SERVICE HELPDESK</a>
            </h4>
        </div>
        <div id="left_Helpdesk" class="panel-collapse collapse" role="tabpanel" aria-labelledby="Helpdesk">
            <div class="panel-body">
                <ul class="nav nav-pills nav-stacked">
                    <div class="list-group-item panel panel-default panel-condensed ">
                        <g:link controller="formation" action="index">FORMATION</g:link>
                    </div>
                    <div class="list-group-item panel panel-default panel-condensed ">
%{--                        <g:link controller="demande" action="index">DEMANDE   </g:link>--}%
                        <g:link controller="demande" action="tableauHelpDk">DEMANDE   </g:link>
                            <g:if test="${new elearning.Demande().findAllWhere(typePartrnaire : "Operateur Economique")}" >
                                <span class="top-0 start-100 translate-middle badge rounded-pill bg-danger " >
                                        ${new elearning.Demande().findAllWhere(status : 'En attente').size()+
                                        new elearning.Demande().findAllWhere(status : 'En cours').size() }
                                </span>
                            </g:if>
                    </div>
                    <div class="list-group-item panel panel-default panel-condensed ">
%{--                        <g:link controller="inscription" action="index">INSCRIPTION</g:link>--}%
                        <g:link controller="inscription" action="tableauHelpDk">INSCRIPTION</g:link>
                        <g:if test="${new elearning.Inscription().findAllWhere(typePartrnaire : "Operateur Economique")}" >
                            <span class="top-0 start-100 translate-middle badge rounded-pill bg-danger " >
                                ${new elearning.Inscription().findAllWhere(status : 'En attente').size()+
                                        new elearning.Inscription().findAllWhere(status : 'En cours').size() }
                            </span>
                        </g:if>
                    </div>
                </ul>
            </div>
        </div>
    </div>
%{--    </g:if>--}%


%{--    <g:if test="${AuthentificationService.isOperateur(request)}">--}%
         <div class="panel panel-default panel-condensed mt-10 panel-border" >
            <div class="panel-heading" id="Operateur" role="tab">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#left" href="https://guce.gouv.ci/#left_Operateur" aria-expanded="false" aria-controls="Operateur">MENU <span style="font-size: 12px">(chez les opérateurs)</span></a>
                </h4>
            </div>

             <div id="left_Operateur" class="panel-collapse collapse" role="tabpanel" aria-labelledby="Operateur">
                <div class="panel-body">
                    <ul class="nav nav-pills nav-stacked">
                        <div class="list-group-item panel panel-default panel-condensed ">
                            <g:link controller="home" action="tableauDebord">ACCUEIL </g:link>
                            <g:if test="${new elearning.Demande().findAllWhere(status : 'Planifiée').size() != 0}" >
                                <span class="top-0 start-100 translate-middle badge rounded-pill "  style ="font-size: 8px">
                                   Action réquise
                                </span>
                            </g:if>
                        </div>
                        <div class="list-group-item panel panel-default panel-condensed ">
                            <g:link controller="demande" action="index">DEMANDE</g:link>
                            <span class="top-0 start-100 translate-middle badge rounded-pill bg-danger " >
                                ${new elearning.Demande().findAllWhere(status : "En cours").size()?: 0}
                            </span>
                        </div>
                        <div class="list-group-item panel panel-default panel-condensed ">
                            <g:link controller="inscription" action="index">INSCRIPTION</g:link>
                            <span class="top-0 start-100 translate-middle badge rounded-pill bg-danger " >
                                ${new elearning.Inscription().findAllWhere(status: "En cours").size()?: 0}
                            </span>
                        </div>

                    </ul>
                </div>
            </div>
        </div>
%{--    </g:if>--}%

%{--    <g:if test="${AuthentificationService.isAdmin(request) }">--}%
        <div class="panel panel-default panel-condensed mt-10 panel-border">
            <div class="panel-heading" id="superAdmin" role="tab">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#left" href="https://guce.gouv.ci/#left_superAdmin" aria-expanded="true" aria-controls="superAdmin">ADMINISTRATION</a>
                </h4>
            </div>
            <div id="left_superAdmin" class="panel-collapse collapse" role="tabpanel" aria-labelledby="superAdmin">
                <div class="panel-body">
                    <ul class="nav nav-pills nav-stacked">
                        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                            <div class="list-group-item panel panel-default panel-condensed ">
                                <g:link controller="${c.logicalPropertyName}">${c.name}</g:link>
                            </div>
                        </g:each>
                    </ul>
                </div>
            </div>
        </div>

%{--    </g:if>--}%
</div>
