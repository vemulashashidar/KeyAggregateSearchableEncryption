<%@ page import="java.sql.*,databaseconnection.*"%>

<%


	
String key1=request.getParameter("key1");
System.out.println();
String sid=(String)session.getAttribute("sid");
//String key2=request.getParameter("key2");
//session.getAttribute("key2",key2);

	try{
			
		Class.forName("com.mysql.jdbc.Driver");		
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
//Connection con = databasecon.getconnection();
        PreparedStatement ps=con.prepareStatement("select * from up where akey1='"+key1+"'&& fid='"+sid+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		response.sendRedirect("download3.jsp?success");
		//session.setAttribute("name",name);
		 String did=rs.getString("fid");
		 String file=rs.getString("file");
		 System.out.println("dsfsdf"+file);
	     session.setAttribute("file",file);
		   session.setAttribute("did",did);
		 System.out.println(file);
		//session.setAttribute("email",email);
		
		}
		else
		{
	response.sendRedirect("download1.jsp?faild");
		}
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
%>





































