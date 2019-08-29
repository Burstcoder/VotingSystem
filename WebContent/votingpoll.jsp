<%@page import="com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException"%>
<%@page import="com.mysql.jdbc.exceptions.*"%>
<%@page import="com.mysql.jdbc.exceptions.MySQLDataException"%>
<%@page import="com.sun.org.apache.regexp.internal.RESyntaxException"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<%@page import="voter.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
try{	
String party=request.getParameter("vote");
BigInteger id=(BigInteger)session.getAttribute("LOGINUSER");;
Voter v=new Voter();
v.setV_aadhar(id);
VoterDAO dao=new VoterDAO();
ResultSet rs=dao.setelectiondetails(v);
String name="";
String city="";
String state="";
String rahul="";
if(rs.next())
{
     rahul=rs.getString(1);
     name=rs.getString(2);
	city=rs.getString(3);
	state=rs.getString(4);
}
BigInteger voterid=new BigInteger(rahul);
AdminDAO daoo=new AdminDAO();
Candidate obj=new Candidate();
obj.setCity(city);
obj.setState(state);
obj.setParty(party);
ResultSet result=daoo.getaadhar(obj);
String cname="";
String yadav="";
if(result.next())
{
    yadav=result.getString(1);
	cname=result.getString(2);

}
BigInteger o=new BigInteger(yadav);
Election e=new Election();
e.setAadhar(o);
e.setCandidatename(cname);
e.setCity(city);
e.setParty(party);
e.setState(state);
e.setVotername(name);
e.setVoterid(voterid);
AdminDAO ele=new AdminDAO();
ele.insertElectionRecord(e);
out.println("<head><style>body{ background-image:url(flag.jpg); background-size:cover;}</style></head><body text=white><center><b><h1>Thankyou for using your vote<br>Your one vote will definitely make a big change.</h1></b><a href=http://localhost:8080/voting/votermenu.jsp style=color:gold><h1>Menu</h1></a></br></div>");

}catch(MySQLIntegrityConstraintViolationException f)
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Sorry!! But You had Already Voted<br>Please Wait For the Results.</h1></b><a href=http://localhost:8080/voting/votermenu.jsp style=color:gold><h1>Back</h1></a></br></div>");
	
}
catch(Exception e)
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Wrong Attempt<br>Go Back</h1></b><a href=http://localhost:8080/voting/votermenu.jsp style=color:gold><h1>Menu</h1></a></br></div>");
}
%>