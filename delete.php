<?php
	include 'core/connect.php';

	$id = $_GET['id'];
	$sql = "DELETE FROM `cart` WHERE `cart_id` = '$id';";
	mysqli_query($conn, $sql);

	header("Location: cart.php");
	
?>