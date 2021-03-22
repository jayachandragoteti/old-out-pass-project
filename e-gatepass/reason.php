<?PHP 
  session_start();
  if(!isset($_SESSION['user'])){
    header('location:login.php');
  }
?><!DOCTYPE html>
<html>
<head>
	<title>reson</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/reason.css">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a href=""><img  class="logo"src="images/aitam.png"></a>
  <a class="navbar-brand sitename" href=""><h2>E-GatePass</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 </nav>
<center>
  <div>
    
    <h1 style="margin:10% 0% 0% 0%; "> REJECT REASON</h1>
  
    <div style="margin:0% 0% 0% 40%; ">
      <form class="form-inline my-2 my-lg-0" action="rejected.php" method="GET">
      <input class="form-control mr-sm-2" type="text" name="rejectreason" placeholder="Enter Reason" >
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Submit</button>
    </form>
    </div>
  </div>
</center>
</body>
</html>