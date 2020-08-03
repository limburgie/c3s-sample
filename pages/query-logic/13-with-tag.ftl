<h3>Search by tag that exists</h3>
<#assign results = api.query("person").withTag("waterkleurtjes").findAll()>
<ul>
    <#list results as person>
        <li>${person.getText("name")}</li>
    </#list>
</ul>

<h3>Search by tag with different case that exists</h3>
<#assign results = api.query("person").withTag("Waterkleurtjes").findAll()>
<ul>
    <#list results as person>
        <li>${person.getText("name")}</li>
    </#list>
</ul>

<h3>Search by tag that does not exist</h3>
<#assign results = api.query("person").withTag("asdasd").findAll()>
<p>${results?size} results</p>