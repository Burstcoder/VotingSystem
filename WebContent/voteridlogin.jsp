<%@page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
try{
BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
out.println("<div align=right>LOGIN USER:"+str1+"</div>");
out.println("<div align=right><a href=logoutvoter.jsp><font color=gold>Sign Out</font></a></div>");//logout page
String voter_id=request.getParameter("voterid");
String password=request.getParameter("pass");
BigInteger voterid=new BigInteger(voter_id);
v.setVoter_id(voterid);
v.setPassword(password);
boolean b=dao.validateVoterid(v);
if(b==true)
{
response.sendRedirect("voting_poll.jsp");	
}
else if(b==false)
{
	out.println("<body text=white><center><b><h1>Wrong Voter-ID And Password<br></h1></b><a href=http://localhost:8080/voting/voterid_login.jsp ><font color=gold><h1>Back</h1></font></a></br></div>");
}
else
{
out.println("<body text=white><center><b><h1>Wrong Voter-ID And Password<br></h1></b><a href=http://localhost:8080/voting/voterid_login.jsp ><font color=gold><h1>Back</h1></font></a></div>");
}
}catch(NumberFormatException e)
{
	out.println("<body text=white><center><b><h1>Wrong Voter-ID And Password<br></h1></b><a href=http://localhost:8080/voting/voterid_login.jsp > <font color=gold><h1>Back</h1></font></a></br></div>");
}
catch(Exception f)
{
	out.println("<body text=white><center><b><h1>Wrong Voter-ID And Password<br></h1></b><a href=http://localhost:8080/voting/voterid_login.jsp > <font color=gold><h1>Back</h1></font></a></br></div>");
}
%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url(background.jpg);
	background-size: 100%;
}
</style>
</head>
</body>
</html>