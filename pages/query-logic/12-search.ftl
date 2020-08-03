<h3>Search by keyword that exists</h3>
<#assign results = api.query("person").search("waterkleurtjes").findAll()>
<ul>
    <#list results as person>
        <li>${person.getText("name")}</li>
    </#list>
</ul>

<h3>Search by keyword that does not exist</h3>
<#assign results = api.query("person").search("asdasd").findAll()>
<p>${results?size} results</p>