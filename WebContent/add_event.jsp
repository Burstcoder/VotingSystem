<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%
String usr=(String)session.getAttribute("LOGINUSER");
    out.println("<div align=right><br><b><font color=darkgreen>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:darkblue>Logout</a></br></div>"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/country.js"></script>
<link rel="stylesheet" type="text/css" href="css/candidatemenu.css">
<title>Add Event</title>
</head>
<body>
<div class="middle">
<center><a href="add_event.jsp"><button class="btn btn1" >Add</button></a>
    	<a href="edit_event.jsp"><button class="btn btn1">Edit</button></a>
    	<a href="delete_event.jsp"><button class="btn btn1">Delete</button></a>
    	<a href="view_event.jsp"><button class="btn btn1">View</button></a>
    	</center></div>
 <form class="box" name="add_camp" action="add_eventdata.jsp" method="post">
<font color="gold">
<ul class="form-style-1">
    <h1>Create Event</h1>
    <li><label>Event Name <span class="required">*</span></label>
    	<input type="text" name="name" placeholder="Enter Event Name" />
        <li><br><label>Date From<span class="required">*</span></label> <input type="date" name="from" ></li>
        <li><br><label>Date To<span class="required">*</span></label> <input type="date" name="from" ></li>
        
  <br><li><label>Country<span class="required">*</span></label>
    	<select name ="country" id="country" ></select>
    </li>
    <br><li><label>State<span class="required">*</span></label>
    	 <select name="state" id="state" ></select>
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
