<h3>Get and format date without timestamp</h3>
<#assign birthdate = api.query("person").with("name", "Peter").findOne().getDate("birthdate")>
<p>Without locale: ${birthdate.format("dd/MM/yyyy")}</p>
<p>With default locale: ${birthdate.format("EEEE d MMMM yyyy")}</p>
<p>With locale: ${birthdate.format("EEEE d MMMM yyyy").withLocale("nl_BE")}</p>


<h3>Get and format date with timestamp, without timezone (Contentful only)</h3>
<#assign logintime = api.query("person").with("name", "Peter").findOne().getDate("logintime")>
<p>Without locale: ${logintime.format("dd/MM/yyyy HH:mm")}</p>
<p>With locale: ${logintime.format("EEEE d MMMM yyyy 'om' HH'u'mm").withLocale("nl_BE")}</p>
<p>With timezone: ${logintime.format("EEEE d MMMM yyyy 'om' HH'u'mm").withTimeZone("America/Sao_Paulo")}</p>


<h3>Get and format date with timestamp, with timezone</h3>
<#assign logintimezoned = api.query("person").with("name", "Peter").findOne().getDate("logintimezoned")>
<p>Without locale: ${logintimezoned.format("dd/MM/yyyy HH:mm")}</p>
<p>With locale: ${logintimezoned.format("EEEE d MMMM yyyy 'om' HH'u'mm").withLocale("nl_BE")}</p>
<p>With timezone: ${logintimezoned.format("EEEE d MMMM yyyy 'om' HH'u'mm").withTimeZone("America/Sao_Paulo")}</p>


<h3>Get date when empty</h3>
${api.query("person").with("name", "Joren").findOne().getDate("birthdate")!"There is no birth date"}