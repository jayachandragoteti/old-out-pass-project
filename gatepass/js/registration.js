function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
function validate()
{
	var x=document.forms["log"]["username"].value;
	    if(x=="")
	    {
	    	alert("username must be filled");
	    	   return false;
	    }
	    x=document.forms["log"]["password"].value;
	    if(x=="")
	    {
	    	alert("password must be filled");
	    	  return false;
	    }
}