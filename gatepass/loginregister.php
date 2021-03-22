<?PHP
	include 'connect.php';
	
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
	
	$a=$_POST['username'];
	$b=$_POST['password'];
	$c="student";	
	$query = "INSERT INTO `login` (`user`, `pass`, `option`) VALUES ('$a', '$b', '$c')";
	
	$sql= mysqli_query($conn, $query);
	
	if($sql){
		header('location:studentoutpassregister.php');
	}else{
		echo "failed";
	}
?>