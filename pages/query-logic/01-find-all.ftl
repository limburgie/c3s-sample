<h3>Find all items by type</h3>
<ul>
<#list api.query("person").findAll() as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>


<h3>Find all items if there are no items</h3>
<#if !api.query("empty").findAll()?has_content>
	<p>There are no items</p>
</#if>