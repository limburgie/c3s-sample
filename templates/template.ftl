<!doctype html>
<html>
<head>
	<title>${site.name}</title>
</head>
<body>
<ul>
	<#list site.pages as page>
		<li>
			<a href="/${page.friendlyUrl}">${page.name}</a>
			<#list page.children>
				<ul>
					<#items as subpage>
						<li>
							<a href="/${subpage.friendlyUrl}">${subpage.name}</a>
						</li>
					</#items>
				</ul>
			</#list>
		</li>
	</#list>
</ul>

<h2>${request.page.name}</h2>

${inserts.body}

</body>
</html>