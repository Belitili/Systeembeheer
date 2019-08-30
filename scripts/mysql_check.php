<?php
$servername = "localhost";
$username = "check";
$password = "rDEetGxq82DCE";
$dbname = "check";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "select text from log order by log_id desc limit 1";
	$result = $conn->query($sql);
	$lastLog = $result->fetch_assoc();
	echo $lastLog[text];
	$conn->close();
 ?> 
