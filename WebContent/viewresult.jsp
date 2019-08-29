<%@page import="java.sql.*"%>
<%@page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
out.println("<div align=left><a href=view_result.jsp><font color=gold><h2>Back</h2></font></a></div>");//logout page
BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();
try{
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
out.println("<div align=right><font color=white >LOGIN USER:"+str1+"</font></div>");
out.println("<div align=right><a href=logoutvoter.jsp><font color=blue>Sign Out</font></a></div>");//logout page
String state=request.getParameter("state");
String city=request.getParameter("city");
String party=request.getParameter("party");
Election obj=new Election();
obj.setState(state);
obj.setCity(city);
obj.setParty(party);
AdminDAO d=new AdminDAO();
int count=0;
ResultSetMetaData rsmd;
String meta="";
String partyy="";
int c=0;
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/result.css">
</head>
<body>
<center>
<table class="content-table"  align="center" >
<h1><font color=white><br>Voting Results</font></h1>
<thead>
<tr><%
if(state.equals("no") &&  city.equals("no") && party.equals("no") )
{
%><h1>Oops!!Result Not Found<br>Please select a field</h1><br><a href="view_result.jsp"><h1>Back</h1></a><%	
}
//case-2:
else if(!state.equals("no") &&  city.equals("no") && party.equals("no") )
{
	%><th>Total</th><%
	ResultSet rs=d.s(obj);
	 while(rs.next())
	 {
	 partyy=rs.getString(1);%>
	 <th><%=partyy%></th>
	 <%}%></tr></thead>
	 <tbody><tr>
	 <%
	 ResultSet r=d.s(obj);
	 while(r.next())
	 {
	 c+=r.getInt(2);
	 }
	 %><td><%=c%></td><% 
	 ResultSet rss=d.s(obj);
	 while(rss.next())
	 {
	 count=rss.getInt(2);%>
	 <td><%=count%></td>
	 <%}%></tr></tbody></table></center></body></html>
	 <%}

//case-3:
else if(!state.equals("no") &&  !(city.equals("no")) && party.equals("no") )
{
	%><th>Total</th><%
	ResultSet rs=d.sc(obj);
	 while(rs.next())
	 {
	 partyy=rs.getString(1);%>
	 <th><%=partyy%></th>
	 <%}%></tr></thead>
	 <tbody><tr>
	 <%
	 ResultSet r=d.sc(obj);
	 while(r.next())
	 {
	 c+=r.getInt(2);
	 }
	 %><td><%=c%></td><% 
	 ResultSet rss=d.sc(obj);
	 while(rss.next())
	 {
	 count=rss.getInt(2);%>
	 <td><%=count%></td>
	 <%}%></tr></tbody></table></center></body></html>
	 <%}
//case-4:
else if(!state.equals("no") &&  city.equals("no") && !(party.equals("no")) )
{
	%><th>Total</th><%
	ResultSet rs=d.sp(obj);
	 while(rs.next())
	 {
	 partyy=rs.getString(1);%>
	 <th><%=partyy%></th>
	 <%}%></tr></thead>
	 <tbody><tr>
	 <%
	 ResultSet r=d.sp(obj);
	 while(r.next())
	 {
	 c+=r.getInt(2);
	 }
	 %><td><%=c%></td><% 
	 ResultSet rss=d.sp(obj);
	 while(rss.next())
	 {
	 count=rss.getInt(2);%>
	 <td><%=count%></td>
	 <%}%></tr></tbody></table></center></body></html>
	 <%}
//case-5:
else if(!state.equals("no") &&  !(city.equals("no")) && !(party.equals("no")) )
{
	%><th>Total</th><%
	 ResultSet rs=d.scp(obj);
	 while(rs.next())
	 {
	 partyy=rs.getString(1);%>
	 <th><%=partyy%></th>
	 <%}%></tr></thead>
	 <tbody><tr>
	 <%
	 ResultSet r=d.scp(obj);
	 while(r.next())
	 {
	 c+=r.getInt(2);
	 }
	 %><td><%=c%></td><% 
	 ResultSet rss=d.scp(obj);
	 while(rss.next())
	 {
	 count=rss.getInt(2);%>
	 <td><%=count%></td>
	 <%}%></tr></tbody></table></center></body></html>
	 <%
}
//case-6:
else if(state.equals("no") &&  !(city.equals("no")) && party.equals("no") )
{
	%><th>Total</th><%
	ResultSet rs=d.c(obj);
	 while(rs.next())
	 {
	 partyy=rs.getString(1);%>
	 <th><%=partyy%></th>
	 <%}%></tr></thead>
	 <tbody><tr>
	 <%
	 ResultSet r=d.c(obj);
	 while(r.next())
	 {
	 c+=r.getInt(2);
	 }
	 %><td><%=c%></td><% 
	 ResultSet rss=d.c(obj);
	 while(rss.next())
	 {
	 count=rss.getInt(2);%>
	 <td><%=count%></td>
	 <%}%></tr></tbody></table></center></body></html>
	 <%}
//case-7:
else if(state.equals("no") &&  city.equals("no") && !(party.equals("no")) )
{
	%><th>Total</th><%
	ResultSet rs=d.p(obj);
	 while(rs.next())
	 {
	 partyy=rs.getString(1);%>
	 <th><%=partyy%></th>
	 <%}%></tr></thead>
	 <tbody><tr>
	 <%
	 ResultSet r=d.p(obj);
	 while(r.next())
	 {
	 c+=r.getInt(2);
	 }
	 %><td><%=c%></td><% 
	 ResultSet rss=d.p(obj);
	 while(rss.next())
	 {
	 count=rss.getInt(2);%>
	 <td><%=count%></td>
	 <%}%></tr></tbody></table></center></body></html>
	 <%}
//case-8:
else if(state.equals("no") &&  !(city.equals("no")) && !(party.equals("no")) )
{
	%><th>Total</th><%
	ResultSet rs=d.cp(obj);
	 while(rs.next())
	 {
	 partyy=rs.getString(1);%>
	 <th><%=partyy%></th>
	 <%}%></tr></thead>
	 <tbody><tr>
	 <%
	 ResultSet r=d.cp(obj);
	 while(r.next())
	 {
	 c+=r.getInt(2);
	 }
	 %><td><%=c%></td><% 
	 ResultSet rss=d.cp(obj);
	 while(rss.next())
	 {
	 count=rss.getInt(2);%>
	 <td><%=count%></td>
	 <%}%></tr></tbody></table></center></body></html>
	 <%}
}catch(Exception e)
{
	out.println(e);
}
%>