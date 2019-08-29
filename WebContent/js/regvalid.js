function regvalid()  
{  
	var name= document.register.name;
	var aadhar =document.register.aadhar;
	var election= document.register.id;
	var ucontact= document.register.contact; 
	var uemail= document.register.email;
	var uadd= document.register.address;
	var upassword= document.register.password;
	var upass= document.register.pass1;
	var ucity= document.register.city;
	var uanswer= document.register.answer;

		if(first_name(name))  
		{ 
			if(aadharc(aadhar,12))
			{
				if(pwd(upassword))   
				{   
					if(confirm_pwd(upass,upassword))	
					{
						if(cemail(uemail))
						{
							if(caddress(uadd))
							{
								if(cusercity(ucity))
								{
									if(contactc(ucontact))
									{
										if(canswer(uanswer))
										{
											return true;	
										}
									}   	  
								}
							}
						}
					}
				}
			}
		}
	return false;  
}
function first_name(name)  
{   
	var letters = /^[A-Za-z_\ \/]+$/;  
	if(name.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('Name should have alphabet characters only');  
		name.focus();  
		return false;  
	}  
}
function cemail(uemail)  
{ 
	//w=[A-Za-z0-9]
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
	if(uemail.value.match(mailformat))  
	{  
		return true;  
	}  
	else  
	{  
		alert('You have entered an invalid email address!');  
		uemail.focus();  
		return false;  
	}  
}
function caddress(uadd)  
{   
	var letters =/^[A-Za-z0-9_\.\-\&\ \/]+$/;
	if(uadd.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert("User address must have alphanumeric characters only");  
		uadd.focus();  
		return false;  
	}  
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
function contactc(ucontact)  
{   
	var letters =/^[0-9]+$/;
	var n=10;
	var contactc_len= ucontact.value.length;  
	if((ucontact.value.match(letters))&&(contactc_len==n))  
	{  

		return true;
	}
	else
	{  
		alert("please enter correct phone number");  
		ucontact.focus();  
		return false;  
	}  
}
function cusercity(ucity)  
{   
	var letters =/^[A-Za-z_\ \/]+$/;
	if(ucity.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert("City must have alphabets only");  
		ucity.focus();  
		return false;  
	}  
}
function canswer(uanswer)  
{   
	var letters =/^[A-Za-z0-9_\.\-\&\ \/]+$/;
	if(uanswer.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert("answer must have alphanumeric characters only");  
		uanswer.focus();  
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
function confirm_pwd(upass,upassword)
{
	var passw=upass.value;
	var upassw=upassword.value;
	if (upassw==passw) 
	{
		return true;
	} else {
		alert("wrong password!! please check");
		upass.focus();
		return false;
	}
}
