<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
String usr=(String)session.getAttribute("LOGINUSER");
    out.println("<div align=right><br><b><font color=darkgreen>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:darkblue>Logout</a></br></div>"); %>
    <html>
<head>
<link rel="stylesheet" type="text/css" href="css/candidatemenu.css">
<title>Edit Candidate</title>
</head>
<body>
    <div class="middle">
<center><a href="add_candidate.jsp"><button class="btn btn1" >Add</button></a>
    	<a href="edit_candidate.jsp"><button class="btn btn1">Edit</button></a>
    	<a href="delete_candidate.jsp"><button class="btn btn1">Delete</button></a>
    	<a href="view_candidate.jsp"><button class="btn btn1">View</button></a>
    	</center></div>
    	</body>
    	</html>