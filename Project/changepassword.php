<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="./css/changepasswordstyle.css">
	<title>change password</title>
	<script src="js/change.js">
	</script>
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
					<li><a href="home.php" >Generate Pass</a></li>
					<li><a href="http://aitamsac.in/">About us </a></li>
					<li><a href="changepassword.php" class="active">Change Password</a></li>
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
 			 <a href="request.php">REQUEST</a>
 			 <a href="#.html"></a>
		</div>
		<span style="font-size:30px;cursor:pointer; float:right;margin-top:-5%; " onclick="openNav()">&#9776; </span>
	</div>
	</nav>	
    <form method="post" action="change.php" onsubmit="return validate()" name="log">
	<div class="changepassword">
			<h3>Change Password </h3>
			<input type="password" name="OP" placeholder="Old Password"><br>
			<input type="password" name="NP" placeholder="New Password"><br>
			<input type="password" name="CP" placeholder="Confirm  Password"><br>
			<button>Submit</button>
		</div>
	</form>
</body>
</html>