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