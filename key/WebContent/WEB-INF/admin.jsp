<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import ="java.util.* "%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>key</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="featuredcontentglider.css" rel="stylesheet" type="text/css" />
<link href="css/table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.2.2.pack.js"></script>
<script type="text/javascript" src="js/featuredcontentglider.js">

</script>

	<script>
function readURL(input) {
if (input.files && input.files[0]) {
var reader = new FileReader();

reader.onload = function (e) {
$('#img_prev')
.attr('src', e.target.result)
.width(150)
.height(200);
};

reader.readAsDataURL(input.files[0]);
}
}

</script>


</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_top_panel">
    	<div id="logo">
        </div>
        
	


		<div id="p-select" class="glidecontenttoggler">
		
			<a href="useview.jsp" class="toc page_01">Userviews</a>
            <a href="adminacc.jsp" class="toc page_02" >Access key</a>
			 
           <a href="adminsharedetails.jsp" class="toc page_03">Share Views</a>
          
            <a href="login.jsp" class="toc page_05">LogOut</a>
		
		</div>
        
    </div> <!-- end of top panel -->

    <div id="templatemo_content">
	      <p>&nbsp;</p>
	    
	  
   <%                   String faild="faild";
        			String success="send";
        			String dd=request.getQueryString();
        			
        			if(dd==null){
        				
        			}
        			
        			else if(dd.equals(success)){%> 
        				<center><font size="5" color="red">Success Mail Send Access Key</font></center><%
        				
        			}
        			else if(dd.equals(faild)){%> 
        				 <center><font size="5" color="red"> Mail Not Send
   </font></center><%
        			}
        		%>
    <p>&nbsp;</p>
                    <table   width="93%" height="82"   border="10">
          <tr> 
		    <td width="62" height="33"><font color="#CC0000" size="3"><strong>Total 
              files</strong> </font></td>
            <td width="62" height="33"><font color="#CC0000" size="3"><strong>File 
              id</strong></font></td>
			   <td width="62" height="33"><font color="#CC0000" size="3"><strong>User Name 
              </strong></font></td>
            <td width="110"><font color="#CC0000" size="3"><strong>FileName</strong></font></td>
          
            <td width="141"><font color="#CC0000"><strong><font size="3">Status</font></strong></font></td>
            <td width="141"><font color="#CC0000"><strong><font size="3">Access Key</font></strong></font></td>
           
          </tr>
          <%   
		  String wat="waiting";
		  String sat="send cloud";
  
             		   try
		   {
             			  Class.forName("com.mysql.jdbc.Driver");		
             			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
   				Statement st5=con.createStatement();
				ResultSet rs5 =st5.executeQuery("SELECT * FROM up where status='"+wat+"'");
				while(rs5.next())
				{
				String mailid=rs5.getString("mailid");
					
					 %>
          <tr > 
		  <td height="43"><font color="#FFFFFF" size="+1"> 
              <%=rs5.getString("fid")%>
              </font></td>
            <td height="43"><font color="#FFFFFF" size="+1"> 
              <%=rs5.getString("fname")%>
              </font></td>
			  <td><font color="#FFFFFF" size="+1"> 
              <%=rs5.getString("fowner")%>
              </font></td>
            <td><font color="#FFFFFF" size="+1"> 
              <%=rs5.getString("fname")%>
              </font></td>
           
            <td><font color="#FFFFFF" size="+1"> 
              <%=rs5.getString("status")%>
              </font></td>
			   <td><font color="#FFFFFF" size="+1"> 
                     <a href="adminacc.jsp?fowner=<%=rs5.getString("fowner")%>&&fid=<%=rs5.getString("fid")%>&&emailid=<%=mailid%>">Send Mail</a> 
              </font></td>
           
          <%
	   					}
		   }
		   catch(Exception e)
		   {
		   }

		 
		  %>
        </table>
   
        	
   <p>&nbsp;</p>			
            </div> <!-- end of page 5 ( contact us ) -->
     
	    </div> <!-- end of glidecontent wrapper -->
	</div> <!-- end of content -->        
</div> <!-- end of container -->
<!--  Free CSS Templates by www.TemplateMo.com  -->
<div id="templatemo_footer_wrapper"> 
	<div id="templatemo_footer">
      <font color="#66FFFF" size="5"> <stong>Key-Aggregate Searchable Encryption (KASE)
for Group Data Sharing via Cloud Storage</stong></font></div> <!-- end of footer -->
</div>
</html>