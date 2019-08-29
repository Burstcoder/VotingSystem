<%@page import="java.sql.*"%>
<%@page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
Voter v=new Voter();
try{
BigInteger id=new BigInteger("123456789123");
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
out.println("<div align=right><font color=white >LOGIN USER:Guest</font></div>");
ResultSet rs=dao.getresult_status(v);
String status="";
while(rs.next())
{
	status=rs.getString(1);
}
if(status.equals("Y"))
{
response.sendRedirect("menu_resultnext.jsp");	
}
else
{
	out.println("<head><style>body{ background-image:url(10.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Result will display on 01-Aug-2019<br>Please Visit Again on Declared Date</h1></b><a href=http://localhost:8080/voting/Home.html style=color:gold><h1>Back</h1></a></br></div>");
}
}catch(Exception e)
{
	out.println(e);
}
%>