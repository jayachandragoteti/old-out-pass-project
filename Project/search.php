<?PHP 
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
?>
<!DOCTYPE html>
<html>
<head>
<style >
.back button {
	width:8%;
	height:40px;
	margin:3% 0% 0% 90%;
	background-color:#28B463;
	color: #e6ffff;
	font-size:18px;
	font-family:"Franklin Gothic";
	border-radius:9px;
	border-style: groove;
}  
</style>

	<title> Id Search</title>
	<link rel="stylesheet" type="text/css" href="./css/search.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="./js/search.js"></script>


</head>
<body style="overflow:hidden; ">
	<nav>
	<div class="nav">
			<div >
				<a href="https://www.adityatekkali.edu.in/"><img class="aitamlogo" src="./images/aitamlogo.png"></a>
			</div>
			<div >
				<h1>Aitam Hostel</h1>
				<ul class="hover">
					<li><a href="home.php" class="active">Generate Pass</a></li>
					<li><a href="http://aitamsac.in/">About us </a></li>
					<li><a href="changepassword.php">Change Password</a></li>
					<li><a href="login.php">Log Out</a> </li>
				</ul>
			</div>
	</div>
<!-- menu-->
	<div class="menu">
	<div id="mySidenav" class="sidenav">
 			 <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 			 <a href="#"></a>
			 <a href="dashboard.php">DASHBOARD</a>
 			 <a href="statistcs.php">STATISTCS</a>
 			 <a href="#"></a>
		</div>
		<span style="font-size:30px;cursor:pointer; float:right;margin-top:-7%;color: #FFF; " onclick="openNav()">&#9776; </span>
	</div>


	</nav>	

	<center>
	<div class="main">
		<br><br>
		<div class="bar">
			<h2 class="h2">Students Info</h2>
		</div>
		<?PHP
			include 'connect.php';
			if(isset($_GET['ID'])){
				$a = $_GET['ID'];
				$sql = "SELECT * FROM `outpass` WHERE `sno` = '$a'";
				$query = mysqli_query($conn,$sql);
				$row = mysqli_fetch_array($query);
				
				
				echo "<div class='sub'>
						<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		           </div>";
			}else{
				header('location:index.php');
			}
		?>


<div style="top:-248px; position:relative; margin-left:50px;display: inline-flex;">
	<div>
		<table class="table"> 
		<tr> <th colspan="3">STUDENT OUT PASS</th></tr>
		<tr>
			<td><h4> ID-Number: &nbsp &nbsp  <?php echo $row['sno']; ?><p></h4>
			<td><p>Student Name:  &nbsp &nbsp <?php echo $row['studentname']; ?></p></td>
		</tr>
		<tr>
			<td><h4>Branch:  &nbsp &nbsp <?php echo $row['branch']; ?><h4></td>
			<td><h4>Roll Number: &nbsp &nbsp  <?php echo $row['roll']; ?><h4></td>	
		</tr>
		<tr>
			<td><h4>Year: &nbsp &nbsp <?php echo $row['studying']; ?><h4></td>
			<td><h4> Leaveing Date/Time:  &nbsp &nbsp<?php echo $row['leaving']; ?><h4></td>
		</tr>
		<tr>
			<td><h4>Return Date/Time:&nbsp &nbsp  <?php echo $row['arraival']; ?><h4></td>
			<td><h4>Place/Address: &nbsp &nbsp <?php  echo $row['place']; ?><h4></td>
		</tr>
		<tr>
			<td><h4>Phonenumber: &nbsp &nbsp <?php  echo $row['phone']; ?><h4></td>
			<td><h4>Reason:&nbsp &nbsp  <?php  echo $row['reason']; ?> <h4></td>
		</tr>
		<tr>
			<td><h4>Issued Time/Date: &nbsp &nbsp <?php  echo $row['datm']; ?> <h4></td>
			<td><h4></h4></td>	
		</tr>
		
		</table>
	</div>
</div>
</center>


<a href="dashboard.php" class="back"><button>Back</button></a>

</body>
</html>