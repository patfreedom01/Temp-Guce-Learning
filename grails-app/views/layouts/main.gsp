<!DOCTYPE html>
<html lang="fr">
<g:render template="/layouts/head"/>


<asset:stylesheet src="home-core.css"/>
<asset:stylesheet src="wf-sys-info.css"/>
<asset:stylesheet src="homeInfoBanner.css"/>
<asset:stylesheet src="wfTagLibsResources.css"/>
<body>
<g:render template="/layouts/header"/>

    <div class="container container-condensed">
        <div class="row ">
            <div class="col-md-2">
                <input type="hidden" name="informationListSize" value="5" id="informationListSize">
                <g:render template="/layouts/sidebar"/>
            </div>
            <div class="col-md-9">
                <g:layoutBody />
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>

    <g:render template="/layouts/footer"/>
</body>
</html>




