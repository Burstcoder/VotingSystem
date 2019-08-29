<%@page import="java.sql.ResultSet"%>
<%@page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<%@page import="voter.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
BigInteger id=new BigInteger("123456789123");
Voter v=new Voter();
try{
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/party.css">
<title>Party Details</title>
<script type="text/javascript" src="js/regvalid.js"></script>
<script type="text/javascript" src="js/country.js"></script>
</head>
<body>
<form class="box" name="viewresult" action="menu_viewresult.jsp" method="post">
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