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
    ini_set("default_charset", "UTF-8");

    while (!$MemberFinish || !$TeamLeaderFinish || !$MentorFinish || !$StudentAlumFinish || !$MentorAlumFinish) {

        if (!$MemberFinish) {
            $table = $TableMember;
            $file = $MembersFile;
            $errorFoundIn = "Members";
            $MemberFinish = true;
        } else if (!$TeamLeaderFinish) {
            $table = $TableTeamLeader;
            $file = $TeamLeaderFile;
            $errorFoundIn = "Team Leaders";
            $TeamLeaderFinish = true;
        } else if (!$MentorFinish) {
            $table = $TableMentor;
            $file = $MentorFile;
            $errorFoundIn = "Mentors";
            $MentorFinish = true;
        } else if (!$MentorAlumFinish) {
            $table = $TableMentorAlumni;
            $file = $MembersFile;
            $errorFoundIn = "Mentor Alumni";
            $MentorAlumFinish = true;
        } else if (!$StudentAlumFinish) {
            $table = $TableStudentAlumni;
            $file = $StudentAlumFile;
            $errorFoundIn = "Student Alumni";
            $StudentAlumFinish = true;
        }

        $sql = "SELECT ID,Type,Name,Position,Year,Bio,Picture FROM " . $table;
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            $count = 0;

            fwrite($file, '<div class="row">');

            while ($row = $result->fetch_assoc()) {

                if ($count == 3) {
                    fwrite($file, '</div><div class="row"');
                }

                //ID & start
                fwrite($file, '<!-- ID:' . $row['ID'] . '} Type: ' . $row['Type'] . '--><div class="col-lg-4">
                               <div class="panel panel-default">
                               <div class="panel-heading clearfix">');

                //Name
                fwrite($file, '<h4 class="panel-title" style="text-align: center"><strong>' . $row['Name'] . '</strong>');

                //img
                fwrite($file, '</div><img src="' . $row['Picture'] . '" class="img-responsive"/>');

                //Position
                fwrite($file, '<div class="list-group">
                               <div class="list-group-item">
                               <h4 class="list-group-item-heading">' . $row['Position'] . '</h4>');

                //Year
                fwrite($file, '<h4 class="list-group-item-heading">' . $row['Year'] . '</h4></div>');

                //Bio & end
                fwrite($file, '<div class="list-group-item">
                               <p class="list-group-item-text">' . $row['Bio'] . '</p>
                               </div>
                               </div>
                               </div>
                               </div>');

                $count++;
                //echo $count; //DEBUG

            }

            //echo $count; //DEBUG
            fclose($file);

        } else { //error
            echo '<p>Currently there are no ' . $errorFoundIn . '. (Something went wrong, no rows were found...)</p><br>';
        }

    }

    echo '<h1>Duxbury Robotics HTML Code Generation.</h1><p>finished. (you can hit the back button now).</p>';
}