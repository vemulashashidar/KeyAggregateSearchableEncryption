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
            <a href="admin.jsp" class="toc page_02" >Access key</a>
			 
           <a href="adminsharedetails.jsp" class="toc page_03">Share Views</a>
            
            <a href="login.jsp" class="toc page_05">LogOut</a>
		</div>
        
    </div> <!-- end of top panel -->

    <div id="templatemo_content">
	      <p>&nbsp;</p>
	    
	  
   <%                  String faild="faild";
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
                   
            
					
					 <table   width="93%" height="82"  >
          <tr> 
                <td width="62" height="33"><strong><font color="#FFFF00">FirstName</font></strong></td>
            <td width="110"><strong><font color="#FFFF00">Username</font></strong></td>
            
            <td width="141"><strong><font color="#FFFF00">&nbsp;&nbsp;&nbsp;&nbsp;Email</font></strong></td>
            <td width="94"><strong><font color="#FFFF00">photos</font></strong></td>
			<td width="94"><strong><font color="#FFFF00">File Details</font></strong></td>

          </tr>
					 <%   
					 String email=null,gg=null,uname=null;
		   //HashSet <String> newset = new HashSet <String>();
//HashSet <String> newset1 = new HashSet <String>();
		    //String s=rs.getString("GroupName");
             		   try
		   {
             			  Class.forName("com.mysql.jdbc.Driver");		
             			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", ""); 
   				Statement st1=con.createStatement();
				ResultSet rs1 =st1.executeQuery("SELECT * FROM reg");
				while(rs1.next())
				{
				
				//newset.add(rs1.getString("Username"));
				//uid
				int uid=rs1.getInt("uid");
				  String us=rs1.getString("FirstName");
				
				 email=rs1.getString("Email");
				 uname=rs1.getString("Username");
				
				 //Blob imagen=rs1.getBlob("UploadPhoto");
				 
				 %>
				 
				<tr> 
           
			  
              </font></td>
			   <td><font  size="+1">&nbsp; 
             <%=us%>
              </font></td>
            <td><font  size="+1">&nbsp; 
             <%=uname%>
              </font></td>
            <td><font  size="+1"> 
            <%=email%>
              </font></td>
			  
			  
        <td><font  size="+1"> <img src="photoview1.jsp?da=<%=uid%>" width="59" height="44" > 
          </font></td>

		   <td><font  size="+1">&nbsp; 
            <A HREF="graph.jsp?da=<%=uname%>">Graph</A>
              </font></td>
			   
			  </tr>
            
         
          <%
/*}*/
					}
					
					
			
			
		   }
		   catch(Exception e)
		   {
	out.println(e);
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