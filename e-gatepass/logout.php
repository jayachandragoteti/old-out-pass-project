<?php

session_start();

if (isset($_SESSION ['user'])) 
{
	$a=$_SESSION['user'];
	session_destroy();
	unset($_SESSION['user']);
	header('location:login.php');
}

else
 {
	header('location:login.php');
	
}

?>