<?PHP
	include 'connect.php';
	
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
	
	$a=$_GET['rejectreason'];
	
	
	$query = "INSERT INTO `rejects` (`rejectreason`) VALUES ('$a')";
	
	$sql= mysqli_query($conn, $query);
	
	if($sql){
		header('location:reject.php');
	}else{
		echo "failed";
	}
?>