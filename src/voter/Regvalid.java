package voter;


import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import voter.Voter;
import voter.VoterDAO;


public class Regvalid extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();

		try {
			String name=request.getParameter("name");
			String aadha=request.getParameter("aadhar");
			BigInteger aadhar=new BigInteger(aadha);
			String password=request.getParameter("password");
			String cpass=request.getParameter("pass1");
			String gender=request.getParameter("gender");
			String address=request.getParameter("address");
			String email=request.getParameter("email");
			String contac=request.getParameter("contact");
			BigInteger contact=new BigInteger(contac);
			String city=request.getParameter("city");
			String state=request.getParameter("state");
			String question=request.getParameter("question");
			String answer=request.getParameter("answer");
		//dob validation age>18 thn nly can register
		String dob=request.getParameter("dob");		//here user's value will cum from form field
			/// in dob validation we nly focus on YEAR(yyyy) part validation.....ignore month & day
		System.out.println(dob);
		String s = dob.substring(0,4);    //0-> starting index & 4-> character counting (yyyy format in dob so 4 character thts y 4)
		Date d = new Date(0);
		String s1=d.toString();    // converting object into string -> toString method is used
		String s2=s1.substring(24);
		int a =Integer.parseInt(s);	//user entered
		int b=Integer.parseInt(s2);	//system value
		String code = request.getParameter("code"); 
		//HttpSession session = request.getSession();
		String page="";
		
		if(password.equals(cpass))
		{
			HttpSession session = request.getSession();
		
			String captcha =(String)session.getAttribute("captcha");
		
		if(a>1950 && (b-a) >=18)
		{
			if(captcha.equals(code))
			{	
				String data="1234567890123456789012345678901234567890";
				String otp="";
				char ch[]= data.toCharArray();
				
				for (int k=0; k<4; k++)
				{
					int j = (int)((Math.random())*40);
					otp=otp+ch[j];
				}
				String username=name+"_"+otp;
				System.out.println("USERNAME GENEREATED");
               
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
			{
				page="error.jsp?msg=captcha";
			 }
		} 
		else 
		{
			page="error.jsp?msg=date";
		}
		}
		else
		{
			page="error.jsp?msg=password";
		}
		response.sendRedirect(page);
		}
	catch(Exception e)
	{
		out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Sorry!You Entered Incorrect data<br>Please Try Again</h1></b><a href=http://localhost:8080/voting/voter_registration.html style=color:gold><h1>Back</h1></a></br></div>");
	}
		
	
	}	// end of doPost
}// end of Servlet
