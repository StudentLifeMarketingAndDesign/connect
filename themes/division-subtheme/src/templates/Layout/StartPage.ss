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


<% loop $Categories %>
	<% if $Services %>
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
	<% end_if %>
<% end_loop %>
		<div class="row">
			<div class="column start__category-title">
				<h2>Recent News</h2>
			</div>

		</div>
		<div class="row">
			<% loop NewsPosts.Limit(1) %>
			<div class="column large-6">
				<div class="start-tile start-tile--big" style="background-image: url($FeaturedImageURL)">
					<h3 class="start-tile__news-title"><a href="$Link">$Title</a></h3> <p class="start-tile__description"><% if $Authors %>
				<em class="byline__by">By </em>
				<% end_if %>
				<% loop $Authors %>
					<% if not $First && not $Last %>, <% end_if %>
					<% if not $First && $Last %><span class="byline__and"> and </span><% end_if %>

						<a href="$Link" class="byline__author">
						$Name.XML
					</a>
				<% end_loop %>
		            <% if not $Authors && not $StoryBy %><em class="byline__on">Posted on</em> <% else %><span class="byline__on">on </span><% end_if %><time datetime="$PublishDate.format(c)" itemprop="datePublished">$PublishDate.format("MMMM d, y")</time> <% if $PhotosBy %><em class="blogmeta__media">Media by</em> <% if $PhotosByEmail %><a href="mailto:$PhotosByEmail">$PhotosBy</a><% else %>$PhotosBy<% end_if %><% end_if %></p>
				</div>
			</div>
			<% end_loop %>
			<div class="column large-6">
				<% loop $NewsPosts.Limit(3,1) %>
				<div class="start-tile" style="background-image: url($FeaturedImageURL)">
					<h3 class="start-tile__news-title"><a href="$Link">$Title</a></h3> <p class="start-tile__description"><% if $Authors %>
				<em class="byline__by">By </em>
				<% end_if %>
				<% loop $Authors %>
					<% if not $First && not $Last %>, <% end_if %>
					<% if not $First && $Last %><span class="byline__and"> and </span><% end_if %>

						<a href="$Link" class="byline__author">
						$Name.XML
					</a>
				<% end_loop %>
		            <% if not $Authors && not $StoryBy %><em class="byline__on">Posted on</em> <% else %><span class="byline__on">on </span><% end_if %><time datetime="$PublishDate.format(c)" itemprop="datePublished">$PublishDate.format("MMMM d, y")</time> <% if $PhotosBy %><em class="blogmeta__media">Media by</em> <% if $PhotosByEmail %><a href="mailto:$PhotosByEmail">$PhotosBy</a><% else %>$PhotosBy<% end_if %><% end_if %></p>
				</div>
				<% end_loop %>
			</div>
		</div>


	<div class="row">
		<div class="column large-centered"> 
			<a class="button start__button" href="https://studentlife.uiowa.edu/news">See all the latest news</a>
		</div>
	</div>


</div> 