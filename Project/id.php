<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="./css/id.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<title>ID</title>
</head>
<body>
	<nav>
	<div class="nav">
			<div >
				<a href="https://www.adityatekkali.edu.in/"><img class="aitamlogo" src="images/aitamlogo.png"></a>
			</div>
			<div >
				<h1>Aitam Hostel</h1>
				<ul class="hover">
					<li><a href="aitamhostel.php" >Home</a></li>
					<li><a href="studentoutpass.php">Generate Pass</a></li>
					<li><a href="logout.php">Log In</a> </li>
					<li><a href="http://aitamsac.in/">About us </a></li>
					<li><a href="team.php">Team</a></li>

				</ul>

			</div>
			<h1>
	</div>
	</nav>	


	<div  style="margin:25% 0% 0% 30%;">
		<h1>

		Your ID NUMBER: &nbsp &nbsp&nbsp
		<?PHP
		include 'connect.php';
		$query = "SELECT * FROM `outpass` ORDER BY `sno` DESC";
		$sql = mysqli_query($conn, $query);
		$row = mysqli_fetch_array($sql);
		 echo $row['sno'];
		?>
		</h1>
	</div>	
</body>
</html>
