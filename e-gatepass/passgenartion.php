<!DOCTYPE html>
<html>
<head>
	<title>Genarate pass</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/passgeneration.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
   
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   <script src="js/passgeneration.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="top: 0px; ">
  <a href=""><img  class="logo"src="images/aitam.png"></a>
  <a class="navbar-brand sitename" href=""><h2>E-GatePass</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
     <li class="nav-item active">
        <a class="nav-link" href="request.php"><h6>Requests</h6> <span class="sr-only">(current)</span></a>
      </li>
         
  </div>
  
</nav>

<div >
  




  <div class="limiter" >
    <div class="container-login100" style="background: linear-gradient(to right, #80d8ff  0%, white 100%);">
      <div class="wrap-login100">
          <form  class="login100-form validate-form" name="HosForm" onsubmit="return validate()" action="register.php" method="post">
        <div>
          <span class="login100-form-title p-b-26">
            AITAM<br>(An Autonmous Insttitue)
          </span>
          <span class="login100-form-title p-b-48">
            <i class="zmdi zmdi-font"></i>
          </span>


  

<!--Next-->


<div id="hidde">  

  
<table class="table" >
  <tr>
    <td><select class="wrap-login100-form-btn" name="oneh/home"  placeholder="One Hour/Home">
        <option>select type</option>
        <option value="Home">TO HOME</option>
        <option value="OneHour">ONE HOUR</option>
            </select></td>
</tr>
<tr>
  <td><input class="wrap-input100 validate-input input100"type="text" id="Studentname" name="Studentname" placeholder="Studentname"></td>
  
</tr>


<tr>
    <td><select class="wrap-login100-form-btn" name="branch" id="branch" placeholder="Branch">
        <option>select Branch</option>
        <option>CSE</option>
        <option>ECE</option>
        <option>EEE</option>
        <option>CIV</option>
        <option>MECH</option>
        <option>IT</option>
        <option>DIPLOMA</option>
    </select></td>
</tr>

<tr>
  
  <td><input class="wrap-input100 validate-input input100" type="text" id="rollnumber" name="roll"placeholder="Roll Number"></td>
</tr>


<tr>
  
  <td><input class="wrap-input100 validate-input input100" type="text" id="Year" name="yr" placeholder="Year"></td>
</tr>

</table>
<div class="container-login100-form-btn">
    <div class="wrap-login100-form-btn">
        <div class="login100-form-bgbtn"></div>
			<input class="" type="button"  onclick="myFunction()" value = "Next" placeholder="NEXT" >
     </div>
    </div>
  </div>
</div>
<!--submit-->

<div style="display: none;" id="show">
<table class="table">
<tr>
  
  <td><input class="wrap-input100 validate-input input100" type="text" id="Date/Time" name="dt" placeholder="Leaving Date/Time "></td>
</tr>

<tr>
  
  <td><input class="wrap-input100 validate-input input100" type="text" id="returnDate/Time" name="d" placeholder="Arrival Time/Date"></td>
</tr>

<tr>
  
  <td><input  class="wrap-input100 validate-input input100" type="textarea" id="Place/Address" name="place" placeholder="Place/Address To Where"></td>
</tr>

<tr>

  <td><input class="wrap-input100 validate-input input100" type="text" id="phonenumber" name="phonenumber" placeholder="Phonenumber"></td>
</tr>

<tr>
  
  <td><input class="wrap-input100 validate-input input100" type="text" id="reason" name="reason" placeholder="Reason of Leave"></td>
</tr>


<tr>
</tr>
</table>
<div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn">
              <div class="login100-form-bgbtn"></div>
              <button class="login100-form-btn">
                submit
              </button>
            </div>
          </div>

</form>
</div>



</body>
</html>