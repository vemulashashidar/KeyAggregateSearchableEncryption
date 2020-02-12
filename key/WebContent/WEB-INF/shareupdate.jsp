<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%String uname=(String)session.getAttribute("name");%>
<% String fid=request.getParameter("id");
System.out.println(fid);%>
<%
String sat="share";
try
{

	Class.forName("com.mysql.jdbc.Driver");		
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
//Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("update up set share='"+sat+"' where fid='"+fid+"'");
int x=ps1.executeUpdate();
if(x>0)
{
 response.sendRedirect("keyshare.jsp?share");
}else
{
response.sendRedirect("keyshare.jsp?faild");
}
}
 catch(Exception e11)
{
out.println(e11.getMessage());

}

%>