<%@page import="voter.VoterDAO"%>
<%@page import="java.math.BigInteger"%>
<%@page import="voter.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();
try{
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);

out.println("<div align=right><font color=white >LOGIN USER:"+str1+"</font></div>");
out.println("<div align=right><a href=logoutvoter.jsp>Sign Out</a></div>");//logout page
}catch(Exception e)
{
	out.println(e);
}
%>
<html>
<head>
<title>voter home</title>
<link rel="stylesheet" type="text/css" href="css/adminmenu.css">
</head>
<body>
<div class="middle">
<button onclick="location.href='editaddress.jsp'" class="btn btn1">Edit Profile</button>
<button onclick="location.href='status.jsp'" class="btn btn1">Status</button>
<button onclick="location.href='voterid_login.jsp'" class="btn btn1">Voting Poll</button>
<button onclick="location.href='check_publish.jsp'" class="btn btn1">Voting Results</button>
</div>
</body>
</html>