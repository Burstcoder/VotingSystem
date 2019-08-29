<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="voter.*" %>
    <%
    out.println("<div align=left><a href=adminmenu.jsp><font color=gold><h2>Menu</h2></font></a></div>");//logout page
String usr=(String)session.getAttribute("LOGINUSER");
    out.println("<div align=right><br><b><font color=white>User-:"+usr+"</font></b><br><b><a href=http://localhost:8080/voting/Logout.jsp style=color:gold>Logout</a></br></div>"); %>
    <html>
<head>
<link rel="stylesheet" type="text/css" href="css/parties.css">
<title>Party Details</title>
<script type="text/javascript" src="js/regvalid.js"></script>
<script type="text/javascript" src="js/country.js"></script>
</head>
<body>
<form class="box" name="add_camp" action="party_detail.jsp" method="post">
<center>
<font color="gold">
<ul class="form-style-1">
    <h1><font color=white>Search Party</font></h1>
<br><li><label>Country<span class="required">*</span></label>
    	<select name ="country" id="country" ></select>
    </li>
    <br><li><label>State<span class="required">*</span></label>
    	 <select name="state" id="state" ></select>
    </li>
    <li>
    <input type="submit" value="Submit" />
    <input type="reset" value="Clear" />
    </li>
</ul>
<script type="text/javascript">
populateCountries("country","state");
</script>
</font>
</center>
</form>
<%
try{
String state=request.getParameter("state");
session.setAttribute("STATE",state);
Candidate obj=new Candidate();
AdminDAO dao=new AdminDAO();
obj.setState(state);
ResultSet rs=dao.searchparty(obj);

%>
<br>
<br>
<center>
<%    	while(rs.next())
		{%>
<table class="content-table"  align="center" >
<thead>
<tr><th>Party Name</th>
</thead>
<tbody>
<form action="partydetail.jsp" method="post">

			<% String o=rs.getString(1);
		   %><tr><td><div class="middle">
<center><button type="submit" name="party" class="btn btn1" value="<%=o%>"  ><%=o%></button></td></tr>	  
		<%}%>
		</form>
		</tbody>
		</table>
		</center>
</body>
</html>
<%
}
catch(Exception e)
{
	out.println(e);
}
%>






    	