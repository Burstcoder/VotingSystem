<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    out.println("<div align=left><h2><a href=http://localhost:8080/voting/adminmenu.jsp style=color:gold>Home</a></h2></div>");
    String usr=(String)session.getAttribute("LOGINUSER");
    out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:darkblue>Logout</a></br></div>"); %>
<html>
<head>
<title>Admin Menu</title>
<link rel="stylesheet" type="text/css" href="css/adminmenu.css">
</head>
<body>
<div class="middle">
<button onclick="location.href='publish_result.jsp'" class="btn btn1" >Publish Results</button>
<button onclick="location.href='adminview_result.jsp'" class="btn btn1">View Results</button>
<button onclick="location.href='unpublish_result.jsp'" class="btn btn1" >Unpublish Results</button>
</div>
</body>
</html>