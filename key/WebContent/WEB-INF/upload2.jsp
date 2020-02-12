<%@page import="AESencryp.SimpleFTPClient"%>
<%@page import="org.apache.commons.net.ftp.FTP"%>
<%@page import="org.apache.commons.net.ftp.FTPClient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import="java.sql.*,databaseconnection.databasecon"%>

<%
SimpleFTPClient client;
FileInputStream fis = null;
boolean status;

String uname=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
System.out.println(email);

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
		String a=null,c=null,str=null,userkey=null,ee=null,fowner=null,image=null,fname=null,lname=null,fid=null,pass=null;
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
			
				if(paramname.equalsIgnoreCase("fid"))
				{
					fid=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("fname"))
				{
					fname=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("userkey"))
				{
					userkey=multi.getParameter(paramname);
				}
				
				
				if(paramname.equalsIgnoreCase("UserImage"))
				{
					image=multi.getParameter(paramname);
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
			fss=new FileInputStream(file1);
			fs = new FileInputStream(file1);
						list.add(fs);
						//str = org.apache.commons.io.IOUtils.toString(fs);
		
		String ss=fPath;
		fis = new FileInputStream(ss);
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
 //Connection con = databasecon.getconnection();
 PreparedStatement ps=con.prepareStatement("insert into up(fid,fname,userkey,fowner,file,UploadPhoto,mailid) values(?,?,?,?,AES_ENCRYPT(?,'key'),?,?)");
				ps.setString(1,fid);
               ps.setString(2,fname);
				
					ps.setString(3,userkey);
				ps.setString(4,uname);
				ps.setString(7,email);
				str = org.apache.commons.io.IOUtils.toString(fss);
			ps.setString(5,str);
			
					
						 
				//ps.setBinaryStream(5, (InputStream)fs, (int)(file1.length()));
			
	 //fs1 = (FileInputStream)list.get(0);
		//ps.setBinaryStream(5,fs1,fs1.available());
			
				
				
					
		ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));
		
		fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(6,fs1,fs1.available());
			
			
				
		
			int x=ps.executeUpdate();
			String fPath = context.getRealPath("\\Gallery\\"+image);
			String server = "ftp.drivehq.com";
			int port = 21;
			String user = "harikrishna.coign";
			String pass1 = "harikrishna";
			System.out.println("Start uploading  file"+fPath);
			FTPClient ftpClient = new FTPClient();
			try {

				ftpClient.connect(server, port);
				ftpClient.login(user, pass1);
				//ftpClient.enterLocalPassiveMode();

				ftpClient.setFileType(FTP.BINARY_FILE_TYPE);

				
				// APPROACH #2: uploads second file using an OutputStream
				File secondLocalFile = new File(fPath);
				String secondRemoteFile = image;
			FileInputStream	inputStream = new FileInputStream

(secondLocalFile);

				System.out.println("Start uploading  file");
				OutputStream outputStream = ftpClient.storeFileStream

(secondRemoteFile);
		        byte[] bytesIn = new byte[4096];
		        int read = 0;

		        while ((read = inputStream.read(bytesIn)) != -1) {
		        	outputStream.write(bytesIn, 0, read);
		        }
		        inputStream.close();
		        outputStream.close();

		        boolean completed = ftpClient.completePendingCommand();
				if (completed) {
					System.out.println("The  file is uploaded successfully.");
				}

			} catch (IOException ex) {
				System.out.println("Error: " + ex.getMessage());
				ex.printStackTrace();
			} finally {
				try {
					if (ftpClient.isConnected()) {
						ftpClient.logout();
						ftpClient.disconnect();
					}
				} catch (IOException ex) {
					ex.printStackTrace();
				}
			}
		      response.sendRedirect("user.jsp?success");	
		      
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
%>