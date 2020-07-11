<h3>Get image field</h3>
<#assign image = api.query("person").with("name", "Peter").findOne().getImage("avatar")>
<img src="${image.url}" alt="${image.alt}" width="200"/>
<p>Alternative text: <code>{${image.alt}}</code></p>


<h3>Get image field when empty</h3>
${api.query("person").with("name", "Sandra").findOne().getImage("avatar")!"Image is empty"}