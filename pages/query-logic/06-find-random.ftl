<h3>Find all items and return in random order</h3>
<ul>
<#list api.query("person").findRandom() as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>


<h3>Find all items and return in random order, limited</h3>
<ul>
<#list api.query("person").findRandom(2) as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>