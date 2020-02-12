<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import="java.sql.*"%>

<%

String stat="Pending";
String dbdt=null;

String UPLOAD_DIRECTORY = "Gallery";

ArrayList list = new ArrayList();
ServletContext context = getServletContext();
String dirName = getServletContext().getRealPath("")+ File.separator + UPLOAD_DIRECTORY;

File fold=new File(dirName);

if(!fold.exists())
{
fold.mkdir();
}



		//String dirName =context.getRealPath("");
		String paramname=null;
		String file=null,type=null;
		String a=null,c=null,d=null,ee=null,fg=null,image=null,fname=null,lname=null,group=null,email=null,uname=null,pass=null;
	String bin = "";
		FileInputStream fs=null;
		FileInputStream fss=null;
 
		File file1 = null;
		File file2 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
			
				if(paramname.equalsIgnoreCase("fname"))
				{
					fname=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("lname"))
				{
					lname=multi.getParameter(paramname);
				}
				
				
				if(paramname.equalsIgnoreCase("UserImage"))
				{
					image=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("email"))
				{
					email=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("username"))
				{
					uname=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("pass"))
				{
				pass=multi.getParameter(paramname);
				}
				
				
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\Gallery\\"+image);
			file1 = new File(fPath);
			fs = new FileInputStream(file1);
			list.add(fs);
			
			
		
			
			
			
				
		String ss=fPath;
		FileInputStream fis = new FileInputStream(ss);
		StringBuffer sb1=new StringBuffer();
		 int i = 0;
         while ((i = fis.read()) != -1) {
                 if (i != -1) {
                       //System.out.println(i);
						 String hex = Integer.toHexString(i);
						// session.put("hex",hex);
						 sb1.append(hex);
						// sb1.append(",");
	

   
                 }
			
			
    }
	
		}		
	}
	
	        FileInputStream fs1 = null;
			
            //name=dirName+"\\Gallery\\"+image;
			int lyke=0;
			//String as="0";
Class.forName("com.mysql.jdbc.Driver");		
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
 PreparedStatement ps=con.prepareStatement("insert into reg(FirstName,LastName,Email,Username,Password,UploadPhoto) values(?,?,?,?,?,?)");
				ps.setString(1,fname);
               ps.setString(2,lname);
				
					ps.setString(3,email);
				ps.setString(4,uname);
				ps.setString(5,pass);
				
				
				
				
					
			 ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));
			
				
								
	
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(6,fs1,fs1.available());
			
		
			int x=ps.executeUpdate();
		
		      response.sendRedirect("register.jsp?success");	
		      
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
%>
