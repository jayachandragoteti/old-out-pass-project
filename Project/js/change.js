//-----------menu-----------------
 function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

//-------validates--------------
function validate()
{
	var x=document.forms["log"]["OP"].value;
	    if(x=="")
	    {
	    	alert("old password must be filled");
	    	   return false;
	    }
	    x=document.forms["log"]["NP"].value;
	    if(x=="")
	    {
	    	alert("new password must be filled");
	    	   return false;
	    }
	    x=document.forms["log"]["CP"].value;
	    if(x=="")
	    {
	    	alert("confirm password must be filled");
	    	   return false;
	    }
}