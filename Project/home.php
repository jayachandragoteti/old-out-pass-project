<?PHP 
	session_start();
	if(!isset($_SESSION['user'])){
		header('location:login.php');
	}
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="./css/homestyle.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<script src="js/home.js"></script>
	<title>Generate pass</title>
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
					<li><a href="logout.php">Log Out</a> </li>
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
 			 <a href="#"></a>
		</div>
		<span style="font-size:30px;cursor:pointer; float:right;margin-top:-7%;color: #FFF; " onclick="openNav()">&#9776; </span>
	</div>



	</nav>	
<!--forms-->


<center>
<div class="form">
	<h4 style="margin-top: -10%; "> ADITYA INSTITUE OF TECHNOLOGY AND MANAGEMENT <br> (An Autonmous Insttitue) <br> KOTTURU,TEKKALI-532201 </h4>
	
<form name="HosForm" onsubmit="return validate()" action="register.php" method="post">

<!--Next-->


<div id="hidde">  

	
<table class="table" >
<tr>
	<td><label>Studentname</label></td>
	<td>&nbsp:</td>
	<td><input type="text" id="Studentname" name="Studentname" placeholder=""></td>
	
</tr>

<tr>
  	<td><label>Branch</label></td>
	<td>:</td>
  	<td><select name="branch" id="branch" placeholder="choose branch">
        <option></option>
        <option>CSE</option>
        <option>ECE</option>
        <option>EEE</option>
        <option>CIV</option>
        <option>MECH</option>
        <option>DIPLOMA</option>
  	</select></td>
</tr>

<tr>
	<td><label>Roll Number</label></td>
	<td>&nbsp:</td>
	<td><input type="text" id="rollnumber" name="roll" placeholder=""></td>
</tr>


<tr>
	<td><label>Year</label></td>
	<td>&nbsp:</td>
	<td><input type="text" id="Year" name="yr" placeholder=""></td>
</tr>

</table>
<center><input type="button"  onclick="myFunction()" value = "next" id ="next"></center>
</div>
<!--submit-->

<div style="display: none;" id="show">
<table class="table">
<tr>
	<td><label>Leaving Date/Time  </label></td>
	<td>&nbsp:</td>
	<td><input type="text" id="Date/Time" name="dt" placeholder=""></td>
</tr>

<tr>
	<td><label>Arrival Time/Date</label></td>
	<td>&nbsp:</td>
	<td><input type="text" id="returnDate/Time" name="d" placeholder=""></td>
</tr>

<tr>
	<td><label>Place/Address To Where</label></td>
	<td>&nbsp:</td>
	<td><input type="textarea" id="Place/Address" name="place" placeholder=""></td>
</tr>

<tr>
	<td><label>Phonenumber</label></td>
	<td>&nbsp:</td>
	<td><input type="text" id="phonenumber" name="phonenumber" placeholder=""></td>
</tr>

<tr>
	<td><label>Reason of Leave</label></td>
	<td>&nbsp:</td>
	<td><input type="text" id="reason" name="reason" placeholder=""></td>
</tr>


<tr>
</tr>
</table>

<center><input type="Submit" value = "Submit" id ="submit"></center>
</div>

</form>
</div>
 </center>

	
</body>
</html>