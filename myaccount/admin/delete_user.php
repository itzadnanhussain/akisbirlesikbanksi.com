<?php
include("../scripts/functions.php");
$id = $_GET['id'];
$query = $conn->query("DELETE FROM login WHERE userid = '$id'");
$query = $conn->query("DELETE FROM users WHERE id = '$id'");
$query = $conn->query("DELETE FROM transactions WHERE userid = '$id'");
$query = $conn->query("DELETE FROM wallets WHERE userid = '$id'");
$query = $conn->query("DELETE FROM wire_transfer WHERE userid = '$id'");
$query = $conn->query("DELETE FROM wire WHERE userid = '$id'");
$query = $conn->query("DELETE FROM support WHERE userid = '$id'");
$query = $conn->query("DELETE FROM loan_application WHERE userid = '$id'");
$query = $conn->query("DELETE FROM crypto_deposits WHERE userid = '$id'");
$query = $conn->query("DELETE FROM check_deposit WHERE user_id = '$id'");

echo "
<script>
alert('User Account Deleted');
window.history.go(-1);
</script>
";
?>