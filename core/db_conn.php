<?php
$servername="127.0.0.1";
$dbusername="root";
$dbpassword="";
$dbname="LGA";

$conn = mysqli_connect($servername,$dbusername,$dbpassword,$dbname);

// Check connection
if (!$conn){
    die("Maintenance Mode.");
}
