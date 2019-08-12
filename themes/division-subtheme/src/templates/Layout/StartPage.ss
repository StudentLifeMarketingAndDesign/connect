$Header
<main class="main-content__container" id="main-content__container">

	<!-- Background Image Feature -->
	<% if $BackgroundImage %>
		<% include FeaturedImage %>
	<% end_if %>
	$Breadcrumbs
<% if not $BackgroundImage %>
	<div class="column row">
		<div class="main-content__header">
			<h1>$Title</h1>
		</div>
	</div>
<% end_if %>

$BeforeContent

<div class="row">

	<div class="large-12 column">
		<% loop $Categories %>
			{$Title}: 

			<ul>
				<% loop $Services %>
					<li>$Title</li>
				<% end_loop %>
			</ul>

		<% end_loop %>

	</div>
</div>
$AfterContent


</main>
