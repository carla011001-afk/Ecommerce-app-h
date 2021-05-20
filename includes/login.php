<?php
								if(isset($_POST['login'])){ 
									include_once "core/db_conn.php";
									include_once "core/functions.php";

									$username = htmlentities($_POST['username']);
									$password = htmlentities($_POST['password']);

								if(uidExists($conn, $username, $password) !==false){
									echo "You are logged in!";
								}else{
									echo "nahhh";
								}

									

								}


							?>
				
