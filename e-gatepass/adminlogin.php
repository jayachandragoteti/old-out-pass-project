<?php
include "connect.php";
	
 $us=$_POST['username'];
 $ps=$_POST['password'];
 $option = $_POST['option'];
						 
/*if($_POST['option']=="student")
{
	 $query = "SELECT * FROM `student` WHERE `user`='$us'";
	 $sql = mysqli_query($conn, $query);
	 $row = mysqli_fetch_array($sql);
	 if ($row['pass']== $ps && $row['option'] == $option && $option =="student")
	  {
	 	 $_SESSION['user'] = $row['sno'];
		 header('location:passgenartion.php');
     }
     else
	{
	 echo "<script>alert('Details are wrong')</script>";
 	}

}
elseif($_POST['option']=="admin")
{ 
	session_start();
	if($_SESSION['user']==1){
		header('location:home.php');
	}
	
	$query = "SELECT * FROM `login` WHERE `user`='$us'";
	$sql = mysqli_query($conn, $query);
	$row = mysqli_fetch_array($sql);
	if($row['pass']==$ps && $row['option'] == $option && $option =="admin")
	{
		$_SESSION['user'] = $row['sno'];
		header('location:request.php');

	}
	else
	{
	 echo "<script>alert('Details are wrong')</script>";
 	}
	 

}*/
	




 $query = "SELECT * FROM `login` WHERE `user`='$us'";
 $sql = mysqli_query($conn, $query);
 $row = mysqli_fetch_array($sql);
 
 if($row['pass']==$ps && $row['option'] == $option && $option =="admin")
 {   
 	session_start();
	if($_SESSION['user']==1){
		header('location:home.php');
	}
	 $_SESSION['user'] = $row['sno'];
	 header('location:request.php');
 }
 elseif ($row['pass']== $ps && $row['option'] == $option && $option =="student") {
 	 $_SESSION['user'] = $row['sno'];
	 header('location:passgenartion.php');
 }
 else{
	 echo "<script>alert('Details are wrong')</script>";
 }
?>