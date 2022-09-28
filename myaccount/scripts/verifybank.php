<?php 
include('functions.php');
include('userdata.php');
  $account = filterString($_REQUEST['q']);
  if($account == ""){
    borderError('red', 'account');
    die();
  }

  $sql = $conn->query("SELECT * FROM users WHERE accountnumber = '$account'");
  echo mysqli_error($conn);
  if (mysqli_num_rows($sql) > 0) {
    $result = mysqli_fetch_array($sql);

    if($result['accountnumber'] != $accountnumber){
    echo "".$result['firstname']." ".$result['middlename']." ".$result['lastname']."";
    $_SESSION['acctV'] =  "true";
    echo '<script type="text/javascript">
    document.getElementById("btn1").disabled=false;
   </script>';
  }
  else{
  echo "<b style='color:red'>Select a different account</b>";
  borderError('red', 'account');
  }
  }else{
  echo "<b style='color:red'>Account not found</b>";
  
  }
?>

