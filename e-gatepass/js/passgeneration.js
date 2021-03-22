//next------------------------
function myFunction() {
  	var x=document.forms["HosForm"]["Studentname"].value;
	var y=document.forms["HosForm"]["branch"].value;
	var a=document.forms["HosForm"]["roll"].value;
	var b=document.forms["HosForm"]["yr"].value;    
		if(x=="")
	    {
	    	alert("Studentname must be filled");
	    	   return false;
	    }
	    else if(y=="")
	    {
	    	alert("Branch name must be filled");
	    	   return false;
	    }
	   	else if(a=="")
	    {
	    	alert("Roll number must be filled");
	    	   return false;
	    }
	    else if(b=="")
	    {
	    	alert("Year must be filled");
	    	   return false;
	    }
		else{
			  var x = document.getElementById("hidde");
  var y = document.getElementById("show");
  if (x.style.display === "none") {
    x.style.display = "block";
    y.style.display = "none";
  } else {
    x.style.display = "none";
    y.style.display = "block";
  }
			
		}
}

//validates---------------------
function validate()
{
	var x=document.forms["HosForm"]["Studentname"].value;
	    if(x=="")
	    {
	    	alert("Studentname must be filled");
	    	   return false;
	    }
	    x=document.forms["HosForm"]["branch"].value;
	    if(x=="")
	    {
	    	alert("Branch name must be filled");
	    	   return false;
	    }
	    x=document.forms["HosForm"]["roll"].value;
	    if(x=="")
	    {
	    	alert("Roll number must be filled");
	    	   return false;
	    }
	    x=document.forms["HosForm"]["yr"].value;
	    if(x=="")
	    {
	    	alert("Year must be filled");
	    	   return false;
	    }
	    x=document.forms["HosForm"]["dt"].value;
	    if(x=="")
	    {
	    	alert("leaving date/time must be filled");
	    	   return false;
	    }
	    x=document.forms["HosForm"]["d"].value;
	    if(x=="")
	    {
	    	alert("Arrival of time must be filled");
	    	   return false;
	    }
	    x=document.forms["HosForm"]["place"].value;
	    if(x=="")
	    {
	    	alert("place must be filled");
	    	   return false;
	    }
	    x=document.forms["HosForm"]["phonenumber"].value;
	    if(x=="")
	    {
	    	alert("phonenumber must be filled");
	    	   return false;
	    }
	    x=document.forms["HosForm"]["reason"].value;
	    if(x=="")
	    {
	    	alert("Reason must be filled");
	    	   return false;
	    }
}
