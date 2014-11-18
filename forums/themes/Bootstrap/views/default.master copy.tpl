<!DOCTYPE html>
<html lang="en" class="sticky-footer-html">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {asset name="Head"}
  </head>
  <body id="{$BodyID}" class="{$BodyClass} sticky-footer-body">

    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
      <div class="container">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">{t c="Toggle navigation"}</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{link path="home"}">DHS Robotics</a>
        </div>

        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-inverse">
            <li><a href="../#">Home</a></li>
            <li><a href="../#about">About</a></li>
            <li><a href="../#contact">Contact</a></li>
            <li><a href="../#sponsors">Sponsors</a></li>
            <li class="active"><a href="{link path="home"}">Forums</a></li>
              </ul>
          <!--<ul class="nav navbar-nav">
            {categories_link}
            {discussions_link}
            {activity_link}
          </ul>-->
          {if $User.SignedIn}
            <ul class="nav navbar-nav navbar-inverse navbar-right hidden-xs">
              {module name="MeModule"}
            </ul>
            <ul class="nav navbar-nav navbar-inverse navbar-right visible-xs">
              {profile_link}
              {inbox_link}
              {bookmarks_link}
              {dashboard_link}
              {signinout_link}
            </ul>
          {else}
            <ul class="nav navbar-nav navbar-inverse navbar-right">
              {signin_link}
            </ul>
          {/if}
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <section class="container">
      <div class="row">

        <main class="page-content" role="main">
          {breadcrumbs}
          {if InSection(array("CategoryList", "CategoryDiscussionList", "DiscussionList"))}
            <div class="well search-form">{searchbox}</div>
          {/if}
          {asset name="Content"}
        </main>

        <aside class="page-sidebar" role="complementary">
          {asset name="Panel"}
        </aside>

      </div>
    </section>

    <footer class="page-footer sticky-footer">
      <div class="container">
        <div class="clearfix">
          <p class="pull-left">{t c="Copyright"} &copy; DHS Robotics Team</p>
          <p class="pull-right">FIRST Team 4908 | <a href="#">Back to top</a></p>
        </div>
        {asset name="Foot"}
      </div>
    </footer>

    {event name="AfterBody"}

  </body>
</html>
