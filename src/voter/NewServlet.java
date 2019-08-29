package voter;


import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

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


public class NewServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try {
		BigInteger id=new BigInteger(request.getParameter("aadhar"));
		String pass=request.getParameter("pass");
		Voter v=new Voter();
		v.setV_aadhar(id);
		v.setPassword(pass);
		VoterDAO dao=new VoterDAO();
		boolean val=dao.validateVoterLogin(v);
		RequestDispatcher rd=null;
		if(val==true)
		{
			HttpSession hs=request.getSession();
			hs.setAttribute("LOGINUSER",id);
			rd=request.getRequestDispatcher("votermenu.jsp");//forward it to next page
			rd.forward(request, response);
		}
		else
		{
			out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Wrong Userid or Password<br>Please Check</h1></b><a href=http://localhost:8080/voting/voterlogin.html style=color:gold><h1>Back</h1></a></br></div>");
		}
		}
	    catch(NumberFormatException b)
		{
	    	RequestDispatcher rd=null;
	    	rd=request.getRequestDispatcher("voterlogin.html");
	         rd.include(request, response);
			out.println("<font color=white>Aadhar Number Should Be 12 digit Numeric Only</font>");
		}
		catch(Exception e)
		{
			out.println("<head><style>body{ background-image:url(background.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Wrong Userid or Password<br>Please Check</h1></b><a href=http://localhost:8080/voting/voterlogin.html style=color:gold><h1>Back</h1></a></br></div>");
		}
		
		}
}