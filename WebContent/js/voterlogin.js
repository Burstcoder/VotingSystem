function voterlogin()  
{  
	var aadhar= document.register.aadha;
	var upassword =document.register.pass;
	if(aadharc(aadhar,12))
	{
		if(pwd(upassword))   
		{
			return true;	
		}
	}
	return false;
}
function aadharc(aadhar,m)  
{   
	var letters =/^[0-9]+$/;
	var aadhar_len = aadhar.value.length;  
	if((aadhar.value.match(letters))&&(aadhar_len==m))  
	{ 
		return true;
	}  
	else
	{  
		alert("Aadhar Number must be in a proper format / length should be "+m+" digits");  
		aadhar.focus();  
		return false;  
	}  

}

function pwd(upassword)  
{   
	var passid_len = upassword.value.length;  
	if (passid_len <= 20 && passid_len > 8)  
	{  
		return true;  
	}  
	else
	{
		alert("Password should not be empty / length be between 20 to 10");  
		upassword.focus();  
		return false;  
	}

}