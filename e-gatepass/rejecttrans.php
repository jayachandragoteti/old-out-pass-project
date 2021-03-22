<?PHP
	include 'connect.php';

	$a= $_GET['m'];
	$query = "SELECT * FROM `request` WHERE `sno` = '$a'";
	$sql = mysqli_query($conn, $query);
	$row = mysqli_fetch_array($sql);

	
	$a=$row['sno'];
	$b=$row['studentname'];
	$c=$row['branch']; 
	$d=$row['studying'];
	$e=$row['leaving'];
	$f=$row['arraival'];
	$g=$row['place'];
	$h=$row['phone'];
	$i=$row['reason'];
	$j=$row['roll'];
	$l=$row['oneh/home'];

	$query = "INSERT INTO `rejects` (`sno`,`studentname`, `branch`, `roll`, `studying`, `leaving`, `arraival`, `place`, `phone`, `reason`,`oneh/home`) VALUES ('$a', '$b', '$c','$j','$d', '$e', '$f', '$g', '$h', '$i','$l')";
	
	
	$sql= mysqli_query($conn, $query);

	if($sql){
		header('location:reject.php?');
	}

	/*if($sql){
		header('location:reason.php?');
	}*/
	else{
		echo "failed";
	}
	
	

?>
