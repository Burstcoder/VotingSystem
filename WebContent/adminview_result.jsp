<%@page import="java.sql.*"%>
<%@page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
try{
    out.println("<div align=left><h2><a href=http://localhost:8080/voting/adminmenu.jsp style=color:gold>Home</a></h2></div>");
String usr=(String)session.getAttribute("LOGINUSER");
out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:darkblue>Logout</a></br></div>");
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/party.css">
<title>Party Details</title>
<script type="text/javascript" src="js/regvalid.js"></script>
<script type="text/javascript" src="js/country.js"></script>
</head>
<body>
<form class="box" name="viewresult" action="adminresult.jsp" method="post">
<font color="gold">
<center><ul class="form-style-1">
    <h1>Election Result</h1>
 
    <br><b>State</b>&nbsp<select name="state" ><option value="no" >Select State</option>
   <%VoterDAO obj2=new VoterDAO();
   ResultSet r=obj2.getstate();
   String state="";
   while(r.next())
   {
	   state=r.getString(1);
	  %><option value="<%=state%>" ><%=state%></option><%
   }
   %><br></select>
   <br><br><br><b>City</b>&nbsp<select name="city" ><option value="no" >Select City</option>
   <%VoterDAO obj=new VoterDAO();
   ResultSet rs=obj.getcity();
   String str="";
   while(rs.next())
   {
	   str=rs.getString(1);
	  %><option value="<%=str%>" ><%=str%></option><%
   }
   %><br></select><%
   %>
   <br><br><br><b>Party &nbsp</b><select name="party" ><option value="no" >Choose Party</option>
   <%AdminDAO obj1=new AdminDAO();
   ResultSet rss=obj1.getparty();
   String party="";
   while(rss.next())
   {
	   party=rss.getString(1);
	  %><option value=<%=party%>><%=party%></option><%
   }
   %><br></select><%
   %>
    <li>
    <br><input type="submit" value="View" />
    </li>
</ul>
</center>
</font>
</form>
</body>
</html>
<% 
}catch(Exception e)
{
	out.println(e);
}%>