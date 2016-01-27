<?php

$servername = "mysql.duxburyrobotics.com";
$username = "website";
$password = "Second_First4908";
$DBName = "content";
$DBTable = "content"; //testing

$TableMember = "Member";
$MemberFinish = false;
$TableTeamLeader = "TeamLeader";
$TeamLeaderFinish = false;
$TableMentor = "Mentor";
$MentorFinish = false;

$TableStudentAlumni = "StudentAlumni";
$StudentAlumFinish = false;
$TableMentorAlumni = "MentorAlumni";
$MentorAlumFinish = false;

$table = null;

$MembersFile = fopen("members.php", "w");
$TeamLeaderFile = fopen("teamLeaders.php", "w");
$MentorFile = fopen("mentors.php", "w");
$StudentAlumFile = fopen("StudentAlumni.php", "w");
$MentorAlumFile = fopen("MentorAlumni.php", "w");


// Create connection
$conn = new mysqli($servername, $username, $password, $DBName);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else {

    //TODO: Change from echo to fprint.


    ini_set("default_charset", "UTF-8");

    $table = $TableMember;

    $sql = "SELECT ID,Type,Name,Position,Year,Bio,Picture FROM " . $table;
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $count = 0;

        fwrite($MembersFile, '<div class="row">');

        while($row = $result->fetch_assoc()) {

            if ($count == 3){
                fwrite($MembersFile, '</div><div class="row"');
            }

            //ID & start
            fwrite($MembersFile, '<!-- ID:'.$row['ID']. '} Type: '.$row['Type'].'--><div class="col-lg-4">
            <div class="panel panel-default">
            <div class="panel-heading clearfix">');

            //Name
            fwrite($MembersFile, '<h4 class="panel-title" style="text-align: center"><strong>'.$row['Name'].'</strong>');

            //img
            fwrite($MembersFile, '</div><img src="'.$row['Picture'].'" class="img-responsive"/>');

            //Position
            fwrite($MembersFile, '<div class="list-group">
            <div class="list-group-item">
                <h4 class="list-group-item-heading">'.$row['Position'].'</h4>');

            //Year
            fwrite($MembersFile, '<h4 class="list-group-item-heading">'.$row['Year'].'</h4></div>');

            //Bio & end
            fwrite($MembersFile, '<div class="list-group-item">
                <p class="list-group-item-text">'.$row['Bio'].'</p>
                </div>
                </div>
                </div>
                </div>');

            $count++;
            //echo $count;
        }
        //echo $count;
        fclose($MembersFile);
    } else { //error
        echo 'Currently there are no members. (Something went wrong, no rows were found...)';
    }



    /*
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading clearfix">
                <h4 class="panel-title" style="text-align: center"><strong>Kyle Knobloch</strong>
            </div>
            <img src="http://www.teamstudio.com/Portals/218295/images/istock_000001242290small.jpg" class="img-responsive"/>
            <div class="list-group">
                <div class="list-group-item">
                    <h4 class="list-group-item-heading">Lead Webmaster and Marketing</h4>
                    <h4 class="list-group-item-heading">Softmore</h4>
                </div>
                <div class="list-group-item">
                    <p class="list-group-item-text">BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH
                        BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH
                        BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH vvvBLAH BLAH v
                    </p>
                </div>
            </div>
        </div>
    </div>
     */

    //|| !$TeamLeaderFinish || !$MentorFinish || !$StudentAlumFinish || !$MentorAlumFinish



    /*$sql = "SELECT ID,Name FROM " . $DBTable;
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo $row['ID']. ' = ' . $row['Name']. '<br>';

            echo '';

        }
    } else {
        echo '0 results';
    }*/
    echo '<h1>Duxbury Robotics HTML Code Generation.</h1><p>finished.</p>';
}