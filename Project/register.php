<?PHP
	include 'connect.php';
	
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
	
	$a=$_POST['Studentname'];
	$b=$_POST['branch'];
	$c=$_POST['roll'];
	$d=$_POST['yr'];
	$e=$_POST['dt'];
	$f=$_POST['d'];
	$g=$_POST['place'];
	$h=$_POST['phonenumber'];
	$i=$_POST['reason'];
	
	$query = "INSERT INTO `outpass` (`studentname`, `branch`, `roll`, `studying`, `leaving`, `arraival`, `place`, `phone`, `reason`) VALUES ('$a', '$b', '$c', '$d', '$e', '$f', '$g', '$h', '$i')";
	
	$sql= mysqli_query($conn, $query);
	
	if($sql){
		header('location:dashboard.php');
	}else{
		echo "failed";
	}
?>