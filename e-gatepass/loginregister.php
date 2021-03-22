<?PHP
	include 'connect.php';
	
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
	
	$a=$_POST['username'];
	$b=$_POST['password'];
	$c="student";	
	$query = "INSERT INTO `student` (`user`, `pass`, `option`) VALUES ('$a', '$b', '$c')";
	
	$sql= mysqli_query($conn, $query);
	
	if($sql){
		echo "<script>alert(' Updated');</script>";
		header('location:registration.php');
				

		
	}else{
		echo "failed";
	}
?>