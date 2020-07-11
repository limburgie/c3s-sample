<h3>Get group field</h3>
<#assign items = api.query("person").with("name", "Peter").findOne().getGroup("hobbies")>
<ul>
<#list items as item>
	<li>${item.getText("hobby")}</li>
</#list>
</ul>


<h3>Get group field when no items</h3>
<#assign items = api.query("person").with("name", "Sandra").findOne().getGroup("hobbies")>
<#if !items?has_content>
	There are no items
</#if>