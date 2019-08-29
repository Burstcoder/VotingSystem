<%@page import="javax.websocket.Session"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body>
<table class="content-table"  align="center" >
<thead>
<tr><th>Aadhar Number</th>
<th>Voter Name</th>
<th>Date-Of-Birth</th>
<th>Gender</th>
<th>Address</th>
<th>City</th>
<th>State</th>
<th>Approval</th></tr></thead>
<tbody>
<%      
        String usr=(String)session.getAttribute("LOGINUSER");
        out.println("<div align=right><br><b><font color=darkgreen>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:darkblue>Logout</a></br></div>");
	    try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_database", "root", "welcome");
		PreparedStatement pst=con.prepareStatement("select * from bank where Approval=?");
		pst.setString(1,"N");
		ResultSet rs = pst.executeQuery();
		while(rs.next())
		{
		%><tr><td><%=rs.getInt(1)%></td>
		  <td><%=rs.getString(2)%></td>
		  <td><%=rs.getInt(3)%></td>
		  <td><%=rs.getString(4)%></td>
		  <td><%=rs.getString(5)%></td></tr>	  
		<%}%></tbody>
		</table>
		<%ResultSet res = pst.executeQuery(); %>
		<br><br><form class="box" method=get action=adminaction.jsp ><div class="select">Select Account Number</div>  
		<select name="account" >
		<%while(res.next()){%>
		<option value=<%=res.getInt(1)%>><%=res.getInt(1)%></option>
		<%}%>
		</select>
		
		<br><input type=radio name="tf4" value=accept selected />Accept
		<input type=radio name="tf4" value=reject />Reject
		<br><input type=submit value=Action name=tf1 />
		</form>
		<%
		pst.close();
		con.close();
	    }catch(Exception e)
        {
	    	out.println(e);
        }
%>
</body>
</html>