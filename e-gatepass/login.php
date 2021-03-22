<!DOCTYPE html>
<html>
<head>
	<title>login</title>
  <link rel="stylesheet" type="text/css" href="css/login1.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
  
  
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <script src="js/login.js"></script>

</head>
<body>
  <nav class="navbar navbar-expand-lg ">
  <a href=""><img  class="logo"src="images/aitam.png"></a>
  <a class="navbar-brand sitename" href=""><h2>E-GatePass</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse list" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#"><h6>StudentID</h6> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php"><h6>logout</h6></a>
      </li>
      
    </ul>
    
  </div>
</nav>

    <div>
      <div class="limiter">
        <div class="container-login100">
          <div class="wrap-login100 ">
              <form  class="login100-form validate-form" method="post" action="adminlogin.php" onsubmit="return validate()" name="log">
            <div>
                <span class="login100-form-title p-b-26">
                  Welcome
                </span>
                <span class="login100-form-title p-b-48">
                  <i class="zmdi zmdi-font"></i>
                </span>
                  <input class="wrap-input100 validate-input input100"type="text" name="username" placeholder=" Username">
                  <input class="wrap-input100 validate-input input100" type="password" name="password" placeholder="Enter password">
                  <select name="option" class="wrap-login100-form-btn" >
                    <option>   Select One</option>  
                    <option    value="student">Student</option> 
                      <option  value="admin">Admin</option>       
                  </select>
                  

                <div class="container-login100-form-btn">
                  <div class="wrap-login100-form-btn">
                    <div class="login100-form-bgbtn"></div>
                    <button class="login100-form-btn">
                      Login
                    </button>
                  </div>
                </div>
            </form>
          </div>
        </div>
      </div>


  <!--
  <div>
    <div  id="login">
        <h2>Login </h2>
          <form method="post" action="adminlogin.php" onsubmit="return validate()" name="log">
            <div>
              <input type="text" name="username" placeholder="&nbsp &nbsp username"><br>
              <input type="password" name="password" placeholder="&nbsp &nbsp Password"><br>
              <select name="option">
              <option>   Select One</option>  
              <option    value="student">Student</option> 
              <option  value="admin">Admin</option>       
              </select>
              <button class="button">Login</button> 
            </div>
          </form>
    </div>
  </div>-->
</body>
</html>




  
  