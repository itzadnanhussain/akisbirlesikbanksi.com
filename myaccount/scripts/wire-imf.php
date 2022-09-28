<?php
include("functions.php");
usserAccessCheck();
include("userdata.php");
if(isset($_POST)){
	sleep(3);
	$imfcode = filterString($_POST['imf']);
	if (empty($imfcode)) {
		   echo "<script>
              toastr.error('$code_4 Code is required!', 'Empty field', {\"progressBar\": true});
              document.getElementById('imf').style.borderColor='red';
             </script>";
             die();
   	}

	 if($_SESSION['wireImfCounter'] <= 1){
       echo "<script>
                  Swal.fire('Maximum $code_4 attempts exceeded!', '$imf_error', 'error');
                  document.getElementById('cot').style.borderColor='red';
                  document.getElementById('cot').style.color='red';
            </script>";
                  //$query = $conn->query("UPDATE users SET status = 'blocked' WHERE id = '$userid'");
                  //  session_destroy();
                  ?>
                  <!--<meta http-equiv="refresh" content="5; url=../">-->
                  <?php                 
                  die();
    }
    
    if ($userimf != $imfcode) {
    	      $count = $_SESSION['wireImfCounter'];
    	      $newcount = $count - 1;
              echo "<script>
               Swal.fire('Invalid $code_4 code!!', 'For security purpose, Your account will be suspended once you exceed the maximum trial limit. You  have $newcount attempts left.', 'error');
                  document.getElementById('imf').style.borderColor='red';
                  document.getElementById('imf').style.color='red';
                  </script>";
              $_SESSION['wireImfCounter'] = $newcount;    
             die();
    }
    
    if ($userimf == $imfcode) {
     	echo "<script>

               Swal.fire('Valid $code_4 code supplied!', 'Your transaction will be continued. Redirecting...', 'success');
                document.getElementById('imf').style.borderColor='green';
                  document.getElementById('imf').style.color='green';
                  </script>";   
       ?>
      <meta http-equiv="refresh" content="3; url=../personal-banking/wire-auth?verification=cot&transferToken=<?php echo randomString(54)?> ">
       <?php
    }
 
}
?>