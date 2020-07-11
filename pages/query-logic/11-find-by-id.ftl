<h3>Find content item by ID</h3>
<#assign id = api.query("person").with("name", "Peter").findOne().id>
${api.findById(id).getText("name")}

<h3>Find content item by ID if ID does not exist</h3>
${api.findById("nonexisting")!"No item found"}