<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>key</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="featuredcontentglider.css" rel="stylesheet" type="text/css" />
<link href="css/dropdown.css" rel="stylesheet" type="text/css" />
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
	   <script src="../js/prefixfree.min.js"></script>
		<div id="p-select" class="glidecontenttoggler">
		
			<a href="index.html" class="toc page_01">Homepage</a>
            <a href="register.jsp" class="toc page_02">Register</a>
            <a href="login.jsp" class="toc page_03">Login</a>
                       <a href="adminlogin.jsp" class="toc page_05">Admin Login</a>
		
		</div>
        
    </div> <!-- end of top panel -->
  <p>&nbsp;</p>
   <p>&nbsp;</p>
  

                   <center><span class="style9"> <font color="#66FFFF" size="5"><strong>Admin Login</strong></font> 
                      </span></center>
            <center>
			    <p>&nbsp;</p>
				 <p>&nbsp;</p>
				
          <form action="alogin.jsp" method="get">
					<table width="457" height="282"> 
					
	  <tr>
	
	    	<td>
		
                 <span class="style9"> <font color="#66FFFF" size="5"><strong> Admin Name:</strong></font> 
                      </span> </td><td>
      <input name="name" id="name" value="" type="text"  /></td></tr><tr>
	    			<td> <span class="style9"> <font color="#66FFFF" size="5"><strong>Password:</strong></font> 
                </span> </td><td>
        <input name="pass"  value="" type="password" /></td></tr>
				   
        <tr><td></td><td>
           <button type="submit" class="btn btn-success" style="width:125px;">Login</button>&nbsp;&nbsp;&nbsp;
          <button type="reset" class="btn btn-danger" style="width:125px;">Clear</button></td></tr>
		  <tr><td></td><td>
		            </td>
        </tr></table> </form>
        			 
   <p>&nbsp;</p>
  <p>&nbsp;</p>
   </center>
        						
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