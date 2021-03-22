<?PHP 
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="./css/statistcs.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="js/statistcs.js"></script>
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
	<h1 class="h1">STATISTCS</h1>
	<div class="main">
		<div class="bar">
			<h2 class="h2">Students Info</h2>
		</div>
		<?PHP
			include 'connect.php';
			$sql = "SELECT `datm` FROM `outpass`";
			$query = mysqli_query($conn,$sql);
			
			$curyear= date('Y');
			$curmonth= date('m');
			$curday= date('d');

			$yearcount=0;
			$monthcount=0;
			$daycount=0;


			while($row = mysqli_fetch_array($query)){
				$year = substr($row['datm'],0,4);
				$month = substr($row['datm'],5,2);
				$day = substr($row['datm'],8,2);

				if($year==$curyear)
				{
					$yearcount= $yearcount+1;
				}
				if($month==$curmonth)
				{
					$monthcount= $monthcount+1;
				}
				if($day==$curday)
				{
					$daycount= $daycount+1;
				}
				if($day==$curday-1)
				{
					$daycount=0;
				}
			}
		?>
		<div class="sub">
			<div class="card" id="card1"><b>Passes Issued<br>Today :</b><h1><?PHP echo $daycount;?></h1></div><br><br>
			<div class="card" id="card2"><b>Passes Issued<br>Monthly :</b><h1><?PHP echo $monthcount;?></h1></div><br><br>
			<div class="card" id="card3"><b>Passes Issued<br>Yearly :</b><h1><?PHP echo $yearcount;?></h1></div><br><br>
			
		</div>
	</div>
</center>
</body>
</html>