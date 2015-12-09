<?php
$con=mysqli_connect("localhost","duxrobof_team","Second_First4908","duxrobof_2016");
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM teams");

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
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">

    <title>Duxbury Robotics</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
    <link href="css/glyphicons.css" rel="stylesheet">

</head>
    
<!-- NAVBAR
================================================== -->
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
              <a class="navbar-brand" href="/schoology"><span class="glyphicon glyphicon-dashboard"></span> Administration </a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="dropdown">
                  <a href="/">Main Website <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/team">Our Team</a></li>
                        <li><a href="/media">Media <span class="caret"></span></a></li>
                        <li><a href="/sponsors"><span class="glyphicon glyphicon-heart-empty"></span> Sponsors</a></li>
                        <li><a href="/engineering"><span class="glyphicon glyphicon-apple"></span> Engineering Week</a> </li>
                        <!--<li><a href="../../../blog/">Blog</a></li>-->
                        <li><a href="http://twitter.com/DuxburyRobotics"><span class="glyphicons social-twitter"></span></a></li>
                        <li><a href="http://fb.com/DuxburyRobotics"><span class="glyphicons social-facebook"></span></a></li>
                        <li><a href="http://instagram.com/DuxburyRobotics"><span class="glyphicons social-instagram"></span></a></li>
                        <li><a href="/contact"><span class="glyphicons social-e-mail"></span></a></li>
                    </ul>
                </li>
                <li><a href="../schoology"><span class="glyphicon glyphicon-briefcase"></span> Schoology</a></li>
                <li><a href="../scouting"><span class="glyphicon glyphicon-map-marker"></span> Scouting</a></li>
                <li class="dropdown">
                 <a><span class="glyphicon glyphicon-th-list"></span> Team Lists <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="active"><a href="/view2016.php">2016</a></li>
                    <li><a href="/view2015.php">2015</a></li>
                    <!-- <li><a href="/view2014.php">2014</a></li> -->
                  </ul>
                </li>
                </ul>
            </div>
          </div>
        </div>
      
    
    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">
        <center><h2>2016 FRC Teams List</h2>
        <p>A dash (--) indicated a team that is inactive, a team this is going to be active or a team that has minimal data for it. All data is curtesy of <a href="http://thebluealliance.com/teams">The Blue Alliance</a>. They're awesome, check them out!</p></center>    
            <table class="table table-hover">
                <tr>
                <th>Number</th>
                <th>Name</th>
                <th>Location</th>
                </tr>
                    <?php
                    while($row = mysqli_fetch_array($result))
                    {
                    echo "<tr>";
                    echo "<td>" . $row['COL 1'] . "</a></td>";
                    echo "<td><a href='http://thebluealliance.com/team/" . $row['COL 1'] . "' target='_blank'>" . $row['COL 2'] . "</td>";
                    echo "<td>" . $row['COL 3'] . "</td>";
                    echo "</tr>";
                    }
                    echo "</table>";

                    mysqli_close($con);
                    ?> 
            </table>
        <br>   
        <p>Last DB Update, Mon, Sep 27, 2015</p>

      <!-- FOOTER -->
    
      <footer>
          <p class="pull-right">FIRST Team 4908 | <a href="../schoology">Schoology</a></p>
          <p>Copyright © Duxbury Robotics</p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>

  

</body>
</html>