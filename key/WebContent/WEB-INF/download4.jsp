<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<%

String did=(String)session.getAttribute("did");
System.out.println("did"+did);
String key3=request.getParameter("key3");
  Blob b=null;
  String a=null;
  
  


try
{
	
	Class.forName("com.mysql.jdbc.Driver");		
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
//Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select UploadPhoto,fname from up where fid='"+did+"'&& akey3='"+key3+"'" );
ResultSet rs=ps.executeQuery();
if(rs.next())
{
b = rs.getBlob(1);
a=rs.getString(2);
String filename =null;
			filename+=".doc";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/msword");
			response.setHeader("Content-Disposition","attachment; filename=\""+a+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
}

}
catch(Exception e)
{
out.println(e.getMessage());
}
	




%>
