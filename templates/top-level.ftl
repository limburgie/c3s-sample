<!doctype html>
<html>
<head>
	<title>${site.name}</title>
</head>
<body>

<ul>
	<#list site.pages as page>
		<li>
			<#if page.children?has_content>
				${page.name}
			<#else>
				<a href="/${page.friendlyUrl}">${page.name}</a>
			</#if>

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

${inserts.body}
</body>
</html>