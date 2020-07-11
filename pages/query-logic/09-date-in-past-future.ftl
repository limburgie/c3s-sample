<h3>Get items with date in past</h3>
<ul>
<#list api.query("person").withDateInPast("logintime").findAll() as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>


<h3>Get items with date in future</h3>
<ul>
<#list api.query("person").withDateInFuture("logintime").findAll() as person>
	<li>${person.getText("name")}</li>
</#list>
</ul>