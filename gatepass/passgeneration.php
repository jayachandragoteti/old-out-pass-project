<!DOCTYPE html>
<html>
	<head>
		<title>pass generation</title>
		<link rel="stylesheet" type="text/css" href="css/passgeneration.css">
		<script src="js/passgeneration.js"></script>
	</head>
	<body>
		<div class="nav">
			<div class="logo">
				<img src="images/aitam.png">
			</div>
			<div class="link">
				<h1>E-Gate Pass</h1>
				<ul>
					<li><a href="passgeneration.php"><h3>Pass Genaration</h3></a></li>
					<li><a href="logout.php"><h3 style="margin-left:500%;">Logout</h3></a></li>
				</ul>
			</div>
		</div>
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
<center><input type="button"  onclick="myFunction()" value = "Next" id ="next"></center>
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