<%@page import="java.math.BigDecimal"%>
<%@page import="javax.websocket.Session"%>
<%@ page import="java.sql.*"%>
<%@ page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<% try{
        String i=request.getParameter("aadhar");
        BigInteger big1=new BigInteger(i);
		BigDecimal big=new BigDecimal(i);
	    AdminDAO obj=new AdminDAO();
	    Candidate obj1=new Candidate();
	    obj1.setAadhar(big1);
	    obj.deletecandidate(obj1);
        out.println("<head><style>body{ background-image:url(10.jpg); background-size:100%;}</style></head><body text=darkpink><center><b><h1>Candidate Profile Has Been Deleted<br></h1></b><a href=http://localhost:8080/voting/delete_candidate.jsp style=color:silver><h1>Back</h1></a></br></div>");
}catch(Exception e)
{
	out.println(e);
}
	    %> 