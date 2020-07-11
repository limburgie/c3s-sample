<h3>Get reference</h3>
${api.query("person").with("name", "Peter").findOne().getReference("child").getText("name")}


<h3>Get reference if it is missing</h3>
${api.query("person").with("name", "Joren").findOne().getReference("child")!"There is no reference"}