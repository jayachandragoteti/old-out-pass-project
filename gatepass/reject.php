<?PHP 
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
?>
<!DOCTYPE html>

<html>
	<head>
		<title>Reject</title>
		<link rel="stylesheet" type="text/css" href="css/reject.css">
		<script src="js/reject.js"></script>
	</head>
	<body>
	<nav>
		<div class="nav">
			<div class="logo">
				<img src="images/aitam.png">
			</div>
			<div class="link">
				<h1>E-Gate Pass</h1>
				<ul>
					<li><a href="requests.php" ><h3>Requests</h3></a></li>
					<li><a href="statistics.php"><h3>Statistics</h3></a></li>
					<li><a href="logout.php"><h3>Logout</h3></a></li>
				</ul>
			</div>
			
		<div class="menu">
	<div id="mySidenav" class="sidenav" >
 			 <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 			 <a href="accepts.php">ACCEPTS</a>
 			 <a href="reject.php">REJECTS</a>
  			 <a href="studentoutpassregister.php">STUDENT REGISTATION</a>
  			 <a href=".php">ABOUT</a>
		</div>
		<span style=" color:#fff; font-size:30px;cursor:pointer; float:right;margin-top:-5%; " onclick="openNav()">&#9776; </span>
	</div>
	</nav>	

	<div class="table">
		<table>
			<tr><th colspan="12">REJECTED</th></tr>
			<tr><th>id </th> <th>Studentname</th> <th>Branch</th> <th>Rollnumber</th> <th>Year</th>
			<th> Leaveing Date/Time</th> <th>Return Date/Time</th> <th>Place/Address</th> <th> Contact PhoneNumber</th>
			<th>Reason</th><th>Reject reason</th></tr>
			<?PHP
		include 'connect.php';
		$query = "SELECT * FROM `rejects` ORDER BY `sno` DESC";
		$sql = mysqli_query($conn, $query);
			while($row = mysqli_fetch_array($sql))
			echo "<tr><td>".$row['sno']."</td><td>".$row['studentname']."</td><td>".$row['branch']."</td><td>".$row['roll']."</td><td>".$row['studying']."</td><td>".$row['leaving']."</td><td>".$row['arraival']."</td><td>".$row['place']."</td><td>".$row['phone']."</td><td>".$row['reason']."</td></tr>";
		?>

		</table>
		
	</div>





	




	</body>
</html>