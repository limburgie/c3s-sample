<h3>Get geolocation</h3>
<#assign location = api.query("person").with("name", "Peter").findOne().getGeolocation("location")>
<ul>
	<li>Latitude: ${location.latitude}</li>
	<li>Longitude: ${location.longitude}</li>
</ul>


<h3>Get geolocation if no value</h3>
${api.query("person").with("name", "Sandra").findOne().getGeolocation("location")!"No geolocation!"}