<?PHP 
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
?>
<!DOCTYPE html>

<html>
	<head>
		<style type="text/css"> 

		</style>
		<title>studentoutpassregister</title>
		<link rel="stylesheet" type="text/css" href="css/registration.css">
		<script src="js/registration.js"></script>
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
					<li><a href="statistics.php"><h3 >Statistics</h3></a></li>
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
	<form method="post" action="loginregister.php" onsubmit="return validate()" name="log">
		<div class="registration" style="">
			<h1>Registration </h1><br>
			<input type="text" name="username" placeholder="&nbsp &nbsp username"><br><br>
			<input type="password" name="password" placeholder="&nbsp &nbsp Password"><br><br>
			<button>submit</button>
		</div>
	</form>

	</body>
</html>