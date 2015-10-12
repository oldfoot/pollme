<?php
error_reporting(E_ALL);
echo "<h1>Start Automation Scripts</h1>\n";
if ($_SERVER['SERVER_NAME'] == "localhost") {		
	$wb="http://".$_SERVER['SERVER_NAME']."/quiz/";
	$dr="c:/xampp/htdocs/quiz/";
	$database_hostname="localhost";
	$database_port="3306";
	$database_user="bonzerzprdquiz";
	$database_password="bonzerzprdquiz";
	$database_name="bonzerzprdquiz";
	$database_prefix="bonzerzprdquiz.";
}
else {
	$wb="http://bonzerz.com/quiz";	
	$dr="/var/chroot/home/content/28/10991028/html/bonzerz/quiz";
	$database_hostname="bonzerzprdquiz.db.10991028.hostedresource.com";
	$database_port="3306";
	$database_user="bonzerzprdquiz";
	$database_password="a8VXVoEdd9XO!";
	$database_name="bonzerzprdquiz";
	$database_prefix="bonzerzprdquiz.";
}
$conn = mysqli_connect($database_hostname,$database_user,$database_password,$database_name,$database_port) or die(mysqli_error($conn));
echo "OK - Connected to mysql<br />\n";

$result = mysqli_query($conn,"SELECT UserLogin FROM core_usermaster WHERE UserID = 1") or die(mysqli_error($conn));
while ($row = mysqli_fetch_array($result)) {
	echo "OK - able to fetch row of data - ".$row['UserLogin']. "<br />\n";
}

$result = mysqli_query($conn,"UPDATE core_usermaster SET 	LoginCount = LoginCount+1 WHERE UserID = 1") or die(mysqli_error($conn));
if (mysqli_affected_rows($conn) > 0) {
	echo "OK - able to update data <br />\n";
}
else {
	echo "Fail - not able to update data<br />\n";
}

$sql = "DELETE FROM core_userroles WHERE UserID IN (SELECT UserID FROM core_usermaster WHERE UserLogin = 'selennium@localhost');";
$result = mysqli_query($conn,$sql) or die(mysqli_error($conn));
if ($result) { echo "Delete sennium user role: OK<br />"; }

$sql = "DELETE FROM core_usermaster WHERE UserLogin = 'selennium@localhost';";
$result = mysqli_query($conn,$sql) or die(mysqli_error($conn));
if ($result) { echo "Delete sennium user: OK<br />"; }

$sql = "DELETE FROM trivia_master WHERE UserIDCreated IN (SELECT UserID FROM core_usermaster WHERE UserLogin = 'selennium@localhost')";
$result = mysqli_query($conn,$sql) or die(mysqli_error($conn));
if ($result) { echo "Delete sennium trivias: OK<br />"; }

?>