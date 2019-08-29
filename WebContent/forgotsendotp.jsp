<%@page import="java.sql.SQLException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.websocket.Session"%>
<%@ page import="voter.*"%>
<%@ page import="voter.VoterDAO"%>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.util.Date"%>
<%

try {
	BigInteger id = new BigInteger(request.getParameter("aadhar"));
	String que = request.getParameter("question");
	String ans = request.getParameter("answer");
	VoterDAO dao = new VoterDAO();
	Voter v = new Voter();
	v.setV_aadhar(id);
	v.setS_que(que);
	v.setS_ans(ans);
	String str = dao.recoverPassword(v);
    String email = dao.getemailid(v);
	
            if (!str.equals("np")) {
    		
            session.setAttribute("aadhar",id);
			session.setAttribute("email", email);
			session.setAttribute("pass", str);
			String data = "12345678901234567890123456789012345678901234567890";
			String otp="";
			char ch[]=data.toCharArray();
			
			for (int i=0; i<4; i++)
			{
				int j = (int)((Math.random()) * 50);
				otp=otp+ch[j];
			}
			session.setAttribute("otp",otp);
			PasswordMail pm = new PasswordMail(); 
			boolean status = pm.sendMail(email,otp);
			if(status==true)
			{ 
				page="otp.jsp?msg=send";
			}	 
			
		} 
		else {
			
			out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Wrong ID or Answer<br>Please Check</h1></b><a href=http://localhost:8080/voting/forgotpassword.html style=color:gold><h1>Back</h1></a></br></div>");
		}
	} 
	catch(Exception e)
	{
		out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Wrong ID or Answer<br>Please Check</h1></b><a href=http://localhost:8080/voting/forgotpassword.html style=color:gold><h1>Back</h1></a></br></div>");
	}
%>