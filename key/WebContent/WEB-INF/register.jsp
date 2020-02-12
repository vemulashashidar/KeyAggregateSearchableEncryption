<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>key</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="featuredcontentglider.css" rel="stylesheet" type="text/css" />
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
	

<script language="javascript" type="text/javascript">
function validation()
{
var a = document.form.fname.value;
if(a=="")
{
alert("Enter the Username");
document.form.fname.focus();
return false;
}

var b = document.form.lname.value;
if(b=="")
{
alert("Enter the lastrname");
document.form.lname.focus();
return false;
}



var ed= document.form.email.value;

if(ed=="")
{
alert("Enter the emailid");
document.form.email.focus();
return false;
}
if(ed.indexOf("@",0)<0)
{
alert("Enter the correct emailid");
document.form.email.focus();
return false;
}
if(ed.indexOf(".",0)<0)
{
alert("Enter the correct emailid");
document.form.email.focus();
return false;
}
var c = document.form.username.value;
if(c=="")
{
alert("Enter the username");
document.form.username.focus();
return false;
}




var l= document.form.pass.value;
if(l=="")
{
alert("Enter the password");
document.form.pass.focus();
return false;
}
var ty= document.form.type.value;
if(ty=="")
{
alert("Enter the Type of user");
document.form.type.focus();
return false;
}
var ur = document.form.UserImage.value;
if(ur=="")
{
alert(" uploadImage");
document.form.UserImage.focus();
return false;
}  
}
</script>
		<div id="p-select" class="glidecontenttoggler">
		
			
			<a href="index.html" class="toc page_01">Homepage</a>
            <a href="register.jsp" class="toc page_02">Register</a>
            <a href="login.jsp" class="toc page_03">Login</a>
                       <a href="adminlogin.jsp" class="toc page_05">Admin Login</a>
		</div>
        
    </div> <!-- end of top panel -->

    <div id="templatemo_content">
	 <p>&nbsp;</p>
	  <p>&nbsp;</p>
     <form name="form" method="post" enctype="multipart/form-data" action="regnext.jsp"  onSubmit="return validation()">
               <table width="773" height="415"><tr>
          <td width="298"><img src="images/default-group-icon.png" width="298" height="270" /></td>
          <td width="328">
                
                 <table  width="100%" height="337" cellpadding="5">
                          <tr> 
                            
                      
                <td><font color="#66FFFF" size="4"><strong>First Name</strong></font></td>
                            <td><input type="text" name="fname" value="" /></td>
                          </tr>
                          <tr> 
                            <td><font color="#66FFFF" size="4"><strong>Last Name</strong></font></td>
                            <td><input type="text" name="lname" value="" /></td>
                          </tr>
                          
                          
              <tr> 
                <td height="34"><font color="#66FFFF" size="4"><strong>Email</strong></font></td>
                            <td><input type="text" name="email" value="" /></td>
                          </tr>
                          <tr> 
                            <td><font color="#66FFFF" size="4"><strong>User Name</strong></font></td>
                            <td>  <input type="text" name="username" id="username" onKeyUp="loadXMLDoc()">
                         </td>
                          </tr>
                          <tr> 
                            <td><font color="#66FFFF" size="4"><strong>Password</strong></font></td>
                            <td><input type="password" name="pass" value="" /></td>
                          </tr>
                          <tr> 
						  
                          <tr> 
                            <td><font color="#66FFFF" size="4"><strong>Upload Photo</strong></font></td>
                            <td><input type="file" id="UserImage2" name="UserImage" style="width:80%" onChange="readURL(this);" /> 
                            </td>
                          </tr>
                          <tr> 
                            <td><input class="button-success pure-button" type="submit" value="Submit" /></td>
                            <td><input class="button-warning pure-button" type="reset" value="Reset" /></td>
                          </tr>
                          
                        </table></td>
                      <td width="131"><img src="images/user.png" alt="your image" width="131" height="130" id="img_prev" /></td>
                    </tr>
                    <%
        			String success="success";
        			String dd=request.getQueryString();
        			
        			if(dd==null){
        				
        			}
        			
        			else if(dd.equals(success)){%> 
        				<center><font size="5" color="red">Success fully Register </font></center>
        				<%
        			}
        			else{
        				out.println("Success  fail");
        			}
        		%>
                  </table>
                </center>
              </form>
                  
        	
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