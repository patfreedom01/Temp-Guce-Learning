<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
<g:render template="/layouts/head"/>
%{-- <asset:stylesheet src="pageAccueil.css"/> --}%
<asset:stylesheet src="style.css"/>
<head>
    <meta name="layout" content="main" />
</head>

<body>



<section id="zone-titre">
    <center><h1> %{--<g:meta name="info.app.name"/>--}% </h1></center>
</section>
<div id="completePage" class="row">
    <div class="menu-vertical col-sm-2">
    </div>
    <div class="accueil">
      <g:render template="/layouts/accueil"/>
    </div>
</div>
</body>
</html>