<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import ="java.util.* "%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<% 
                    String sn=request.getParameter("ver");
					System.out.println(sn);

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/key","root","");
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery("select * from up where  akey1='"+sn+"'");  // this is for name 
                    if(rs.next())
                    {    
					String dd=rs.getString("akey2");
					
                         out.println("<font color=green>");
						 
                        out.println("Convert encript key matching ------------ "+dd+" ");
                        out.println("</font>");

                    }else {
                       
 						out.println("<font color=red >");
                        out.println("This Encript  Key is Not Match any one file");
                        out.println("</font>");
                    }
rs.close();
st.close();
con.close();
%> 
