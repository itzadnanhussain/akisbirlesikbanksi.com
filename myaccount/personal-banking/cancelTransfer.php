<?php 
include '../scripts/functions.php';

$query = $conn->query("DELETE FROM pending_transcation WHERE id = '".$_GET['id']."'");
if(isset($_SESSION['pendingTransfer'])){
    unset($_SESSION['pendingTransfer']);
}

echo "<script>
window.history.go(-1);
</script>";