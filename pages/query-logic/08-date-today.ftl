<h3>Get only items with today's date</h3>

<#if api.query("person").withDateToday("today").findOne()??>
	${api.query("person").withDateToday("today").findOne().getText("name")}
<#else>
	<p>No item found</p>
</#if>