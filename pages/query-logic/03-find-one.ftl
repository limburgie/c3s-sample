<h3>Get only first item</h3>
${api.query("person").findOne().getText("name")}


<h3>Get only first item if no items</h3>
<#if !api.query("empty").findOne()??>
	<p>There are no items</p>
</#if>