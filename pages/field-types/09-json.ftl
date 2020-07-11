<h3>Get full JSON</h3>
<pre>
${api.query("person").with("name", "Peter").findOne().getJson("attributes")}
</pre>

<h3>Get Attribute from JSON</h3>
<p>Age: <b>${api.query("person").with("name", "Peter").findOne().getJson("attributes").get("age")}</b></p>

<h3>Get JSON if null</h3>
${api.query("person").with("name", "Joren").findOne().getJson("attributes")!"JSON field is empty"}