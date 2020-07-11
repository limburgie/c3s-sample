<h3>Default locale and timezone</h3>
<ul>
	<li>Created: ${api.query("person").findOne().getCreated("d MMMM yyyy HH:mm")}</li>
	<li>Modified: ${api.query("person").findOne().getModified("d MMMM yyyy HH:mm")}</li>
</ul>


<h3>Non-default locale</h3>
<ul>
	<li>Created: ${api.query("person").findOne().getCreated("d MMMM yyyy HH:mm").withLocale("nl_BE")}</li>
	<li>Modified: ${api.query("person").findOne().getModified("d MMMM yyyy HH:mm").withLocale("nl_BE")}</li>
</ul>


<h3>Non-default timezone</h3>
<ul>
	<li>Created: ${api.query("person").findOne().getCreated("d MMMM yyyy HH:mm").withTimeZone("America/Sao_Paulo")}</li>
	<li>Modified: ${api.query("person").findOne().getModified("d MMMM yyyy HH:mm").withTimeZone("America/Sao_Paulo")}</li>
</ul>