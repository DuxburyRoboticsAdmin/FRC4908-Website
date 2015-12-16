<?php
/**
 * Because we can't run stuff on the same port (for some reason!) we're redirecting people here.
 */


$domain = $_SERVER['SERVER_NAME'];
if($domain == 'git.duxburyrobotics.com') {  //Git Lab
    header('Location: http://git.duxburyrobotics.com:81');
}

error_reporting(0);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Duxbury High School Robotics Team">
    <meta name="author" content="@Fredghostkyle for DHS Robotics Team">
    <link rel="icon" href="/favicon.ico">

    <title>Duxbury Robotics</title>


    <link href="/css/bootstrap.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
        .carousel img {
            position: absolute;
            top: 0;
            left: 0;
            min-width: 100%;
            height: 500px;
        }


        .navbar-brand img {
            max-height: 100%;
            height: 70%;
            width: auto;
            margin: 0 auto;
            -o-object-fit: contain;
            object-fit: contain;
        }

        .navbar .dropdown:hover .dropdown-menu {
            display: block;
        }

    </style>

</head>

<!-- nav bar-->
<div id=""></div>
<body>
<div class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"> <img src="/img/DuxburyRoboticsLogo.png"></a><a class="navbar-brand" href="/"> Duxbury Robotics</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/about.php"><span class="glyphicon glyphicon-console"></span> About Us</a></li>
                <li class="dropdown onHover">
                    <a href="" data-toggle="dropdown"><span class="glyphicon glyphicon-film"></span> Media <span class="caret"></span></a>
                    <ul class="dropdown-menu onHover" role="menu">
                        <li><a href="/gallery.php">Gallery</a></li>
                        <li><a href="/videos.php">Videos</a></li>
                        <li><a href="/archives.php">Archives</a></li>
                    </ul>
                </li>
                <li><a href="/sponsors.php"><span class="glyphicon glyphicon-heart-empty"></span> Sponsors</a></li>
                <li class="dropdown onHover">
                    <a href="" data-toggle="dropdown"><span class="glyphicon glyphicon-calendar"></span> Events <span class="caret"></span></a>
                    <ul class="dropdown-menu onHover" role="menu">
                        <li><a href="/events/engineering.php">Engineering Week</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="/events/archives.php">Previous Events</a></li>
                    </ul>
                </li>
                <li><a href="/volunteers.php"><span class="glyphicon glyphicon-user"></span>Volunteers</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="social"><a href="http://twitter.com/DuxburyRobotics"><span class="glyphicons social-twitter"></span></a> </li>
                <li class="social"><a href="http://fb.com/DuxburyRobotics"><span class="glyphicons social-facebook"></span></a></li>
                <li class="social"><a href="http://instagram.com/DuxburyRobotics"><span class="glyphicons social-instagram"></span> </a> </li>
                <li class="social"> <a href="/contact.php"> <span class="glyphicons social-e-mail"></span></a></li>
            </ul>
        </div>
    </div>
</div><!-- /navbar -->

<div class="container">

    <?php require_once "module/$module.php"; ?>

</div>

<!-- footer -->
<div class="container">

    <hr>
    <footer>
        <p class="pull-right">FIRST FRC Team 4908 | <a href="http://admin.duxburyrobotics.com">
                <span class="glyphicon glyphicon-dashboard"></span> Administration</a></p>
        <p> Copyright <?php echo date( 'Y' ); ?> © Duxbury Robotics </p>
    </footer>
    <br>

</div><!-- /.footer -->


<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
