<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="voter.*" %>
    <%
    out.println("<div align=left><a href=adminmenu.jsp><font color=gold><h2>Menu</h2></font></a></div>");//logout page
    String usr=(String)session.getAttribute("LOGINUSER");
    out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:darkblue>Logout</a></br></div>"); 
    %>
    <html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/admin.css">
    </head>
<% 
String party=request.getParameter("party");
session.setAttribute("PARTY",party);
String state=(String)session.getAttribute("STATE");
Candidate obj=new Candidate();
obj.setParty(party);
obj.setState(state);
AdminDAO dao=new AdminDAO();
try{
%>	
		<body><br><br><form class="box" method=get action=partychoice.jsp >  
		<% 
		ResultSet res=dao.showpartycandidate(obj);%>
		<h3>Choose Either City</h3>
		<select name="city" >
		<option value="nocity">Please Select City</option>
		<%while(res.next()){
			String city=res.getString(1);
		%>
		
		<option value="<%=city%>" ><%=city%></option>
		<%}%>
		</select>
		<br>
		<% 
		ResultSet resu=dao.showpartybyaadhar(obj);%>
		<h3>Or<br>Aadhar</h3>
		<select name="aadhar" >
		<option value="noaadhar">Please Select Aadhar</option>
		<%while(resu.next()){%>
		<option value=<%=resu.getBigDecimal(1)%> ><%=resu.getBigDecimal(1)%></option>
		<%}%>
		</select>
		<br>
		<br><input type="submit" value="Show" />
		</form>
		</body>
		</html>
		<% }catch(Exception e)
        {
	    	out.println(e);
        }
        %>	
        