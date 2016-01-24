<?php

$servername = "localhost";
$username = "root";
$password = "";
$DBName = "content";
$DBTable = "data";
$i = 0;

// Create connection
$conn = new mysqli($servername, $username, $password, $DBName);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else {
    $sql = "SELECT ID,FullName,Position,Bio,Grade FROM " . $DBTable;
    $result = $conn->query($sql);

}
/*
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo 'id: ' . $row['ID']. ' - Name: ' . $row['FullName']. ' | ' . $row['Position']. ' | ' . $row['Bio']. ' | ' . $row['Grade']. '<br>';

        echo '';

    }
} else {
    echo '0 results';
}
*/


/**
 * New Idea
 *
 * Have a task run after editing Data on the backend.
 * That task would then re-create the HTML needed for the Alumni and meet the team.
 *
 * I like that idea more.
 */

?>

<section class="section parallax parallax-sponsor" id="home">
    <div class="container">
        <h1>The Team</h1>
    </div>
</section>

<section class="section content" id="sponsorus">
    <div class="container">



        <?php
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                if ($i == 3) { //echo end div
                    echo '</div>';

                    $i = 0;
                }

                if ($i == 0) { //echo start div
                    echo '<div class="row">';
                }


                //echo the card if we don't echo a card we loose a person which is really bad.
                //TODO: orginise based off the type of each person.

                //id (hidden)
                echo '<!--' . $row['ID'] . '-->';

                //init card w/header - name
                echo '';

                //img

                //position and Year


                //bio & end card.

                $i = $i + 1;





                echo 'id: ' . $row['ID']. ' - Name: ' . $row['FullName']. ' | ' . $row['Position']. ' | ' . $row['Bio']. ' | ' . $row['Grade']. '<br>';

                echo '';

            }
        } else {
            echo '0 results';
        }


        ?>




        <iframe src="/modules/crontasks/includeWithTest.php"></iframe>
        <h2>I</h2>

        <!--


        <div class="row">
            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix">
                        <h3 class="panel-title pull-left">Base Card Title</h3>
                        <a class="btn btn-primary pull-right" href="#">
                            <i class="fa fa-pencil"></i>
                            Edit
                        </a>
                    </div>
                    <div class="list-group">
                        <div class="list-group-item">
                            <p class="list-group-item-text">Name</p>
                            <h4 class="list-group-item-heading">John Smith</h4>
                        </div>
                        <div class="list-group-item">
                            <p class="list-group-item-text">Occupation</p>
                            <h4 class="list-group-item-heading">Web Developer</h4>
                        </div>
                        <div class="list-group-item">
                            <p class="list-group-item-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mauris tellus, vehicula ut tellus id, suscipit dapibus tortor. Integer viverra turpis ac fringilla hendrerit. Sed faucibus posuere felis et pellentesque. Cras varius tortor vitae molestie tempor. Proin ut viverra elit, ac gravida tortor.</p>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <small>Built with Bootcards - Base Card</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix">
                        <h3 class="panel-title pull-left">Base Card Title</h3>
                        <a class="btn btn-primary pull-right" href="#">
                            <i class="fa fa-pencil"></i>
                            Edit
                        </a>
                    </div>
                    <div class="list-group">
                        <div class="list-group-item">
                            <p class="list-group-item-text">Name</p>
                            <h4 class="list-group-item-heading">John Smith</h4>
                        </div>
                        <div class="list-group-item">
                            <p class="list-group-item-text">Occupation</p>
                            <h4 class="list-group-item-heading">Web Developer</h4>
                        </div>
                        <div class="list-group-item">
                            <p class="list-group-item-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mauris tellus, vehicula ut tellus id, suscipit dapibus tortor. Integer viverra turpis ac fringilla hendrerit. Sed faucibus posuere felis et pellentesque. Cras varius tortor vitae molestie tempor. Proin ut viverra elit, ac gravida tortor.</p>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <small>Built with Bootcards - Base Card</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix">
                        <h4 class="panel-title" style="text-align: center"><strong>Kyle Knobloch</strong></h4>

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
        </div> -->
    </div>

</section>
<?php
//Close the connection.
$conn->close();
?>







