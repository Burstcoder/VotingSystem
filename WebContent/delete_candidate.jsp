<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.math.BigInteger"%>
    <%@page import="javax.websocket.Session"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="voter.*"%>
<%
out.println("<div align=left><a href=http://localhost:8080/voting/adminmenu.jsp style=color:gold><h2>Menu</h2></a></br></div>");

String usr=(String)session.getAttribute("LOGINUSER");
    out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:gold>Logout</a></br></div>"); %>
    <html>
<head>
<link rel="stylesheet" type="text/css" href="css/addcandidate.css">
<title>Delete Candidate</title>
</head>
<body>
    <center><div class="middle">
<a href="add_candidate.jsp"><button class="btn btn1" >Add</button></a>
    	<a href="delete_candidate.jsp"><button class="btn btn1">Delete</button></a>
    	</div></center>
    	<%
      AdminDAO obj=new AdminDAO();
        try{
		ResultSet res =obj.displaycandidate();%>
	
		<br><br><form class="boy" method=get action=deletecandidate.jsp ><div class="select">Select Account Number</div>  
		<select name="aadhar" >
		<%while(res.next()){%>
		<option value=<%=res.getString(1)%> ><%=res.getString(1)%></option>
		<%}%>
		</select>
		<br>
		<br><input type=submit value=Delete name=tf1 />
		</form>
		<br>
		<br>
		<br>
		<br>
    	</body>
    	</html>
    	 <% }catch(Exception e)
        {
	    	out.println(e);
        }
        %>	
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/addcandidate.css">
</head>
<body>
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
      AdminDAO obj1=new AdminDAO();
        try{
		ResultSet rs =obj1.displaycandidate();
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
		<%
	    }catch(Exception e)
        {
	    	out.println(e);
        }
%>
</body>
</html>