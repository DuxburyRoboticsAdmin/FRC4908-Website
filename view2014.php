<?php
$con=mysqli_connect("localhost","root","","DuxburyRobotics");
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM Team");

echo "<table border='1'>
<tr>
<th>Number</th>
<th>Rookie Year</th>
<th>Name</th>
<th>Nick name</th>
<th>Location</th>
</tr>";

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