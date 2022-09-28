<?php
$servername = "localhost";
$username = "akis_bk";
$password = "Ugo221o01##1";
$dbname = "akis_bk";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {

  die("Connection failed: " . $conn->connect_error);

}

?>