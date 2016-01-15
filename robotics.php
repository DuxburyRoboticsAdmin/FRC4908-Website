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

        <link rel="stylesheet" href="/css/robotics.css">
        <link rel="stylesheet" href="/css/bootstrapv4.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,700,700italic,500,500italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="/css/materialdesignicons.min.css">

</head>

<body>

    <nav class="navbar navbar-default" rel="navigation">
        <a class="navbar-brand" href="/">Duxbury Robotics</a>
        <ul class="nav navbar-nav pull-md-right">
            <li class="dropdown nav-item">
                <a href="" data-toggle="dropdown" class="nav-link">Team <span class="mdi mdi-plus-circle-outline"></span></a>
                <ul class="dropdown-menu onHover" role="menu">
                    <!--<li><a href="/team.php">Meet The Team</a></li>
                    <li><a href="/alumni.php">Alumni</a></li>
                    <li><a href="/robots.php">Robots</a> </li>
                    <li><a href="/gallery.php">Gallery</a> </li>-->
                    <li><a href="/about.php">About</a> </li>
                    <li><a href="/contact.php">Contact Us</a> </li>
                </ul>
            </li>
            <li class="nav-item"><a class="nav-link" href="/sponsor.php">Sponsor</a></li>
            <!--<li class="nav-item"><a class="nav-link" href="events.php">Events</a></li>-->
            <li class="dropdown nav-item">
                <a href="" data-toggle="dropdown" class="nav-link">Contribute <span class="mdi mdi-plus-circle-outline"></span></a>
                <ul class="dropdown-menu onHover" role="menu">
                    <li><a href="/volunteer.php">Volunteer</a></li>
                    <li><a href="/donate.php">Donate </a></li>
                </ul>
            </li>
            <li class="nav-item"><a class="nav-link" href="http://blog.duxburyrobotics.com/">Blog</a></li>
        </ul>
    </nav>


<?php require_once "modules/$module.php"; ?>

    <footer>
        <hr />
        <div class="container">
            <p class="text-right">Copyright &copy; Duxbury Robotics 2013-2016 | <a href="http://admin.duxburyrobotics.com/"><span class="mdi mdi-speedometer"></span> Administration</a> </p>
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
