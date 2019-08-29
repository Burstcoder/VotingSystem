function regcan()  
{  
	var name= document.register.name;
	var aadhar =document.register.aadhar;
	var uage= document.register.age; 
	var uparty= document.register.party;
	var ucontact= document.register.contact;
	var uadd= document.register.address;
	var ucity= document.register.city;

	if(first_name(name))  
	{ 
		if(aadharc(aadhar,12))
		{
			if(agec(uage))   
			{   
				if(partyc(uparty))	
				{

					if(caddress(uadd))
					{
						if(cusercity(ucity))
						{
							return true;	
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
function partyc(uparty)  
{   
	var letters =/^[A-Za-z\ \/]+$/;
	if(uparty.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert("answer must have alphanumeric characters only");  
		uparty.focus();  
		return false;  
	}  
}  

function agec(uage)
{

	var letters =/^[0-9]+$/;
	if(uage.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert("age should be digits only ");  
		uage.focus();  
		return false;  
	}  	
}
