<%@page import="java.math.BigInteger"%>
<%@page import="voter.VoterDAO"%>
<%@page import="voter.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();
try{
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
out.println("<div align=left><a href=votermenu.jsp><font color=gold><h2>Menu</h2></font></a></div>");//logout page
out.println("<div align=right>LOGIN USER:"+str1+"</div>");
out.println("<div align=right><a href=logoutvoter.jsp><font color=gold>Sign Out</font></a></div>");//logout page
String ph=request.getParameter("ph");
String add=request.getParameter("add");
String city=request.getParameter("city");
String password=request.getParameter("password");
v.setV_add(add);
v.setCity(city);
v.setPassword(password);
BigInteger phn=new BigInteger(ph);
v.setContact(phn);
boolean b=dao.updateAddress(v);
if(b==false)
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Record Not Found<br></h1></b><a href=http://localhost:8080/voting/editaddress.jsp style=color:gold><h1>Back</h1></a></br></div>");
}
	else
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Profile Updated<br></h1></b><a href=http://localhost:8080/voting/editaddress.jsp style=color:gold><h1>Back</h1></a></br></div>");

}
}catch(Exception e)
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Please check Your Request<br></h1></b><a href=http://localhost:8080/voting/editaddress.jsp style=color:gold><h1>Back</h1></a></br></div>");
}
%>