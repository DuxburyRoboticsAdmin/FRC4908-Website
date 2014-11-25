<?php

$admin = 'Admin';
$adminPass = '12345Dog';


if($_POST["username"] = $admin && $_POST["password"] = $adminPass) {
    //cookie(set);
}
else {
    header ('Location: ../');
}
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
    <link href="../../css/bootstrap.css" rel="stylesheet">
        <link href="../../css/glyphicons.css" rel="stylesheet">

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
              <a class="navbar-brand" href="./"><span class="glyphicon glyphicon-dashboard"></span> Administration </a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="dropdown">
                  <a href="../../">Main Website <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="../../team/">Our Team</a></li>
                        <li><a href="../../history/">History</a></li>
                        <li><a href="../../media/">Media <span class="caret"></span></a></li>
                        <li><a href="../../sponsors/"><span class="glyphicon glyphicon-heart-empty"></span> Sponsors</a></li>
                        <li><a href="../../blog/">Blog</a></li>
                        <li><a href="http://twitter.com/DuxburyRobotics"><span class="glyphicons social-twitter"></span></a></li>
                        <li><a href="http://fb.com/DuxburyRobotics"><span class="glyphicons social-facebook"></span></a></li>
                        <li><a href="http://instagram.com/DuxburyRobotics"><span class="glyphicons social-instagram"></span></a></li>
                        <li><a href="../../contact/"><span class="glyphicons social-e-mail"></span></a></li>
                    </ul>
                </li>
                <li class="active"><a href="./">Admin</a></li>
                  <li><a href="../resources/">Resources</a></li>
              </ul>
            </div>
          </div>
        </div>
    <div class="container">
        <h1 class="">Administration Pannel</h1>
        <br>
        <div role="tabpanel">

          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#upload" aria-controls="home" role="tab" data-toggle="tab">Upload Files</a></li>
            <li role="presentation"><a href="#remove" aria-controls="profile" role="tab" data-toggle="tab">Remove files</a></li>
            <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
          </ul>

          <!-- Tab panes -->
          <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="upload">

<br>
<form role="form" action="file.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
    <label>Page To Upload To: </label>
    <select type="select" class="form-control" name="dir" >
        <option value="mech">Mechanical</option>
        <option value="mech/cad">&emsp;Mechanical CAD</option>
        <option value="mech/man">&emsp;Manufacturing</option>
        <option value="mech/str">&emsp;Stategy</option>
        <option value="elc">Electrical/Programming</option>
        <option value="elc/cad">&emsp;Electrical CAD</option>
        <option value="elc/prg">&emsp;Programming</option>
        <option value="elc/asm">&emsp;Assembly</option>
        <option value="biz">Business</option>
        <option value="biz/spn">&emsp;Sponsorship</option>
        <option value="biz/fnd">&emsp;Fundraising</option>
        <option value="biz/sme">&emsp;Social Media</option>
        <option value="doc">Documents</option>
      </select>
  </div>
  <div class="form-group">
    <label>File to Upload</label>
    <input type="file" class="form-control" name="fileToUpload" id="fileToUpload">
    <p class="help-block">This is case sensetive! Double check the file name before uploading! </p>
  </div>
  <button type="submit" class="btn btn-default" value="Upload Image" name="submit">Submit</button>
</form>     

            </div>
            <div role="tabpanel" class="tab-pane" id="remove">&emsp;Removing files is not necesarly working yet. Contact <a href="mailto:kyleknobloch@duxbury.k12.ma.us?subject=Remove Files">Kyle</a> to remove files. </div>
            <div role="tabpanel" class="tab-pane" id="settings">Changing password: </div>
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
    <script src="../../js/jquery.min.js"></script>
    <script src="../../js/bootstrap.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript" src="../../js/jquery.html5uploader.min.js"></script>
      
    </body>
  </html>