<h2>Current language</h2>

<p>The current locale is ${request.locale.getDisplayName(request.locale)}.</p>

<h2>Language picker</h2>

<p>${i18n["choose-a-language"]}</p>
<ul>
	<a href="/lang/nl_BE">Nederlands</a>
	<a href="/lang/en_US">English</a>
</ul>

<h2>Format language</h2>

<p>${i18n.format("hello-x-x-x", "Peter", "Mesotten", 33)}</p>

<h2>Get i18n'ed content</h2>

<h3>${api.query("news_item").findOne().getText("title")}</h3>

<h2>Redirect to another i18n'ed site</h2>

<a href="http://www.c3s-contentful.be:8080/lang/nl_BE" target="_blank">Redirect</a>

<h2>Read unicode i18n.properties content</h2>

${i18n['belgium']}