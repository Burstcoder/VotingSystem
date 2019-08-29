<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.concurrent.DelayQueue"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@page import="voter.VoterDAO"%>
<%@page import="java.math.BigInteger"%>
<%@page import="voter.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();
try{
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
out.println("<div align=right><font color=white>LOGIN USER:"+str1+"</font></div>");
out.println("<div align=right><a href=logoutvoter.jsp><font color=gold>Sign Out</font></a></div>");//logout page
ResultSet rs=dao.checkVoterStatus(v);
String str="";
while(rs.next())
{
	str=rs.getString(1);
}
if(str.equals("N"))
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Your Request Is In Process<br>Please Wait..</h1></b><a href=http://localhost:8080/voting/votermenu.jsp style=color:gold><h1>Back</h1></a></br></div>");
}
else if(str.equals("Y"))
{
	BigInteger vid=dao.showVoterId(v);
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Your Voter ID:"+vid+"<br></h1></b><a href=http://localhost:8080/voting/votermenu.jsp style=color:gold><h1>Back</h1></a></br></div>");
}
else
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Sorry!!Your Request Has Been Rejected<br></h1></b></center></body>");
dao.deleteRecord(v);
out.println("<div><a href=logoutvoter.jsp><center><h1>Back</h1></center></a></div>");

}
}catch(Exception e)
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Oops! Something wrong</h1></b><a href=http://localhost:8080/voting/votermenu.jsp style=color:gold><h1>Back</h1></a></br></div>");
}
%>