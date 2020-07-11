<h3>Get asset and its properties</h3>
<#assign resume = api.query("person").with("name", "Peter").findOne().getAsset("resume")>
<a href="${resume.url}">${resume.url}</a>
<ul>
	<li>Extension: ${resume.extension}</li>
	<li>File size: ${resume.size?c}</li>
	<li>Type: ${resume.type}</li>
	<li>Filename: ${resume.filename}</li>
</ul>


<h3>Get asset link if it is missing</h3>
${api.query("person").with("name", "Joren").findOne().getAsset("resume")!"There is no document"}