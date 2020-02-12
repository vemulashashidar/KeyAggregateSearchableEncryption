<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


 <%  
 String s=request.getParameter("da");
	//String s="arul";
  
             		   try
		   {
             			  Class.forName("com.mysql.jdbc.Driver");		
              			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
    			
   				Statement st=con.createStatement();
				ResultSet rs =st.executeQuery("SELECT count(fowner) FROM up where fowner='"+s+"'");
				while(rs.next())
				{ 
				
				 %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>key</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="featuredcontentglider.css" rel="stylesheet" type="text/css" />
<link href="css/table.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-1.2.2.pack.js"></script>
<script type="text/javascript" src="js/featuredcontentglider.js"></script>
<script type="text/javascript" src="css/canvasjs.min.js"></script>
  	
      <script type="text/javascript">
      window.onload = function () {
          var chart = new CanvasJS.Chart("chartContainer", {
              theme: "theme2",//theme1
              title:{
                  text: " USER VIEWS"              
             },
              data: [              
              {
// Change type to "bar", "splineArea", "area", "spline", "pie",etc.
                  type: "column",
                  dataPoints: [
                 
                  { label: "user hits", y:<%=rs.getString("count(fowner)")%>}
                  ]
              }
              ]
          });

          chart.render();
      }
  </script>

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
			    <a href="graph.jsp" class="toc page_04">Graph view</a>
           <a href="adminsharedetails.jsp" class="toc page_03">Share Views</a>
      
            <a href="login.jsp" class="toc page_05">LogOut</a>
		
		</div>
        
    </div> <!-- end of top panel -->

    <div id="templatemo_content">
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	
	 
        	
	      <p>&nbsp;</p>
	    
 

   <div id="chartContainer" style="height: 300px; width: 100%;"> </div>




   
			
 
    <%
	   					}
		   }
		   catch(Exception e)
		   {
		   }

		
		  %>
	


					
					
        	
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