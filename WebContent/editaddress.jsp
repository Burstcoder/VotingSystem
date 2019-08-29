<%@page import="java.math.BigDecimal"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="voter.VoterDAO"%>
<%@page import="java.math.BigInteger"%>
<%@page import="voter.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
<head>
<link rel="stylesheet" type="text/css" href="css/adminmenu.css">
</head>
<%
try{
BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
out.println("<div align=left><a href=votermenu.jsp><font color=gold><h2>Menu</h2></font></a></div>");//logout page
out.println("<div align=right><font color=white >LOGIN USER:"+str1+"</font></div>");
out.println("<div align=right><a href=logoutvoter.jsp>Sign Out</a></div>");//logout page

ResultSet rs=dao.getRecord(v);
out.println("<form class=box method=get action=updateadd.jsp><font color=skyblue>");
String p="";
String q="";
String r="";
String s="";
while(rs.next())
{
	 s=rs.getString(4);
	 r=rs.getString(3);
	 p=rs.getString(1);
	 q=rs.getString(2);
	 %>
	Phone Number:<input type=text name=ph value="<%=p%>" />
	Address:<input type=text name=add value="<%=q%>" />
	password:<input type=password name=password value="<%=s%>" />
	City:<input type="text" name=city value="<%=r%>" />
	<%
}
out.println("<br><input type=submit value=update /><br>");
out.println("</font></form>");

}
catch(Exception e)
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Please Check Your Request</h1></b><a href=http://localhost:8080/voting/votermenu.jsp style=color:gold><h1>Back</h1></a></br></div>");
}
%>
</html>