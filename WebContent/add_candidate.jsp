<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%
            out.println("<div align=left><a href=http://localhost:8080/voting/adminmenu.jsp style=color:gold><h2>Menu</h2></a></div>");
String usr=(String)session.getAttribute("LOGINUSER");
    out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:gold>Logout</a></br></div>"); %>
 <div class="middle">
<center><a href="add_candidate.jsp"><button class="btn btn1" >Add</button></a>
    	<a href="delete_candidate.jsp"><button class="btn btn1">Delete</button></a>
    	</center></div>
<html>
<head>
<title>Add Candidate</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/addcandidate.css"  />
<script type="text/javascript" src="js/country.js"></script>
<script type="text/javascript" src="js/regcan.js"></script>
</head>
<body onload="document.register.name.focus()">

 <form class="box" name="add_camp" action="add_candidatedata.jsp" onsubmit="return regcan()" method="post">
<font color="gold">
<ul class="form-style-1">
    <h1>Candidate Registration Form</h1>
    <li><label>Candidate Name <span class="required">*</span></label>
    	<input type="text" name="name" placeholder="Enter Candidate Name" required />
        <li><br><label>Aadhar Number<span class="required">*</span></label> <input type=text name="aadhar" placeholder="Enter Aadhaar Number" required></li>
        <li><label>Age <span class="required">*</span></label>
   		 <input type="text" name="age" placeholder="Enter Age" />
    </li>	
        <li><label>Contact <span class="required">*</span></label>
   		 <input type="text" name="contact" placeholder="Enter Contact Number" required />
    </li>
    <li><label>Party Name <span class="required">*</span></label>
    	<input type="text" name="party" placeholder="Enter Party Name" required />	
    </li>
    <li><br><br><label>Gender:<span class="required">* </span><input type=radio name="gender" value=male checked />Male 
<input type=radio name="gender" value=female />Female 
<input type=radio name="gender" value=others />Others </li>
  <br><li><label>Address <span class="required">*</span></label>
   		 <input type="text" name="address" class="field-divided" placeholder="Enter Address" required />
    </li>
  <br><li><label>Country<span class="required">*</span></label>
    	<select name ="country" id="country" required></select>
    </li>
    <br><li><label>State<span class="required">*</span></label>
    	 <select name="state" id="state" required></select>
    </li> 
        <br><li><label>City <span class="required">*</span></label>
   		 <input type="text" name="city" class="field-divided" placeholder="Enter City" required />
    </li>
    <li>
    <input type="submit" value="Add" />
    <input type="reset" value="Clear" />
    </li>
<br>
     
</ul>
</center>

<script type="text/javascript">
populateCountries("country","state");
</script>
</font>
</form>
</body>
</html>
