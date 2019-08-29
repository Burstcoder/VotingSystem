<%@page import="voter.AdminDAO"%>
<%@page import="voter.Candidate"%>
<%@page import="java.sql.*"%>
<%@page import="voter.VoterDAO"%>
<%@page import="java.math.BigInteger"%>
<%@page import="voter.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();
try{
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
String str1=dao.getName(v);
out.println("<div align=right><a href=votermenu.jsp><font color=gold><h2>Menu</h2></font></a></div>");//logout page
out.println("<div align=right><font color=white>LOGIN USER:"+str1+"</font></div>");
out.println("<div align=right><a href=logoutvoter.jsp><font color=blue>Logout</font></a></div>");//logout page
ResultSet rs = dao.getstatecity(v);
		%>
		<html>
        <head>
        <meta charset="ISO-8859-1">
        <title>voter registration</title>
		<link rel="stylesheet" type="text/css" href="css/voting.css">
		</head>
		<body>
		<form class="vote" action="votingpoll.jsp" method="get" ><% 
		String state="";
		String city="";
		String name="";
		String party="";
		BigInteger aadhar;
		Candidate obj = new Candidate();
		while (rs.next()) {
	        state=rs.getString(1);
			city=rs.getString(2);
            obj.setState(state);
			obj.setCity(city);
			%><h1><%=state%>(<%=city%>) Elections</h1><h2>Choose Your Candidate</h2><%
			AdminDAO daoo = new AdminDAO();
			ResultSet rss = daoo.getpartycandidate(obj);
			%><div class="radio-group"><%
			while (rss.next()) {
		   name=rss.getString(1);
		   party=rss.getString(2);
		   %><label class="radio"><input type="radio" name="vote" value="<%=party%>" /><%=party%> <%=name%>
			<span></span></label><br>
			<%}%>
			<input type="submit" name="tf3" value="VOTE" onclick="return confirm('Are You Sure?')" />
		<%}
		%></div></form></body></html><%
	} catch (Exception e) {
		out.println(e);
	}
%>
