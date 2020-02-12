<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%String username=request.getParameter("name");

String password=request.getParameter("pass");


if((username.equals("admin")) && (password.equals("admin"))){
	response.sendRedirect("admin.jsp");	
}

		else
		{
	             response.sendRedirect("adminlogin.jsp?faild");
		//out.println("enter correct  name and password");
		}
		

%>