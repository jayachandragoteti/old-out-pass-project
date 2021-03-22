<?PHP 
	session_start();
	if(isset($_SESSION['user'])==1){
		header('location:home.php');
	}
?>
<html>
	<head>
		<title>registration</title>
		<link rel="stylesheet" type="text/css" href="css/registration.css">
		<script src="js/registration.js"></script>
	</head>
	<body>
		<div class="nav">
			<div class="logo">
				<img src="images/aitam.png">
			</div>
			<div class="link">
				<h1>E-Gate Pass</h1>
				<ul>
					<li><a href="requests.php" ><h3>Requests</h3></a></li>
					<li><a href="statistics.php"><h3 >Statistics</h3></a></li>
					<li><a href="logout.php"><h3>Logout</h3></a></li>
				</ul>
			</div>
			
		<div class="menu">
	<div id="mySidenav" class="sidenav" >
 			 <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 			 <a href="#"></a>
 			 <a href="statistcs.php">STATISTCS</a>
			 <a href="dashboard.php">REJECTED</a>
  			 <a href="request.php">STUDENT REGISTATION</a>
  			 <a href="request.php">ABOUT</a>
		</div>
		<span style=" color:#fff; font-size:30px;cursor:pointer; float:right;margin-top:-5%; " onclick="openNav()">&#9776; </span>
	</div>
	</nav>	


	</body>
</html>