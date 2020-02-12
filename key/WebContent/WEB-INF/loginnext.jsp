<%@ page import="java.sql.*,databaseconnection.*"%>

<%


	
String name=request.getParameter("name");
String password=request.getParameter("pass");


	try{
		Class.forName("com.mysql.jdbc.Driver");		
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
	    
        PreparedStatement ps=con.prepareStatement("select * from reg where Username='"+name+"' && Password='"+password+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		response.sendRedirect("user.jsp");
		session.setAttribute("name",name);
		 String uid=rs.getString("uid");
		 String email=rs.getString("Email");
		 System.out.println("dsfsdf"+email);
		session.setAttribute("uid",uid);
		session.setAttribute("email",email);
		
		}
		else
		{
	response.sendRedirect("login.jsp?faild");
		}
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
%>





































