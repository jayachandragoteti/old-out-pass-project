<?PHP 
	session_start();
	if(isset($_SESSION['user'])==1){
		header('location:home.php');
	}
?>
<html>
	<head>
		<title>Requests</title>
		<link rel="stylesheet" type="text/css" href="css/idserch.css">
		<script src="js/idserch.js"></script>
	</head>
	<body>
		<div class="nav">
			<div class="logo">
				<img src="images/aitam.png">
			</div>
			<div class="link">
				<h1>E-Gate Pass</h1>
				<ul>
					
					<li><a href="#" class="active"><h3>Id Search</h3></a></li>
				</ul>
			</div>
		
	</nav>	


	</body>
</html>