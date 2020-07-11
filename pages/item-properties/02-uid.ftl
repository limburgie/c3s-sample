<h3>Item UID</h3>
${api.query("person").with("name", "Peter").findOne().uid}


<h3>Item UID if empty</h3>
${api.query("person").with("name", "Joren").findOne().uid!"UID is empty"}


<h3>Item UID if no UID field</h3>
${api.query("missing").findOne().uid!"There is no UID"}