<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="javax.websocket.Session"%>
<%@ page import="java.sql.*"%>
<%@ page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<% 
try{
out.println("<div align=left><a href=party_detail.jsp><font color=gold><h2>Back</h2></font></a></div>");//logout page
        String city=request.getParameter("city");
        String aadhar=request.getParameter("aadhar");
        String party=(String)session.getAttribute("PARTY");
        String state=(String)session.getAttribute("STATE");
if(city.equals("nocity") && aadhar.equals("noaadhar"))
{

	    Candidate obj=new Candidate();
	    obj.setState(state);
	    obj.setParty(party);
	    obj.setCity(city);
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body>
<center>
<font color="white">
<h1>All Candidates<h1>
</font>
<table class="content-table"  align="center" >
<thead>
<tr><th>Aadhar Number</th>
<th>Candidate Name</th>
<th>Age</th>
<th>Party</th>
<th>Gender</th>
<th>Address</th>
<th>State</th>
<th>City</th>
</thead>
<tbody>
<%
      AdminDAO dao=new AdminDAO();
        try{
		ResultSet rs =dao.showbyboth(obj);
		while(rs.next())
		{
			String o=rs.getString(1);
			BigInteger big=new BigInteger(o);
		%><tr><td><%=big%></td>
		  <td><%=rs.getString(2)%></td>
		  <td><%=rs.getInt(3)%></td>
		  <td><%=rs.getString(5)%></td>
		  <td><%=rs.getString(6)%></td>
		  <td><%=rs.getString(7)%></td>
		  <td><%=rs.getString(8)%></td>
		  <td><%=rs.getString(9)%></td>
		  </tr>	  
		<%}%></tbody>
		</table>
		</center>
		<%}catch(Exception e)
        {
	    	out.println(e);
        }
}
%>
</body>
</html>
<% 
if(!city.equals("nocity") && aadhar.equals("noaadhar"))
{
    Candidate obj=new Candidate();
    obj.setState(state);
    obj.setParty(party);
    obj.setCity(city);
	%>
	<html>
	<head>
	<link rel="stylesheet" type="text/css" href="css/admin.css">
	</head>
	<body>
	<center>
    <font color="white">
	<h1>Candidate from <%out.println(city);%></h1>
	<center>
	<table class="content-table"  align="center" >
	<thead>
	<tr><th>Aadhar Number</th>
	<th>Candidate Name</th>
	<th>Age</th>
	<th>Party</th>
	<th>Gender</th>
	<th>Address</th>
	<th>State</th>
	<th>City</th>
	</thead>
	<tbody>
	<%
	      AdminDAO dao=new AdminDAO();
	        try{
			ResultSet rs =dao.showbycity(obj);
			while(rs.next())
			{
				String o=rs.getString(1);
				BigInteger big=new BigInteger(o);
			%><tr><td><%=big%></td>
			  <td><%=rs.getString(2)%></td>
			  <td><%=rs.getInt(3)%></td>
			  <td><%=rs.getString(5)%></td>
			  <td><%=rs.getString(6)%></td>
			  <td><%=rs.getString(7)%></td>
			  <td><%=rs.getString(8)%></td>
			  <td><%=rs.getString(9)%></td>
			  </tr>	  
			<%}%></tbody>
			</table>
			</center>
			<%}catch(Exception e)
	        {
		    	out.println(e);
	        }
	}
	%>
	</body>
	</html>
<% 
if(city.equals("nocity") && !aadhar.equals("noaadhar"))
{
	   Candidate obj=new Candidate();
	    obj.setState(state);
	    obj.setParty(party);
        String aadha=request.getParameter("aadhar");
        BigInteger big1=new BigInteger(aadha);
	    obj.setAadhar(big1);
	%>
	<html>
	<head>
	<link rel="stylesheet" type="text/css" href="css/admin.css">
	</head>
	<body>
	<center>
    <font color="white">
	<h1>Candidate Whose Aadhar is <%out.println(aadhar);%></h1>
	<table class="content-table"  align="center" >
	<thead>
	<tr><th>Aadhar Number</th>
	<th>Candidate Name</th>
	<th>Age</th>
	<th>Party</th>
	<th>Gender</th>
	<th>Address</th>
	<th>State</th>
	<th>City</th>
	</thead>
	<tbody>
	<%
	      AdminDAO dao=new AdminDAO();
	        try{
			ResultSet rs =dao.showbyaadhar(obj);
			while(rs.next())
			{
				String o=rs.getString(1);
				BigInteger big=new BigInteger(o);
			%><tr><td><%=big%></td>
			  <td><%=rs.getString(2)%></td>
			  <td><%=rs.getInt(3)%></td>
			  <td><%=rs.getString(5)%></td>
			  <td><%=rs.getString(6)%></td>
			  <td><%=rs.getString(7)%></td>
			  <td><%=rs.getString(8)%></td>
			  <td><%=rs.getString(9)%></td>
			  </tr>	  
			<%}%></tbody>
			</table>
			</center>
			<%}catch(Exception e)
	        {
		    	out.println(e);
	        }
	}
	%>
	</body>
	</html>
<%
if(!city.equals("nocity") && !aadhar.equals("noaadhar"))
{
	out.println("<head><style>body{background-image: url(background.jpg);background-size: 100%;}</style></head><body text=white><center><b><h1>Please Select Only One Option<br></h1></b></div>");
}
}catch(Exception e)
{
	out.println("<head><style>body{background-image: url(background.jpg);background-size: 100%;}</style></head><body text=white><center><b><h1>Wrong Attempt<br></h1></b></div>");

}
%>