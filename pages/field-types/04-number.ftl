<h3>Get integer</h3>
<#assign age = api.query("person").with("name", "Peter").findOne().getNumber("age")>
<p>${age.format("0")}</p>
<p>${age.format("00.00")}</p>


<h3>Get decimal</h3>
<#assign length = api.query("person").with("name", "Peter").findOne().getNumber("length")>
<p>${length.format("0")}</p>
<p>${length.format("00.00")}</p>


<h3>Format decimal according to locale</h3>
<p>${length.format("#.00").withLocale("nl_BE")}</p>


<h3>Get number without value</h3>
<p>${api.query("person").with("name", "Joren").findOne().getNumber("age")!"There is no age"}</p>
<p>${api.query("person").with("name", "Joren").findOne().getNumber("length")!"There is no length"}</p>