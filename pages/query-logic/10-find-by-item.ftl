<h3>Find by content item</h3>
<#assign joren = api.query("person").with("name", "Joren").findOne()>
${api.query("person").with("child", joren).findOne().getText("name")}