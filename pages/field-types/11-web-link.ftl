<h3>Get web link</h3>
<#assign link = api.query("person").with("name", "Peter").findOne().getWebLink("website")>
<a href="${link}">${link}</a>


<h3>Get web link when empty</h3>
${api.query("person").with("name", "Sandra").findOne().getWebLink("website")!"Link is empty"}