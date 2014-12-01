<?php
$con=mysqli_connect("localhost","root","","DuxburyRobotics");
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM team");

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
    <link href="../../../../css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="../../../../css/carousel.css" rel="stylesheet">
    <link href="../../../../css/glyphicons.css" rel="stylesheet">

</head>
    
<!-- NAVBAR
================================================== -->
<div id=""></div>
  <body>
        <div class="navbar navbar-default navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../../../../"><!--<img src="img/dragon.png" width="20px">-->  Duxbury Robotics</a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="../../../../team/">Our Team</a></li>
                <li class="dropdown">
                  <a href="../../../../media/">Media <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="../../../../media/#Gallery">Gallery</a></li>
                        <li><a href="../../../../media/#Videos">Videos</a></li>
                        <li><a href="../../../../media/#archives">Archives</a></li>
                    </ul>
                </li>
                <li><a href="sponsors/"><span class="glyphicon glyphicon-heart-empty"></span> Sponsors</a></li>
<!--                <li><a href="blog/">Blog</a></li>-->
              </ul>
               <ul class="nav navbar-nav navbar-right">
                <li class="social"><a href="http://twitter.com/DuxburyRobotics"><span class="glyphicons social-twitter"></span></a> </li>
                <li class="social"><a href="http://fb.com/DuxburyRobotics"><span class="glyphicons social-facebook"></span></a></li>
                <li class="social"><a href="http://instagram.com/DuxburyRobotics"><span class="glyphicons social-instagram"></span> </a> </li>
                <li class="social"> <a href="../../../../contact/"> <span class="glyphicons social-e-mail"></span></a></li>
               </ul>
            </div>
          </div>
        </div>
      
    
    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">
        <table class="table table-hover">
    
<tr>
<th>Number</th>
<th>Rookie Year</th>
<th>Name</th>
<th>Nick name</th>
<th>Location</th>
</tr>
<?php
while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['number'] . "</td>";
echo "<td>" . $row['year_rookie'] . "</td>";
echo "<td>" . $row['name'] . "</td>";
echo "<td>" . $row['nickname'] . "</td>";
echo "<td>" . $row['location'] . "</td>";
echo "</tr>";
}
echo "</table>";

mysqli_close($con);
?>    
        </table>

      <!-- FOOTER -->
    
      <footer>
        <p class="pull-right">FIRST Team 4908 | <a href="../../../../admin/">Admin</a> | <a href="../../../../admin/resource/">Resources</a></p>
        <p>Copyright © Duxbury Robotics </p>
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