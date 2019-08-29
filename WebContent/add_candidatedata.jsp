<%@page import="voter.Candidate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.websocket.Session"%>
<%@ page import="voter.Voter"%>
<%@ page import="voter.AdminDAO"%>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.util.Date"%>
<% 
try{
String name=request.getParameter("name");
String aadha=request.getParameter("aadhar");
BigInteger aadhar=new BigInteger(aadha);
String agee=request.getParameter("age");
int age=Integer.parseInt(agee);
String con=request.getParameter("contact");
BigInteger contact=new BigInteger(con);
String party=request.getParameter("party");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String state=request.getParameter("state");
String city=request.getParameter("city");
AdminDAO dao=new AdminDAO();
Candidate can=new Candidate();
can.setAadhar(aadhar);
can.setName(name);
can.setAge(age);
can.setContact(contact);
can.setParty(party);
can.setGender(gender);
can.setAddress(address);
can.setState(state);
can.setCity(city);
dao.insertCandidateRecords(can);
out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Candidate Registration Successful<br></h1></b><a href=http://localhost:8080/voting/add_candidate.jsp style=color:gold><h1>Back</h1></a></br></div>");
}
catch(Exception e)
{
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Error!!<br>Please Enter Correct Details<br></h1></b><a href=http://localhost:8080/voting/add_candidate.jsp style=color:gold><h1>Back</h1></a></br></div>");

}
%>