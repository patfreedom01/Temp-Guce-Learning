<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'formation.label', default: 'Formation')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
      <g:render template="formulaire" model="[formation: formation, modules: modules]"/>
</body>
</html>
