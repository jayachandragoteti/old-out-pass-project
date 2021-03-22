<?PHP 
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="./css/request.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="js/dashboard.js">
	</script>
	<title>request</title>
</head>
<body>
	<!------Nave bar---->
	<nav>
	<div class="nav">
			<div >
				<a href="https://www.adityatekkali.edu.in/"><img class="aitamlogo" src="images/aitamlogo.png"></a>
			</div>
			<div >
				<h1>Aitam Hostel</h1>
				<ul class="hover" style="margin-left: 100px;">
					<li><a href="home.php">Generate Pass</a></li>
					<li><a href="http://aitamsac.in/">About us </a></li>
					<li><a href="changepassword.php">Change Password</a></li>
					<li><a href="login.php">Log Out</a> </li>
				</ul>
			</div>
	</div>
	<!-- menu-->
	<div class="menu">
	<div id="mySidenav" class="sidenav" >
 			 <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 			 <a href="#"></a>
			 <a href="dashboard.php">DASHBOARD</a>
 			 <a href="statistcs.php">STATISTCS</a>
 			 <a href="request.php">REQUEST</a>
		</div>
		<span style="font-size:30px;cursor:pointer; float:right;margin-top:-5%; " onclick="openNav()">&#9776; </span>
	</div>
	</nav>	

<!------dashboard form---->

	<div class="dashboard">
		<h3> &nbsp&nbsp&nbsp&nbsp&nbspRequest</h3>
	</div>
	<div class="searchbar">
		 <form class="search" action="search.php" method="get" style="margin:auto;max-width:300px">
 		 <input type="text" placeholder="Enter ID" name="ID">
 		 <button type="submit"><i class="fa fa-search "></i></button>
		 </form>
	</div>
	

<div class="table" style="margin-top:30px; ">
	<table text align="center">
		<tr><th>id </th> <th>Studentname</th> <th>branch</th> <th>rollnumber</th> <th>Year</th>
			<th> Leaveing Date/Time</th> <th>Return Date/Time</th> <th>Place/Address</th> <th>phonenumber</th>
			<th>reason</th> <th>accept</th><th>reject</th></tr>
		<?PHP
		include 'connect.php';
		$query = "SELECT * FROM `outpass` ORDER BY `sno` DESC";
		$sql = mysqli_query($conn, $query);
			while($row = mysqli_fetch_array($sql))
			echo "<tr><td>".$row['sno']."</td><td>".$row['studentname']."</td><td>".$row['branch']."</td><td>".$row['roll']."</td><td>".$row['studying']."</td><td>".$row['leaving']."</td><td>".$row['arraival']."</td><td>".$row['place']."</td><td>".$row['phone']."</td><td>".$row['reason']."</td><td><a href='print.php?q=".$row['sno']."'target='blank'>accept</a><td><a href='reject.php?q=".$row['sno']."'target='blank'>reject</a></td></tr>";
		?>
	</table>


</div>
	
</body>
</html>
