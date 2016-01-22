<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "content";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else {
    echo "Connected successfully";
}

$sql = "SELECT personid, firstname, middlename, lastname FROM testing";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["personid"]. " - Name: " . $row["firstname"]. " " . $row["middlename"]. " " . $row["lastname"]. "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
