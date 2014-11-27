<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">

    <title>Duxbury Robotics | Resources</title>

    <!-- Bootstrap core CSS -->
    <link href="../../css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../css/login.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <form class="form-signin" role="form" action="login.php" method="POST">
        <center>
            <h2 class="form-signin-heading">Resource Sign In</h2>
            <h5><a href="mailto:kyleknobloch@duxbury.k12.ma.us?subject=Robotics Resource Password&body=YOU MUST USE YOUR SCHOOL EMAIL AND PROVE THAT YOU'RE WITH THE ROBOTICS TEAM.">Username/password help</a></h5>
            
<?php

if(isset($_GET["logout"])) {
    //header('Location: ./?upload=1');
	echo '<div class="alert alert-success" role="alert"><center><strong>You\'re now logged out. </strong></center></div>';
}
if(isset($_GET["DB"])) {
    //header('Location: ./?noUpload=1');
	echo '<div class="alert alert-danger" role="alert"><center><strong>OH NO!</strong> We had a problem :( Tell <a href="mailto:kyleknobloch@duxbury.k12.ma.us?subject=DB Down">Kyle</a> please! </center></div>';
}
if(isset($_GET["failed"])) {
    //header('Location: ./?exists=1');
	echo '<div class="alert alert-danger" role="alert"><center><strong>OH NO!</strong> Please check your username and password. Both are case sensetive and try again. Tell <a href="mailto:kyleknobloch@duxbury.k12.ma.us?subject=Failure">Kyle</a> if you have more problems.</center></div>';
}
if(isset($_GET["check"])) {
    //header('location: ./?nosubmit=1');
	echo '<div class="alert alert-danger" role="alert"><center><strong>OH NO!</strong> Please check your username and password. Both are case sensetive! </center></div>';
}

?>
            
        </center>
        <label for="inputEmail" class="sr-only">Username</label>
        <input type="username" name="phpro_username" class="form-control" placeholder="Username" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="phpro_password" class="form-control" placeholder="Password" required="">
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <br>
        &emsp;<a href="../../" title="Are you lost?"> ← Head back to the main website</a> 
      </form>
    </div> <!-- /container -->
</body></html>