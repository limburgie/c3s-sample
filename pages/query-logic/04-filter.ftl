<h3>Filter results by text value</h3>
${api.query("person").with("name", "Peter").findOne().getText("name")}

<#--
<h3>Filter results by boolean value</h3>
${api.query("person").with("active", "true").findOne().getText("name")}
--#>