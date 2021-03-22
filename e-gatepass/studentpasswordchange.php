  <?PHP 
	include 'connect.php';
	session_start();
	if(!isset($_SESSION['user']))
	{
		header('location:login.php');
		
	}else{
		$user = $_SESSION['user'];
	}
	if(isset($_POST['OP'])&&isset($_POST['NP']))
	{
		$a=$_POST['OP'];
		$b=$_POST['NP'];	
		$query="SELECT * FROM `login`  WHERE `sno`='$user'";
		$sql=mysqli_query($conn,$query);
		$row=mysqli_fetch_array($sql);
		if($row['pass']==$a){
			$query="UPDATE `login` SET `pass`='$b' WHERE `sno`='$user' ";
			$sql=mysqli_query($conn,$query);
			if($sql)
			{
				echo "<script>alert('Password Updated');</script>";
				echo "<script>window.location='logout.php';</script>";
			}else{
				echo "<script>alert('Password Cant Update')</script>";
			}	
		}
	}else{
		echo "Not Done";
	}
?>