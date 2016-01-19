<?php

if ($_SERVER['SERVER_NAME'] == "git.duxburyrobotics.com")
{
    header('Location: http://git.duxburyrobotics.com:81');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Duxbury Robotics</title>

    <link rel="icon" href="/favicon.ico">

    <!--
        CSS
    -->

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link rel="stylesheet" href="/css/bootstrapunited.css">
        <link rel="stylesheet" href="/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="/css/robotics.css">

</head>

<body>
<!-- Google tracking -->
    <?php include_once("js/analyticstracking.php") ?>
<!--/Google tracking -->

<nav class="navbar navbar-default">
    <div class="container-fluid  navbar-static-top">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">

            <a href="/" class="navbar-brand">Duxbury Robotics</a>
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Team <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <!--<li><a href="/team.php">Meet The Team</a></li>
                        <li><a href="/alumni.php">Alumni</a></li>
                        <li><a href="/robots.php">Robots</a> </li>
                        <li><a href="/gallery.php">Gallery</a> </li>-->
                        <li><a href="/about.php">About</a> </li>
                        <li><a href="/contact.php">Contact Us</a> </li>
                    </ul>
                </li>
                <li><a class="nav-link" href="/sponsor.php">Sponsor</a></li>
                <!--<li><a class="nav-link" href="/events.php">Events</a></li>-->
                <li class="dropdown">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Contribute <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/donate.php">Donate</a></li>
                        <li><a href="/volunteer.php">Volunteer</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="http://blog.duxburyrobotics.com">Blog</a></li>
            </ul>
        </div>
    </div>
</nav>

<?php require_once "modules/$module.php"; ?>

    <footer>
        <hr />
        <div class="container">
            <p class="">Copyright &copy; Duxbury Robotics 2013-2016 | <a href="http://admin.duxburyrobotics.com/"><span class="mdi mdi-speedometer"></span> Administration</a> </p>
            <p></p>
        </div>
    </footer>

    <!--
        JavaScript
    -->
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/robotics.js"></script>


</body>

</html>
