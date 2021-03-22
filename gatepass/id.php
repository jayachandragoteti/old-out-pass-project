<?PHP 
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
?>
<html>
	<head>
		<title>Id </title>
		<link rel="stylesheet" type="text/css" href="css/id.css">
		<script src="js/id.js"></script>
	</head>
	<body>
		<div class="nav">
			<div class="logo">
				<img src="images/aitam.png">
			</div>
			<div class="link">
				<h1>E-Gate Pass</h1>
				<ul>
					
					<li><h3 style="color: #eeff41">Id Search</h3></li>
					<li><a href="logout.php">Logout</a></li>
			
						</ul>
			</div>
		
	</nav>	
	<div  style="margin:45% 0% 0% -15%;">
		<h1 style="color: #1C2833">

		Your ID NUMBER: &nbsp &nbsp&nbsp
		<?PHP
		include 'connect.php';
		$query = "SELECT * FROM `request` ORDER BY `sno` DESC";
		$sql = mysqli_query($conn, $query);
		$row = mysqli_fetch_array($sql);
		 echo $row['sno'];
		?>
		</h1>
	</div>	


	</body>
</html>