<?PHP
	include 'connect.php';
	$a= $_GET['q'];
	$query = "SELECT * FROM `request` WHERE `sno` = '$a'";
	$sql = mysqli_query($conn, $query);
	$row = mysqli_fetch_array($sql);
	echo "<script>window.print()</script>";
?>




<!DOCTYPE html>
<html>
<head>
	<title>Outing Pass</title>
	<meta charset="utf-8" name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./css/prins.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


	<style type="text/css">
		.card{
			box-shadow: 0 0 10px 0 black;
 			transition: 0.3s;
  			width: 305px;
  			background-color: white;
  			border: 3px solid white;
  			height:310px;
  			margin-left: 40px;
  			color: white;
  			font-family: sans-serif;
  			text-align: left;
  			padding-top: 25px;
  			font-size: 18px;
  			margin-top: -1%;
  		}
  		.card p {
  			position: relative;
  			margin-top: -5px;
  			padding-left: 10px;
  		}

  		.cardb{
			box-shadow: 0 0 10px 0 black;
 			transition: 0.3s;
  			width: 305px;
  			background-color: white;
  			border: 3px solid white;
  			height:190px;
  			margin-left: 70px;
  			color: white;
  			font-family: sans-serif;
  			text-align: left;
  			padding-top: 25px;
  			font-size: 18px;
  			margin-top: -1%;
  		}
  		.cardb p {
  			position: relative;
  			margin-top: -5px;
  			padding-left: 10px;
  		}
  		@page {
  			size: auto;
  			margin:0;
  		}
  		
	</style>



</head>
<body>
	<header>
	<header id="header1"><img id="logo" src="images/aitam.png">
		<h1>AITAM HOSTLER</h1>
		<ul>
			<li><p style="font-size:8px;margin-left:200px;"> K. Kotturu, Tekkali, <br>Srikakulam Dist., A.P.<br> (AITAM College, Tekkali) </p></li>
		</ul>
	</header>
	<header id="header1" style="margin-left: 50%"><img id="logo" src="images/aitam.png">
		<h1>AITAM HOSTLER</h1>
		<ul>
			<li><p style="font-size:8px;margin-left:200px;"> K. Kotturu, Tekkali, <br>Srikakulam Dist., A.P.<br> (AITAM College, Tekkali) </p></li>
		</ul>
	</header>
	</header>
	
	
<div style="margin-top: 100px;margin-left:20px;display: inline-flex;">
	<div class="card" style="color: black;">
		<table> 
		<tr> <th colspan="3">STUDENT OUT PASS</th></tr>
		<tr>
			<td><p> ID-Number<p></td>
			<td><p>:<?php echo $row['sno']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>	Student Name<p></td>
			<td><p>:<?php echo $row['studentname']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>	Branch<p></td>
			<td><p>:<?php echo $row['branch']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Roll Number<p></td>
			<td><p>:<?php echo $row['roll']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Year<p></td>
			<td><p>:<?php echo $row['studying']; ?></p></td>
			<td><p></p></td>

		</tr>
				<tr>
			<td><p> Leaveing Date/Time<p></td>
			<td><p>:<?php echo $row['leaving']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>	Return Date/Time<p></td>
			<td><p>:<?php echo $row['arraival']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Place/Address<p></td>
			<td><p>:<?php  echo $row['place']; ?></p></td>
			<td><p></p></td>

		</tr>
		
		<tr>
			<td><p>Phonenumber<p></td>
			<td><p>:<?php  echo $row['phone']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Reason <p></td>
			<td><p>:<?php  echo $row['reason']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Issued Time/Date <p></td>
			<td><p>:<?php  echo $row['datm']; ?></p></td>
			<td><p></p></td>

		</tr>
				
		
		</table>
	</div>
	<div class="cardb" style="position:relative;margin-left:100px;left:45px;height:310px;" >
		<div  style="color: black;">
		<table> 
			<tr> <th colspan="3">STUDENT OUT PASS</th></tr>
			<tr>
			<td><p> ID-Number<p></td>
			<td><p>:<?php echo $row['sno']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>	Student Name<p></td>
			<td><p>:<?php echo $row['studentname']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>	Branch<p></td>
			<td><p>:<?php echo $row['branch']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Roll Number<p></td>
			<td><p>:<?php echo $row['roll']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Year<p></td>
			<td><p>:<?php echo $row['studying']; ?></p></td>
			<td><p></p></td>

		</tr>
				<tr>
			<td><p> Leaveing Date/Time<p></td>
			<td><p>:<?php echo $row['leaving']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>	Return Date/Time<p></td>
			<td><p>:<?php echo $row['arraival']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Place/Address<p></td>
			<td><p>:<?php  echo $row['place']; ?></p></td>
			<td><p></p></td>

		</tr>
		
		<tr>
			<td><p>Phonenumber<p></td>
			<td><p>:<?php  echo $row['phone']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Reason <p></td>
			<td><p>:<?php  echo $row['reason']; ?></p></td>
			<td><p></p></td>

		</tr>
		<tr>
			<td><p>Issued Time/Date <p></td>
			<td><p>:<?php  echo $row['datm']; ?></p></td>
			<td><p></p></td>

		</tr>
		
		</table>
	</div>
	</div>
	</div>
	<footer>
	
	<footer id="foot"  style="margin-top:110px;"><h4><i class="fa fa-copyright" style="font-size: 12px;"></i> 2019-ALL COPYRIGHTS ARE RESERVED.</h4>
	<ul>
			<li><a href="http://aitamsac.in/">aitamsac.in</a></li>
			
		</ul></footer>
		<footer id="foot" style="margin-left: 50%;margin-top:110px;"><h4><i class="fa fa-copyright" style="font-size: 15px;"></i> 2019-ALL COPYRIGHTS ARE RESERVED.</h4>
	<ul>
			<li><a href="http://aitamsac.in/">aitamsac.in</a></li>
		</ul></footer>
		</footer>

	