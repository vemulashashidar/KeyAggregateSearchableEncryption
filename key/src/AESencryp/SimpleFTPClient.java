package AESencryp;



import java.net.*;
import java.io.*;

public class SimpleFTPClient 
{

    /** The URL connection object */
    private URLConnection m_client;
    /** The FTP host/server to be connected */
    private String host;
    /** The FTP user */
    private String user;
    /** The FTP user’s password */
    private String password;
    /** The remote file that needs to be uploaded or downloaded */
    private String remoteFile;
    /** The previous error message triggered after a method is called */
    private String erMesg;
    /** The previous success message after any method is called */
    private String succMesg;

    public SimpleFTPClient() {
    }

    /** Setter method for the FTP host/server */
    public void setHost(String host) {
        this.host = host;
    }

    /** Setter method for the FTP user */
    public void setUser(String user) {
        this.user = user;
    }

    /** Setter method for the FTP user’s password */
    public void setPassword(String p) {
        this.password = p;
    }

    /** Setter method for the remote file, this must include the sub-directory path relative
    to the user’s home directory, e.g you’e going to download a file that is within a sub directory
    called "sdir", and the file is named "d.txt", so you shall include the path as "sdir/d.txt"
     */
    public void setRemoteFile(String d) {
        this.remoteFile = d;
    }

    /** The method that returns the last message of success of any method call */
    public synchronized String getLastSuccessMessage() {
        if (succMesg == null) {
            return "";
        }
        return succMesg;
    }

    /** The method that returns the last message of error resulted from any exception of any method call */
    public synchronized String getLastErrorMessage() {
        if (erMesg == null) {
            return "";
        }
        return erMesg;
    }

    /** The method that handles file uploading, this method takes the absolute file path
    of a local file to be uploaded to the remote FTP server, and the remote file will then
    be transfered to the FTP server and saved as the relative path name specified in method setRemoteFile
    @param localfilename – the local absolute file name of the file in local hard drive that needs to
    FTP over
     */
   public synchronized boolean uploadFile(InputStream is) {
    //public synchronized boolean uploadFile(String localfilename) {
        try {
        	
        	   	 
        	

         //   InputStream is = new FileInputStream(localfilename);        	
            BufferedInputStream bis = new BufferedInputStream(is);
            OutputStream os = m_client.getOutputStream();
            BufferedOutputStream bos = new BufferedOutputStream(os);
            byte[] buffer = new byte[1024];
            int readCount;

            while ((readCount = bis.read(buffer)) > 0) {
                bos.write(buffer, 0, readCount);
            }
            bos.close();

            this.succMesg = "Uploaded!";

            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            StringWriter sw0 = new StringWriter();
            PrintWriter p0 = new PrintWriter(sw0, true);
            ex.printStackTrace(p0);
            erMesg = sw0.getBuffer().toString();
            return false;
        }
    }

    /** The method to download a file and save it onto the local drive of the client in the specified absolut path
    @param localfilename – the local absolute file name that the file needs to be saved as */
    public synchronized boolean downloadFile(String localfilename) {
        try {
            InputStream is = m_client.getInputStream();
            BufferedInputStream bis = new BufferedInputStream(is);
            System.out.println(">>>>>>>>>>>"+localfilename);
            
             String ffn  = localfilename.substring(localfilename.lastIndexOf('/'),localfilename.length());
            FileOutputStream fos = new FileOutputStream(new File(ffn));
            OutputStream os = new FileOutputStream(localfilename);
            BufferedOutputStream bos = new BufferedOutputStream(os);
            

            byte[] buffer1 = new byte[1024];
            int readCount1;

            while ((readCount1 = bis.read(buffer1)) > 0) {
                fos.write(buffer1, 0, readCount1);
            }
            fos.close();
                        
            File f = AES.decriptFile(new File(ffn));
            bis = new BufferedInputStream(new FileInputStream(f));
            byte[] buffer = new byte[1024];
            int readCount;
            while ((readCount = bis.read(buffer)) > 0) {
                bos.write(buffer, 0, readCount);
            }
            bos.close();
            is.close(); // close the FTP inputstream
            this.succMesg = "Downloaded!";

            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            StringWriter sw0 = new StringWriter();
            PrintWriter p0 = new PrintWriter(sw0, true);
            ex.printStackTrace(p0);
            erMesg = sw0.getBuffer().toString();
            return false;
        }
    }

    /** The method that connects to the remote FTP server */
    public synchronized boolean connect() {
        try {
            URL url = new URL("ftp://" + user + ":" + password + "@" + host + "/" + remoteFile + ";type=i");
            m_client = url.openConnection();
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.."+"ftp://" + user + ":" + password + "@" + host + "/" + remoteFile + ";type=i");
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            StringWriter sw0 = new StringWriter();
            PrintWriter p0 = new PrintWriter(sw0, true);
            ex.printStackTrace(p0);
            erMesg = sw0.getBuffer().toString();
            return false;
        }
    }
//public static SimpleFTPClient conf(){
//        SimpleFTPClient f = new SimpleFTPClient();
//        f.setHost("ftp.drivehq.com");
//        f.setUser("sabari06");
//        f.setPassword("sabari06");
//        f.setRemoteFile("onepoint.wsdl");
//        boolean connected = f.connect();
//        System.out.println(">>>" + connected);
// return f;
//}
    public static void main(String arg[]) {
        SimpleFTPClient f = new SimpleFTPClient();
        f.setHost("ftp.drivehq.com");
        f.setUser("sabari06");
        f.setPassword("sabari06");
        f.setRemoteFile("c.txt");
        boolean connected = f.connect();
     //   System.out.println(">>>>>>>>>>"+f.downloadFile("D:/dd/onepoint.wsdl"));
     //   System.out.println(">>>" + connected);
        



//        if (connected) {
//            // Upload a file from your local drive, lets say in “c:/ftpul/u.txt�?
//            if (f.uploadFile("D:/dd/a.txt")) // display the message of success if uploaded
//            {
//                System.out.println(f.getLastSuccessMessage());
//            } else {
//                System.out.println(f.getLastErrorMessage());
//            }
//        } else {
//            // Display any connection exception, if any
//            System.out.println(f.getLastErrorMessage());
//        }

//
     //  f.setRemoteFile("www.wsdl");
       /* if (connected) {
            // The downloaded file to be saved to the local drive
            // as mydl.txt and in the subfoler c:\ftpdownloads
            if (f.downloadFile("/home/zeroone09/Desktop/New Folder_1/onepoint.wsdl")) // display the message of success if uploaded
            {
                System.out.println(f.getLastSuccessMessage());
            } else {
                System.out.println(f.getLastErrorMessage());
            }
        } else {
            // Display any connection exception, if any
            System.out.println(f.getLastErrorMessage());

        }*/
    }

	public boolean uploadFile(File file) {
		FileInputStream fis = null;
		try{
		 fis = new FileInputStream(AES.encriptFile(file));
		}
		catch(Exception e){
			e.printStackTrace();}
		return uploadFile(fis);
	}

	public OutputStream storeFileStream(String secondRemoteFile) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean completePendingCommand() {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean isConnected() {
		// TODO Auto-generated method stub
		return false;
	}

	public void logout() {
		// TODO Auto-generated method stub
		
	}

	public boolean storeFile(String secondRemoteFile, InputStream inputStream) {
		 try {
	        	
    	   	 
	        	

	         //   InputStream is = new FileInputStream(localfilename);        	
	            BufferedInputStream bis = new BufferedInputStream(inputStream);
	            OutputStream os = m_client.getOutputStream();
	            BufferedOutputStream bos = new BufferedOutputStream(os);
	            byte[] buffer = new byte[1024];
	            int readCount;

	            while ((readCount = bis.read(buffer)) > 0) {
	                bos.write(buffer, 0, readCount);
	            }
	            bos.close();

	            this.succMesg = "Uploaded!";

	            return true;
	        } catch (Exception ex) {
	            ex.printStackTrace();
	            StringWriter sw0 = new StringWriter();
	            PrintWriter p0 = new PrintWriter(sw0, true);
	            ex.printStackTrace(p0);
	            erMesg = sw0.getBuffer().toString();
	            return false;
	        }
	}
}
