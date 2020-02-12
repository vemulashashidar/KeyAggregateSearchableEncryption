<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%String uname=(String)session.getAttribute("name");%>
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
        <script type="text/javascript">

			featuredcontentglider.init({
				gliderid: "canadaprovinces", //ID of main glider container
				contentclass: "glidecontent", //Shared CSS class name of each glider content
				togglerid: "p-select", //ID of toggler container
				remotecontent: "", //Get gliding contents from external file on server? "filename" or "" to disable
				selected: 0, //Default selected content index (0=1st)
				persiststate: false, //Remember last content shown within browser session (true/false)?
				speed: 500, //Glide animation duration (in milliseconds)
				direction: "rightleft", //set direction of glide: "updown", "downup", "leftright", or "downup"
				autorotate: false, //Auto rotate contents (true/false)?
				autorotateconfig: [3000, 2] //if auto rotate enabled, set [milliseconds_btw_rotations, cycles_before_stopping]
			})
		
		</script>
	


		<div id="p-select" class="glidecontenttoggler">
		
			<a href="user.jsp" class="toc page_01">Upload</a>
            <a href="download.jsp" class="toc page_02" >Download</a>
           <a href="keyshare.jsp" class="toc page_03">Key Share</a>
            <a href="sharefiles.jsp" class="toc page_04">View Share File</a>
            <a href="login.jsp" class="toc page_05">LogOut</a>
		</div>
        
    </div> <!-- end of top panel -->

    <div id="templatemo_content">
	
    <p>&nbsp;</p>

	  <p>&nbsp;</p>
	  
	                         
     <center> <strong> <font color="#66FFFF" size="5">Group Sharing</font> </strong></center> 
     <p>&nbsp;</p>
    <table   width="75%" height="111"   border="2">
          <tr> 
		    <td width="47" height="33"><font color="#CC0000" size="3"><strong>File Owner
             </strong> </font></td>
            <td width="100" height="33"><font color="#CC0000" size="3"><strong>File 
              Name</strong></font></td>
			   <td width="67" height="33"><font color="#CC0000" size="3"><strong> 
              Key1</strong></font></td>
			   <td width="73" height="33"><font color="#CC0000" size="3"><strong>key2
              </strong></font></td>
			  
               <td width="182"><font color="#CC0000"><strong><font size="3">Share File</font></strong></font></td>
          </tr>
		  
          <%   
		  String wat="share";
		  //String sat="send cloud";
  
             		   try
		   {
			   	//Connection con5=databasecon.getconnection(); 
			   	Class.forName("com.mysql.jdbc.Driver");		
             			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
   			
   				Statement st5=con.createStatement();
				ResultSet rs5 =st5.executeQuery("SELECT * FROM up where share='"+wat+"'&&fowner!='"+uname+"'");
				while(rs5.next())
				{
				String fowner=rs5.getString("fowner");
				String iid=rs5.getString("fid");
			  String key1=rs5.getString("akey1");
			  String key2=rs5.getString("akey3");
					
					 %>
          <tr> 
		  <td height="59"><font color="#FFFFFF" size="+1"> 
              <%=fowner%>
              </font></td>
            <td height="59"><font color="#FFFFFF" size="+1"> 
              <%=rs5.getString("fname")%>
              </font></td>
			   <td height="59"><font color="#FFFFFF" size="+1"> 
              <%=key1%>
              </font></td>
			  <td><font color="#FFFFFF" size="+1"> 
              <%=key2%>
              </font></td>

			    <td><a href="download1.jsp?fid=<%=rs5.getString("fid")%>"><img src="images/jj.png" width="148" height="55" /></a></td>
      
			             <%
	   					}
		   }
		   catch(Exception e)
		   {
		   }

		 
		  %>
        </table>
   
        	
   
   
  
    <p>&nbsp;</p>
	  <p>&nbsp;</p>
   
        	
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