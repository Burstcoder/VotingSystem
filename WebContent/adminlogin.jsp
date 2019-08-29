<%@page import="javax.websocket.Session"%>
<%@ page import="java.sql.*"%>
<% 
        String usr=request.getParameter("tf1");
		String pass=request.getParameter("tf2"); 
	    {
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "welcome");
		PreparedStatement pst=con.prepareStatement("select password from admin where id=?");
		pst.setString(1,usr);
		ResultSet rs = pst.executeQuery();
		if(rs.next()==false)
		{
			out.println("<body text=pink><center><b><h1>Wrong User-ID And Password<br></h1></b><a href=http://localhost:8080/voting/adminlogin.html style=color:gold><h1>Home</h1></a></br></div>");
		}
		else if(rs.getString(1).equals(pass))
        {
	    session.setAttribute("LOGINUSER",usr);
	    response.sendRedirect("adminmenu.jsp");
		}
		else
			out.println("<body text=pink><center><b><h1>Wrong Password<br></h1></b><a href=http://localhost:8080/voting/adminlogin.html style=color:gold><h1>Home</h1></a></br></div>");
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
body {
	background-image: url(10.jpg);
	background-size: 100%;
}
</style>
</head>
</body>
</html>