<?php
	include '../core/connect.php';

	$id = $_GET['id'];
	$sql = "DELETE FROM `items` WHERE `item_id` = '$id';";
	mysqli_query($conn, $sql);

	header("Location: items.php");
	
?>