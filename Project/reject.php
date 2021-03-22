<?php 
 include 'connect.php';
 session_start();	

	if(!isset($_SESSION['user']))
	{
		header('location:index.php');
	}
	if (isset($_GET['q']))
	 {
		$a=$_GET['q'];
		$query = "DELETE FROM `outpass` WHERE `sno`='$a' ";
		$sql=mysqli_query($conn,$query);
	
		if ($sql) 
		{
			echo "<script>alert('Pass Deleted Successfully');</script>";
			echo "<script>window.location='request.php';</script>";
		}
		
		else
		{
			echo "not deleted";
		}
	}
	else {
		header('location:request.php');
	}
	
?>