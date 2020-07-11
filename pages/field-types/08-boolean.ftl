<h3>Get boolean value if true</h3>
${api.query("person").with("name", "Peter").findOne().getBoolean("active")?c}

<h3>Get boolean value if false</h3>
${api.query("person").with("name", "Sandra").findOne().getBoolean("active")?c}

<h3>Get boolean value if empty</h3>
${api.query("person").with("name", "Joren").findOne().getBoolean("active")!"Field is empty"}