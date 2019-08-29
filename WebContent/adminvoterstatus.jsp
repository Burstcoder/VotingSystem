<%@page import="java.math.BigInteger"%>
<%@page import="javax.websocket.Session"%>
<%@ page import="java.sql.*"%>
<%@ page import="voter.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body>
<center>
<table class="content-table"  align="center" >
<thead>
<tr><th>Aadhar Number</th>
<th>Voter Name</th>
<th>DOB</th>
<th>Gender</th>
<th>Address</th>
<th>City</th>
<th>State</th>
<th>Approval</th></tr></thead>
<tbody>
<%     
out.println("<div align=left><a href=adminmenu.jsp><font color=gold><h2>Menu</h2></font></a></div>");

        String usr=(String)session.getAttribute("LOGINUSER");
        out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:darkblue>Logout</a></br></div>");
	    AdminDAO obj=new AdminDAO();
        try{
		ResultSet rs =obj.showUnapproved();
		while(rs.next())
		{
			String o=rs.getString(3);
			BigInteger big=new BigInteger(o);
		%><tr><td><%=big%></td>
		  <td><%=rs.getString(2)%></td>
		  <td><%=rs.getDate(5)%></td>
		  <td><%=rs.getString(6)%></td>
		  <td><%=rs.getString(9)%></td>
		  <td><%=rs.getString(10)%></td>
		  <td><%=rs.getString(13)%></td>
		  <td><%=rs.getString(14)%></td>
		  </tr>	  
		<%}%></tbody>
		</table>
		</center>
		<%ResultSet res = obj.showUnapproved();
		%>
		<br><br><form class="box" method=get action=adminstatusaction.jsp ><div class="select">Select Account Number</div>  
		<select name="aadhar" >
		<%while(res.next()){
			
		%>
		<option value=<%=res.getString(3)%> ><%=res.getString(3)%></option>
		<%}%>
		</select>
		<br><input type=radio name="tf4" value=accept checked/>Accept
		<input type=radio name="tf4" value=reject />Reject
		<br><input type=submit value=Action name=tf1 />
		</form>
		<%
	    }catch(Exception e)
        {
	    	out.println(e);
        }
%>
</body>
</html>