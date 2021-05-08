 <?php
if(isset($_POST['submit'])){
include_once "core/db_conn.php";
include_once "core/functions.php";

$username = htmlentities($_POST['username']);
$password = htmlentities($_POST['password']); 
 
		if(uidExists($conn, $username, $password) !==false){
			header("location: ../customer.php?logged=yes");
			exit();
		}
		else{
			header("location: ../login.php?logged=no");
			exit();
		}

}  
?>