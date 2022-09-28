<?php
include("../scripts/functions.php");
usserAccessCheck();
include("../scripts/userdata.php");
 
if($theme_user == "dark"){
  $sql = $conn->query("UPDATE users SET theme = 'light' WHERE id = '$userid'");
  echo "<script>window.history.go(-1)</script>";
}

elseif($theme_user == "light"){
 $sql = $conn->query("UPDATE users SET theme = 'dark' WHERE id = '$userid'");
  echo "<script>window.history.go(-1)</script>";   
}

else{
echo "<script>window.history.go(-1)</script>";
}

?>