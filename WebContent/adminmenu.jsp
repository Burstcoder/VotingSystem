<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String usr=(String)session.getAttribute("LOGINUSER");
    
    out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:darkblue>Logout</a></br></div>"); %>
<html>
<head>
<title>Admin Menu</title>
<link rel="stylesheet" type="text/css" href="css/adminmenu.css">
</head>
<body>
<div class="middle">
<button onclick="location.href='adminvoterstatus.jsp'" class="btn btn1" >Unapproved Voters</button>
<button onclick="location.href='add_candidate.jsp'" class="btn btn1">Candidates</button>
<button onclick="location.href='party_detail.jsp'" class="btn btn1">Party Details</button>
<button onclick="location.href='publishresult.jsp'" class="btn btn1">Results</button>
</div>
</body>
</html>