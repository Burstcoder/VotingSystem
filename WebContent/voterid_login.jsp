<%@page import="voter.VoterDAO"%>
<%@page import="java.math.BigInteger"%>
<%@page import="voter.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
try{
BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();

v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
out.println("<div align=left><a href=votermenu.jsp><font color=gold><h2>Menu</h2></font></a></div>");//logout page
out.println("<div align=right><font color=white>LOGIN USER:"+str1+"</font></div>");
out.println("<div align=right><a href=logoutvoter.jsp>Sign Out</a></div>");//logout page
}catch(Exception e)
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Sorry!!Your Request Has Been Rejected<br></h1></b></center></body>");
}
%>
<html>
<head>
<title>voting poll login</title>
<link rel="stylesheet" type="text/css" href="css/voterlogin.css">
</head>
<body>
<center><form name="login" action="voteridlogin.jsp" class="box" method="get">
<h1>Voting poll Login</h1>
<br><input type="text" name="voterid" placeholder="Enter Voter-ID" required="" oninvalid="this.setCustomValidity('Please Enter Voter-ID')" oninput="setCustomValidity('')">
<br><input type="password" name="pass"  placeholder="Enter Password" required="" oninvalid="this.setCustomValidity('Enter Your Password')" oninput="setCustomValidity('')">
<br><input type="submit" value="LOGIN"><br>
<div class="button"><a href="http://localhost:8080/voting/forgotpassword.html">Forgot Password</a>
</body>
</html>
