<?php /* Smarty version 2.6.25, created on 2014-09-29 02:15:13
         compiled from /Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'asset', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 6, false),array('function', 't', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 15, false),array('function', 'link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 20, false),array('function', 'categories_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 32, false),array('function', 'discussions_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 33, false),array('function', 'activity_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 34, false),array('function', 'module', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 38, false),array('function', 'profile_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 41, false),array('function', 'inbox_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 42, false),array('function', 'bookmarks_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 43, false),array('function', 'dashboard_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 44, false),array('function', 'signinout_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 45, false),array('function', 'signin_link', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 49, false),array('function', 'breadcrumbs', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 60, false),array('function', 'searchbox', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 62, false),array('function', 'event', '/Applications/XAMPP/xamppfiles/htdocs/DHSRobotics/forums/themes/Bootstrap/views/default.master.tpl', 84, false),)), $this); ?>
<!DOCTYPE html>
<html lang="en" class="sticky-footer-html">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php echo smarty_function_asset(array('name' => 'Head'), $this);?>

  </head>
  <body id="<?php echo $this->_tpl_vars['BodyID']; ?>
" class="<?php echo $this->_tpl_vars['BodyClass']; ?>
 sticky-footer-body">

    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
      <div class="container">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only"><?php echo smarty_function_t(array('c' => 'Toggle navigation'), $this);?>
</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<?php echo smarty_function_link(array('path' => 'home'), $this);?>
">DHS Robotics</a>
        </div>

        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-inverse">
            <li><a href="../#">Home</a></li>
            <li><a href="../#about">About</a></li>
            <li><a href="../#contact">Contact</a></li>
            <li><a href="../#sponsors">Sponsors</a></li>
            <li class="active"><a href="<?php echo smarty_function_link(array('path' => 'home'), $this);?>
">Forums</a></li>
              </ul>
          <!--<ul class="nav navbar-nav">
            <?php echo smarty_function_categories_link(array(), $this);?>

            <?php echo smarty_function_discussions_link(array(), $this);?>

            <?php echo smarty_function_activity_link(array(), $this);?>

          </ul>-->
          <?php if ($this->_tpl_vars['User']['SignedIn']): ?>
            <ul class="nav navbar-nav navbar-inverse navbar-right hidden-xs">
              <?php echo smarty_function_module(array('name' => 'MeModule'), $this);?>

            </ul>
            <ul class="nav navbar-nav navbar-inverse navbar-right visible-xs">
              <?php echo smarty_function_profile_link(array(), $this);?>

              <?php echo smarty_function_inbox_link(array(), $this);?>

              <?php echo smarty_function_bookmarks_link(array(), $this);?>

              <?php echo smarty_function_dashboard_link(array(), $this);?>

              <?php echo smarty_function_signinout_link(array(), $this);?>

            </ul>
          <?php else: ?>
            <ul class="nav navbar-nav navbar-inverse navbar-right">
              <?php echo smarty_function_signin_link(array(), $this);?>

            </ul>
          <?php endif; ?>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <section class="container">
      <div class="row">

        <main class="page-content" role="main">
          <?php echo smarty_function_breadcrumbs(array(), $this);?>

          <?php if (InSection ( array ( 'CategoryList' , 'CategoryDiscussionList' , 'DiscussionList' ) )): ?>
            <div class="well search-form"><?php echo smarty_function_searchbox(array(), $this);?>
</div>
          <?php endif; ?>
          <?php echo smarty_function_asset(array('name' => 'Content'), $this);?>

        </main>

        <aside class="page-sidebar" role="complementary">
          <?php echo smarty_function_asset(array('name' => 'Panel'), $this);?>

        </aside>

      </div>
    </section>

    <footer class="page-footer sticky-footer">
      <div class="container">
        <div class="clearfix">
          <p class="pull-left"><?php echo smarty_function_t(array('c' => 'Copyright'), $this);?>
 &copy; DHS Robotics Team</p>
          <p class="pull-right">FIRST Team 4908 | <a href="#">Back to top</a></p>
        </div>
        <?php echo smarty_function_asset(array('name' => 'Foot'), $this);?>

      </div>
    </footer>

    <?php echo smarty_function_event(array('name' => 'AfterBody'), $this);?>


  </body>
</html>