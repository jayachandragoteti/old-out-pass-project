<?PHP
	include 'connect.php';
	
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
	
	if(isset($row['sno'].){
				$a =$w;
				$sql = "SELECT * FROM `request` WHERE `sno` = '$a'";
				$query = mysqli_query($conn,$sql);
				$row = mysqli_fetch_array($query);
				
				
				echo "<div class='sub'>
						<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		           </div>";
			
		

	$query = "INSERT INTO `request` (`studentname`, `branch`, `roll`, `studying`, `leaving`, `arraival`, `place`, `phone`, `reason`) VALUES ('$a', '$b', '$c', '$d', '$e', '$f', '$g', '$h', '$i')";
	
	$sql= mysqli_query($conn, $query);
	
	if($sql){
		header('location:studentid.php');
	}else{
				header('location:request.php');
?>