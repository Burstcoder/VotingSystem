<%@page import="java.sql.*"%>
<%@page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
try{
String usr=(String)session.getAttribute("LOGINUSER");
out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:gold>Logout</a></br></div>");
VoterDAO dao=new VoterDAO();
dao.unpublish_result();
out.println("<head><style>body{ background-image:url(10.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Result is Unpublished sucessfully</h1></b><a href=http://localhost:8080/voting/publishresult.jsp style=color:gold><h1>Back</h1></a></br></div>");
}catch(Exception e)
{
	out.println(e);
}
%>