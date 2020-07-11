<h3>Get text value</h3>
${api.query("person").findOne().getText("name")}


<h3>Get text value if empty</h3>
${api.query("person").findOne().getText("nickname")!"There is no nickname"}