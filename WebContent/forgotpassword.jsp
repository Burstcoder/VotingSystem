<%@page import="voter.VoterDAO"%>
<%@page import="voter.Voter"%>
<%@page import="java.math.BigInteger"%>
<%
try {
	BigInteger id = new BigInteger(request.getParameter("aadhar"));
	String que = request.getParameter("question");
	String ans = request.getParameter("answer");
	Voter v = new Voter();
	v.setV_aadhar(id);
	v.setS_que(que);
	v.setS_ans(ans);
	VoterDAO dao = new VoterDAO();

		String str = dao.recoverPassword(v);
		if (!str.equals("np")) {
			out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Password:"+str+"</h1></b><a href=http://localhost:8080/voting/voterlogin.html style=color:gold><h1>Back</h1></a></br></div>");
		} else {
			
			out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Wrong ID or Answer<br>Please Check</h1></b><a href=http://localhost:8080/voting/forgotpassword.html style=color:gold><h1>Back</h1></a></br></div>");
		}
	} 
	catch(Exception e)
	{
		out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Wrong ID or Answer<br>Please Check</h1></b><a href=http://localhost:8080/voting/forgotpassword.html style=color:gold><h1>Back</h1></a></br></div>");
	}
	
%>