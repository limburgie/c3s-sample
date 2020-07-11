<h3>Get rich text html</h3>
${api.query("person").with("name", "Peter").findOne().getRichText("bio").html}



<h3>Get shortened text</h3>
${api.query("person").with("name", "Peter").findOne().getRichText("bio").abbreviate(10)}



<h3>Get text value if empty</h3>
${api.query("person").with("name", "Joren").findOne().getRichText("bio")!"There is no bio"}