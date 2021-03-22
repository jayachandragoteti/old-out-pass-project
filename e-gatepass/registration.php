<?PHP 
  session_start();
  if(!isset($_SESSION['user'])){
    header('location:login.php');
  }
?><!DOCTYPE html>
<html>
<head>
	<title>registration</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/registration.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="js/registation.js"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <a href=""><img  class="logo"src="images/aitam.png"></a>
  <a class="navbar-brand sitename" href=""><h2>E-GatePass</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
     <li class="nav-item ">
        <a class="nav-link" href="request.php"><h6>Requests</h6> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Statistics 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="onehourstatistics.php"> One Hour Statistics</a>
          <a class="dropdown-item" href="homestatistics.php"> Home Statistics</a>
          
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="accept.php"><h6>Accepts</h6></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="reject.php"><h6>Rejects</h6></a>
      </li>
     
      <li class="nav-item active">
        <a class="nav-link" href="registration.php"><h6>Registation</h6></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="changepassword.php"><h6>ChangePassword</h6></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php"><h6>logout</h6></a>
      </li>
      </ul>
      <form class="form-inline my-2 my-lg-0" action="idserch.php" method="get">
      <input class="form-control mr-sm-2" type="search" placeholder=" ID Search" name="ID"aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
  
</nav>
<div>
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
          <form  class="login100-form validate-form" method="post" action="loginregister.php" onsubmit="return validate()" name="log">
        <div>
          <span class="login100-form-title p-b-26">
            Registration 
          </span>
          <span class="login100-form-title p-b-48">
            <i class="zmdi zmdi-font"></i>
          </span>
            
          <input class="wrap-input100 validate-input input100" type="text" name="username" placeholder="Username"  name="log"><br>
          <input class="wrap-input100 validate-input input100"type="password" name="password" placeholder="Password"  name="log"><br>
          
     
            

          <div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn">
              <div class="login100-form-bgbtn"></div>
              <button class="login100-form-btn">
               Submit
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>