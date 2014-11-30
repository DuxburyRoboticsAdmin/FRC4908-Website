<?php

/*** begin the session ***/
session_start();

if(!isset($_SESSION['user_id']))
{
    header('Location: ../../?NoLog=1');
}
else
{
    try
    {
        /*** connect to database ***/
        /*** mysql hostname ***/
        $mysql_hostname = 'localhost';

        /*** mysql username ***/
        $mysql_username = 'root';

        /*** mysql password ***/
        $mysql_password = '';

        /*** database name ***/
        $mysql_dbname = 'DuxburyRobotics';


        /*** select the users name from the database ***/
        $dbh = new PDO("mysql:host=$mysql_hostname;dbname=$mysql_dbname", $mysql_username, $mysql_password);
        /*** $message = a message saying we have connected ***/

        /*** set the error mode to excptions ***/
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        /*** prepare the insert ***/
        $stmt = $dbh->prepare("SELECT phpro_username FROM resources WHERE phpro_user_id = :phpro_user_id");

        /*** bind the parameters ***/
        $stmt->bindParam(':phpro_user_id', $_SESSION['user_id'], PDO::PARAM_INT);

        /*** execute the prepared statement ***/
        $stmt->execute();

        /*** check for a result ***/
        $phpro_username = $stmt->fetchColumn();

        /*** if we have no something is wrong ***/
        if($phpro_username == false)
        {
            header('Location: ../../?NoLog=1');
        }
        else
        {
            $message = 'Welcome '.$phpro_username;
        }
    }
    catch (Exception $e)
    {
        /*** if we are here, something is wrong in the database ***/
        header('Location: ../../?DB=1');
    }
}

?>
<!-- for use with OUSTIDE the root yet only 1 folder in -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Duxbury High School Robotics Team">
    <meta name="author" content="@Fredghostkyle for DHS Robitics Team">
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">

    <title>Duxbury Robotics</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../../css/bootstrap.css" rel="stylesheet">
        <link href="../../../../css/glyphicons.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<div id=""></div>
  <body>
        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../../../"><span class="glyphicon glyphicon-dashboard"></span> Administration </a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="dropdown">
                  <a href="../../../../">Main Website <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="../../../../team/">Our Team</a></li>
                        <li><a href="../../../../media/">Media <span class="caret"></span></a></li>
                        <li><a href="../../../../sponsors/"><span class="glyphicon glyphicon-heart-empty"></span> Sponsors</a></li>
                        <li><a href="../../../../blog/">Blog</a></li>
                        <li><a href="http://twitter.com/DuxburyRobotics"><span class="glyphicons social-twitter"></span></a></li>
                        <li><a href="http://fb.com/DuxburyRobotics"><span class="glyphicons social-facebook"></span></a></li>
                        <li><a href="http://instagram.com/DuxburyRobotics"><span class="glyphicons social-instagram"></span></a></li>
                        <li><a href="../../../../contact/"><span class="glyphicons social-e-mail"></span></a></li>
                    </ul>
                </li>
                <li><a href="../../../">Admin</a></li>
                <li class="active"><a href="../">Resources</a><li>
              </ul>
              <ul class="nav navbar-nav navbar-right navbar-form">
                <div class="form-group">
                  <li><a href="../../../logout.php"><button href="../logout.php" class="btn btn-danger btn-sm">LOGOUT</button></a></li>  
                </div>
              </ul>
            </div>
          </div>
        </div>
<div class="container">
<div role="container tabpanel">

          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#view" aria-controls="home" role="tab" data-toggle="tab">Files <span class="label label-info">Beta</span></a></li>
            <!--<li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>-->
          </ul>

          <!-- Tab panes -->
          <div class="tab-content">
    
            <div role="tabpanel" class="tab-pane active" id="view">
                
                <br>Viewing files is currently in <span class="label label-info">Beta</span><br>
                <br>
<?php
error_reporting(0);
 if ($handle = opendir('.')) {
   while (false !== ($file = readdir($handle)))
      {
          if ($file != "." && $file != ".." && $file != ".DS_Store" && $file != "fundrasing" && $file != "socialmedia" && $file != "sponsorship" && $file != "index.php" )
	  {
          	$thelist .= '<li class="list-group-item">&emsp;<a href="'.$file.'">'.$file.'</a></li>';
          }
       }
  closedir($handle);
  }    
?>
                <ul class="list-group">
                    <li class="list-group-item">Documents</li>
                    <?php echo $thelist; ?>
                </ul>
              
              </div>
          </div>
        </div>
      </div>
      
    <div class="container"> 
     <hr>
      <footer>
        <p class="pull-right">FIRST Team 4908 </p>
        <p>Copyright © Duxbury Robotics</p>
      </footer>

    </div><!-- /.container -->
      
      <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../../../js/jquery.min.js"></script>
    <script src="../../../../js/bootstrap.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../../../js/ie10-viewport-bug-workaround.js"></script>
      
    </body>
  </html>
