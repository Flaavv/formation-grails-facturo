<html>
<head>
    <meta name="layout" content="main"/>
    <title>${fournisseur.code}</title>
</head>
<body>
<h1>${fournisseur.raisonSociale}    <small class="text-muted">${fournisseur.code}</small></h1>
<dl class="row">
    <dt class="col-sm-3">E-mail</dt><dd class="col-sm-9">${fournisseur.email ?: '—'}</dd>
    <dt class="col-sm-3">Actif</dt><dd class="col-sm-9">${fournisseur.actif ? 'Oui' : 'Non'}</dd>
    <dt class="col-sm-3">Créé le</dt><dd class="col-sm-9"><g:formatDate date="${fournisseur.dateCreated}" format="dd/MM/yyyy HH:mm"/></dd>

    <g:if test="${nbreProduitEnRupture > 0}">
    <dt class="col-sm-3">Nombre de produit en rupture de stock</dt><dd class="col-sm-9">${nbreProduitEnRupture}</dd>
    </g:if>
    <g:else>
    <dt class="col-sm-3">Aucun produit en rupture de stock</dt>
    </g:else>



</dl>


</body>
</html>
