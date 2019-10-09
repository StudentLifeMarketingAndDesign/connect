$Header
<div class="row-fluid">
	<div <% if BackgroundImage %>style="background-image: url($BackgroundImage.URL)" <% end_if %> class="column one <% if not BackgroundImage %>one--default<% end_if %>">
		<%-- <img src="{$ThemeDir}/dist/images/md_color.png"> --%>
		<h1 class="start-heading">$Title</h1>
	</div>
</div>

<% if $MainButtonText && $MainButtonLink %>
<div class="row">
	<div class="column large-4 large-centered">

		
		<button class="launch__button"><p class="activecollab__title"><a class="launch__link" href="$MainButtonLink">$MainButtonText</a></p></button>
	</div>
</div>
<% end_if %>


<%-- <% loop $Categories %>
<div class="row">
	<div class="column start__category-title">
		<h2>$Title</h2>
	</div>

</div>



<div class="row large-up-3">
	<% loop $Services %>
	<div class="column">
		<div class="start-tile">
			<h2 class="start-tile__heading"><a class="start-tile__heading-link" href="$Link">$Title</a></h2> 
			<div class="start-tile__description">$Content</div> 
		</div>
	</div>
	<% end_loop %>
</div>

<% end_loop %> --%>
	<div class="row">
		<div class="column large-6">
			<div class="start-tile start-tile--big">
				<h3 class="start-tile__news-title"><a href="https://www.google.com">Bringing Together Art and Food</a></h3> <p class="start-tile__description">By Megan Yoder</p>
			</div>
		</div>

		<div class="column large-6">
			<div class="start-tile start-tile--news1">
				<h3 class="start-tile__news-title"><a href="https://www.google.com">Looking Back on Leadership: Sia Tortorelis</a></h3> <p class="start-tile__description">By Ellysa Woods</p>
			</div>
			<div class="start-tile start-tile--news2">
				<h3 class="start-tile__news-title"><a href="https://www.google.com">Looking Back on Leadership: Gage Miskimen</a></h3> <p class="start-tile__description">By Allaria Bartlett-Gray</p></div>
			<div class="start-tile start-tile--news3">
				<h3 class="start-tile__news-title"><a href="https://www.google.com">Looking Back on Leadership: Hira Mustafa</a></h3> <p class="start-tile__description">By Allaria Bartlett-Gray</p></div>
			</div>
		</div>

	<div class="row">
		<div class="column large-centered"> 
			<a class="button start__button" href="https://www.google.com">See all the latest news</a>
		</div>
	</div>

<%-- <div class="row large-up-4">
	<div class="column">
		<div class="start__bottom">
			<a class="link__title" href="https://otis.imu.uiowa.edu">Portfolio Process</a> 
		</div>
	</div>
	
	<div class="column">
		<div class="start__bottom">
			<a class="link__title" href="https://otis.imu.uiowa.edu">Wiki</a> 
		</div>
	</div>
	
	<div class="column">
		<div class="start__bottom">
			<a class="link__title" href="https://otis.imu.uiowa.edu">Slack</a> 
		</div>
	
	</div>
	
	<div class="column">
		<div class="start__bottom">
		
		<a class="link__title" href="https://otis.imu.uiowa.edu">Gitstart</a>
	</div>
		
 </div>
	
	<div class="column">
		<div class="start__bottom">
		
		<a class="link__title" href="https://otis.imu.uiowa.edu">Facebook Group (Current Staff)</a> 
	</div>
	
</div>

<div class="column">
		<div class="start__bottom">
		
		<a class="link__title" href="https://otis.imu.uiowa.edu">LinkedIn</a> 
	</div>
	
</div>

<div class="column">
		<div class="start__bottom">
		
		<a class="link__title" href="https://otis.imu.uiowa.edu">M+D Website</a> 
	</div>
	
</div>

<div class="column">
		<div class="start__bottom">
		
		<a class="link__title" href="https://otis.imu.uiowa.edu">Flickr</a> 
	</div>
	
</div>
	--%>
</div> 