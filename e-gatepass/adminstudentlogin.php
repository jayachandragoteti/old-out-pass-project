<?php
include "connect.php";
 session_start();
	
 $us=$_POST['username'];
 $ps=$_POST['password'];
 $option = $_POST['option'];
						
 $query = "SELECT * FROM `login` WHERE `user`='$us'";
 $sql = mysqli_query($conn, $query);
 $row = mysqli_fetch_array($sql);
 
 if($row['pass']==$ps && $row['option'] == $option && $option =="admin")
 {
	 $_SESSION['user'] = $row['sno'];
	 header('location:request.php');
 }
 elseif ($row['pass']== $ps && $row['option'] == $option && $option =="student") {
 	 $_SESSION['user'] = $row['sno'];
	 header('location:passgeneration.php');
 }
 else{
	 echo "<script>alert('Details are wrong')</script>";
 }
?>