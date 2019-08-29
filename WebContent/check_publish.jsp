<%@page import="java.sql.*"%>
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
out.println("<div align=right><font color=white >LOGIN USER:"+str1+"</font></div>");
out.println("<div align=right><a href=logoutvoter.jsp><font color=gold>Sign Out</font></a></div>");//logout page
ResultSet rs=dao.getresult_status(v);
String status="";
while(rs.next())
{
	status=rs.getString(1);
}
if(status.equals("Y"))
{
response.sendRedirect("view_result.jsp");	
}
else
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Result will display on 01-Aug-2019<br>Please Visit Again on Declared Date</h1></b><a href=http://localhost:8080/voting/votermenu.jsp style=color:gold><h1>Back</h1></a></br></div>");
}
}catch(Exception e)
{
	out.println(e);
}
%>