<%@page import="java.sql.SQLException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.websocket.Session"%>
<%@ page import="voter.Voter"%>
<%@ page import="voter.VoterDAO"%>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.util.Date"%>
<%

try{
	String name=request.getParameter("name");
	String aadha=request.getParameter("aadhar");
	BigInteger aadhar=new BigInteger(aadha);
	String password=request.getParameter("password");
	String dob=request.getParameter("dob");
	String gender=request.getParameter("gender");
	String address=request.getParameter("address");
	String email=request.getParameter("email");
	String contac=request.getParameter("contact");
	BigInteger contact=new BigInteger(contac);
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String question=request.getParameter("question");
	String answer=request.getParameter("answer");

String s = dob.substring(0,4);    //0-> starting index & 4-> character counting (yyyy format in dob so 4 character thts y 4)
Date d = new Date();
String s1=d.toString();    // converting object into string -> toString method is used
String s2=s1.substring(24);
int a =Integer.parseInt(s);	//user entered
int b=Integer.parseInt(s2);	//system value
String code = request.getParameter("code");
HttpSession ses = request.getSession();
String captcha =(String)ses.getAttribute("captcha");
if(a>1950 && (b-a) >=18)
{
	if(captcha.equals(code))
	{
	Voter vote=new Voter();
	VoterDAO dao=new VoterDAO();
	BigInteger id=new BigInteger("0");
	vote.setV_id(id);
	vote.setV_name(name);
	vote.setV_aadhar(aadhar);
	vote.setPassword(password);
	vote.setDob(dob);
	vote.setGender(gender);
	vote.setV_add(address);
	vote.setEmail(email);
	vote.setContact(contact);
	vote.setCity(city);
	vote.setState(state);
	vote.setS_que(question);
	vote.setS_ans(answer);
	dao.insertVoterRegistration(vote);
	out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Registration Successfull<br></h1></b><a href=http://localhost:8080/voting/Home.html style=color:gold><h1>Home</h1></a></br></div>");
	}
else
{%>

<script type="text/javascript">
window.location.href="voterregistration.html";
alert("Please enter Correct captcha");
</script>
<%}
}
else 
{%>
<script type="text/javascript">
alert("Sorry You are not eligible for registration! You should be 18 to give vote");
</script>
<%}
}
catch(Exception e)
{
out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Sorry!You Entered Incorrect data<br>Please Try Again</h1></b><a href=http://localhost:8080/voting/voter_registration.html style=color:gold><h1>Back</h1></a></br></div>");
}
%>