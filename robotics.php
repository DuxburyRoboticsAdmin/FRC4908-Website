<?php

if ($_SERVER['SERVER_NAME'] == "git.duxburyrobotics.com")
{
    header('Location: http://git.duxburyrobotics.com:81');
}

echo '<!-- '.$module.' -->';

//Are we including camp in the nav?
$camp = false;

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
        <link rel="stylesheet" href="/css/bootcards-desktop.css">

</head>

<body>
<!-- Google tracking -->
    <?php include_once("js/analyticstracking.php") ?>
<!--/Google tracking -->

<nav class="navbar navbar-default" roll="navigation">
    <div class="container-fluid navbar-static-top" id="navfluid"
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" style="position: relative">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigationbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/" class="navbar-brand">Duxbury Robotics</a>
        </div>
        <div class="collapse navbar-collapse" id="navigationbar">

            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Programs <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li id="FIRST"><a href="/FIRST">What is FIRST?</a> </li>
                        <li id="FRC"><a href="/FIRST/FRC">FIRST Robotics Competition</a> </li>
                        <li id="FTC"><a href="/FIRST/FTC">FIRST Tech. Challenge</a> </li>
                        <li id="FLL"><a href="/FIRST/FLL">FIRST Lego League</a> </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sponsor <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li id="sponsors"><a href="/sponsors">Sponsors</a> </li>
                        <li id="sponsorus"><a href="/sponsorus">Sponsor Us</a> </li>
                    </ul>
                </li>
                <!--<li><a class="nav-link" href="/events.php">Events</a></li>-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Contribute <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li id="donate"><a href="/donate">Donate</a></li>
                        <li id="volunteer"><a href="/volunteer">Volunteer</a></li>
                        <li id="amazon"><a href="/amazon">Amazon Wish List</a> </li>
                    </ul>
                </li>
                <li id="contact"><a href="/contact">Contact Us</a> </li>
                <?
                //Shall we include the camp in the nav?

                if($camp || $module == 'camp')
                    include_once('modules/camp_nav.php');

                ?>
            </ul>
        </div>
    </div>
</nav>

<!--
    Content
-->

<?php require_once "modules/$module.php"; ?>

<!--
    Footer
-->

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
<script src="/js/parallax.min.js"></script>
<script src="/js/robotics.js"></script>


</body></html>
