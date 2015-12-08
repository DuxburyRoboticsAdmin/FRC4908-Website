<?php
$domain = $_SERVER['SERVER_NAME'];
if($domain == 'git.duxburyrobotics.com') {
    header('Location: http://git.duxburyrobotics.com:81');
}

error_reporting(0); //Cuz' fuck em.
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Duxbury High School Robotics Team">
    <meta name="author" content="@Fredghostkyle for DHS Robitics Team">
    <link rel="icon" href="/favicon.ico">

    <title>Duxbury Robotics</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
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
    </style>

</head>

<!-- NAVBAR
================================================== -->
<div id=""></div>
<body><!--
    <div class="navbar-wrapper">
      <div class="container">-->
<div class="navbar navbar-inverse navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../../"><span class="glyphicon glyphicon-dashboard"></span> Administration </a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="../../../">Main Website <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="team.php">Our Team</a></li>
                        <li><a href="media.php">Media <span class="caret"></span></a></li>
                        <li><a href="sponsors.php"><span class="glyphicon glyphicon-heart-empty"></span> Sponsors</a></li>
                        <li><a href="engineering.php"><span class="glyphicon glyphicon-apple"></span> Engineering Week</a> </li>
                        <!--<li><a href="../../../blog/">Blog</a></li>-->
                        <li><a href="http://twitter.com/DuxburyRobotics"><span class="glyphicons social-twitter"></span></a></li>
                        <li><a href="http://fb.com/DuxburyRobotics"><span class="glyphicons social-facebook"></span></a></li>
                        <li><a href="http://instagram.com/DuxburyRobotics"><span class="glyphicons social-instagram"></span></a></li>
                        <li><a href="contact.php"><span class="glyphicons social-e-mail"></span></a></li>
                    </ul>
                </li>
                <li><a href="schoology.php"><span class="glyphicon glyphicon-briefcase"></span> Schoology</a></li>
                <li><a href="scouting.php"><span class="glyphicon glyphicon-map-marker"></span> Scouting</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container">

    <?php require_once "module/$module.php"; ?>

    <!-- FOOTER -->


    <hr>
    <footer>
        <p class="pull-right">FIRST Team 4908 | <a href="/schoology">Schoology</a></p>
        <p>Copyright © Duxbury Robotics </p>
    </footer>

</div><!-- /.container -->


<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/js/ie10-viewport-bug-workaround.js"></script>


</body>
</html>