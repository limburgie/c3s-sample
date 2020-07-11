<h3>Limit the number of items</h3>
<ul>
<#list api.query("person").findAll(2) as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>


<h3>Get 2nd page of items</h3>
<ul>
<#list api.query("person").findAll(2, 2) as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>