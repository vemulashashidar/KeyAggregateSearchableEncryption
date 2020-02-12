<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%String uname=(String)session.getAttribute("name");%>
<%String file=session.getAttribute("file").toString();%>
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
            <a href="#" class="toc page_04">Search File</a>
            <a href="login.jsp" class="toc page_05">LogOut</a>
		
		</div>
        
    </div> <!-- end of top panel -->

    <div id="templatemo_content">    <table width="773" height="415">
	 <form name="form" method="post"  action="download4.jsp"  onSubmit="return validation()">
           <tr>
 
                
                             <tr> 
                <td height="34"><font color="#66FFFF" size="4"><strong>FILE DataBase</strong></font></td>
                           <td>
                           <textarea name="encript" cols="55" rows="15"  value="<%=file %>"></textarea></td>
                          </tr>
                          <tr> 
			
			
			
			
			
                      
        				
        				              <tr> 
                <td height="34"><font color="#66FFFF" size="4"><strong>Decription Code</strong></font></td>
                            <td><input type="text" name="key3" value="" /></td>
                          </tr>
                          <tr> 
                           
                          <tr> 
                            <td><input class="button-success pure-button" type="submit" value="Submit" /></td>
                            <td><input class="button-warning pure-button" type="reset" value="Reset" /></td>
                          </tr>
                          

                      
  					</form>     </table>
					

    <p>&nbsp;</p>
	  <p>&nbsp;</p>
	     
        	
   
   
  
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