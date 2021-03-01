
$Header


<div class="hero <% if $SubHeading || $ButtonTextOne %>hero--content<% end_if %> hero--$Position">
    <div class="hero__imgwrap hero__imgwrap--$Size hero__imgwrap--$Background"
        <% if $Background = "image" %>
            <% if $HeroImage %>
                data-interchange="[$HeroImage.FocusFill(768,400).URL, small], [$HeroImage.FocusFill(1024,400).URL, medium], [$HeroImage.FocusFill(1700,638).URL, large]" style="background-position: {$HeroImage.PercentageX}% {$HeroImage.PercentageY}%"
            <% else %>
                style="background-image:url({$ThemeDir}/dist/images/hero-placeholder.jpg)"
            <% end_if %>
        <% end_if %>
    >
        <% if $Background = "video" %>
            <button onclick="playPause()" id="play-pause" class="pause" role="button" aria-pressed="false" aria-label="pause">
                <span class="show-for-sr">Pause</span>
            </button>
            <video autoplay muted loop id="hero__video">
                <source src="$HeroVideo.URL" type="video/mp4">
            </video>
        <% end_if %>

    </div>

    <% if $SubHeading || $ButtonUrlOne || $ButtonUrlTwo || $ButtonUrlThree %>
        <div class="hero__contentwrap grid-container">
      
       

            <div class="hero__content">
                <% if $SubHeading %>
                    <h2>$SubHeading</h2>
                <% end_if %>

<form id="TopicSearchForm_SearchForm" action="{$AbsoluteBaseURL}/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded" class="topic-search-form topic-search-form--homepage topic-search-form--large">
        <div class="topic-search-form__fields">
        
        
            <input type="text" name="Search" class="text topic-search-form__input topic-search-form__input--large form-group--no-label" id="TopicSearchForm_SearchForm_Search" placeholder="Search for entries on this website" title="Search for entries">
        
        
            <button type="submit" name="action_results" value="Search" class="action topic-search-form__search-button topic-search-form__search-button--large" id="TopicSearchForm_SearchForm_action_results">
        <svg class="svg-inline--fa fa-search fa-w-16 fa-lg site-search-button" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg><!-- <i class="fa fa-lg fa-search site-search-button" aria-hidden="true"></i> -->
        <span>Search</span>
        
    </button>
        
        </div>
</form>

                <% if $ButtonUrlOne %>
                    <a href="$ButtonUrlOne" class="button">$ButtonTextOne <i class="fas fa-arrow-right"></i></a>
                <% end_if %>
                <% if $ButtonUrlTwo %>
                    <a href="$ButtonUrlTwo" class="button">$ButtonTextTwo <i class="fas fa-arrow-right"></i></a>
                <% end_if %>
                <% if $ButtonUrlThree %>
                    <a href="$ButtonUrlThree" class="button">$ButtonTextThree <i class="fas fa-arrow-right"></i></a>
                <% end_if %>
            </div>



        </div>
    <% end_if %>




</div>


$BeforeContent

<!-- Feature Sections -->
<% if $NewHomePageHeroFeatures %>
    <div class="homefeatures <% if $DarkerFeatureBackground %>homefeatures--darker-bg<% end_if %>">
    <% loop NewHomePageHeroFeatures %>
            <div class="homefeatures__feature">
                <div class="grid-container">
                    <div class="grid-x align-middle">
                        <% if $Image %>
                            <% with $Image %>
                                <div class="cell small-12 medium-7 <% if $Up.Even %>medium-order-2<% end_if %>">
                                    <img src="$FocusFill(800,500).URL" alt="$Title" loading="lazy" width="800" height="500">
                                </div>
                            <% end_with %>
                        <% end_if %>
                        <div class="cell small-12 medium-5 <% if $Even %>medium-order-1<% end_if %>">
                            <div class="homefeatures__content">
                            <h3 style="margin-top:0;">$Title </h3>
                                $Content
                                <% if $ButtonText %>
                                    <% if $ExternalLink %>
                                        <a href="$ExternalLink" target="_blank" class="button warning">$ButtonText <i class="fas fa-arrow-right"></i></a>
                                    <% else %>
                                        <a href="$AssociatedPage.Link" class="button warning">$ButtonText <i class="fas fa-arrow-right"></i></a>
                                    <% end_if %>
                                <% end_if  %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <% end_loop %>
    </div>
<% end_if %>


$AfterContent
