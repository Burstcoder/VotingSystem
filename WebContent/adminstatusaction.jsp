<%@page import="java.math.BigDecimal"%>
<%@page import="javax.websocket.Session"%>
<%@ page import="java.sql.*"%>
<%@ page import="voter.*"%>
<%@page import="java.math.BigInteger"%>
<%  
out.println("<div align=left><a href=adminmenu.jsp><font color=gold><h2>Menu</h2></font></a></div>");

        String choice=request.getParameter("tf4");
        String i=request.getParameter("aadhar");
        if(i==null)
        {
            out.println("<body text=white><center><b><h1>No User Exist<br></h1></b><a href=http://localhost:8080/voting/adminvoterstatus.jsp style=color:navy><h1>Back</h1></a></br></div>");

        }
        else{
        BigInteger big1=new BigInteger(i);
		BigDecimal big=new BigDecimal(i);
	    AdminDAO obj=new AdminDAO();
	    Voter obj1=new Voter();
	    obj1.setV_aadhar(big1);
       try{
        	if(choice.equals("accept"))
        	{
        	obj.statusApprove(obj1);
            out.println("<head><style>body{ background-image:url(10.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Voter Status has been Updated<br></h1></b><a href=http://localhost:8080/voting/adminvoterstatus.jsp style=color:navy><h1>Back</h1></a></br></div>");
        	}
        	else if(choice.equals("reject"))
        	{
        		obj.statusReject(obj1);
                out.println("<head><style>body{ background-image:url(10.jpg); background-size:100%;}</style></head><body text=white><center><b><h1>Voter Data has been Rejected<br></h1></b><a href=http://localhost:8080/voting/adminvoterstatus.jsp style=color:navy><h1>Back</h1></a></br></div>");
        	}
        	else
        	{
             out.println("Oops!! You meet an Error");
        	}
        }catch(Exception e)
        {
        	out.println(e);
        }    
        }
%>

		<!DOCTYPE html>
		<html>
		<head>
		<style>
		body{
		background-image:url(background.jpg);
		background-size: 100%;
		}
		</style>
		</head>
		</body>
		</html>