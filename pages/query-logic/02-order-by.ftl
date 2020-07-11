<h3>Order items by text field</h3>
<ul>
<#list api.query("person").orderByAsc("name").findAll() as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>


<h3>Reversely order items by text field</h3>
<ul>
<#list api.query("person").orderByDesc("name").findAll() as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>


<h3>Order by multiple fields (Prismic only)</h3>
<ul>
<#list api.query("person").orderByAsc("index").orderByAsc("name").findAll() as person>
	<li>${person.getText("name")} (${person.getNumber("index").format("0")})</li>
</#list>
</ul>