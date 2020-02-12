<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@page import="javax.crypto.Cipher"%>
<%@ page import="java.sql.*,databaseconnection.*,org.apache.commons.lang3.RandomStringUtils"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.security.Key"%>
<%@ pageimport= "javax.crypto.Cipher"%>
<%@ pageimport="javax.crypto.spec.SecretKeySpec"%>

<%
String fname=request.getParameter("fname");
//String fowner=request.getParameter("fowner");
String fid=request.getParameter("fid");
//System.out.println("fname"+fa);
String emailid=request.getParameter("emailid");
String f=null;
System.out.println(emailid);
//int keye=(int) (Math.random() * 1000);
//int ke=(int) (Math.random() * 1000);
//System.out.println("key1 = " + ke);

String key2 = RandomStringUtils.randomAlphabetic(16);

System.out.println("key2 = " + key2);

// Random string only with numbers

String key3 = RandomStringUtils.random(7, false, true);

System.out.println("key3 = " + key3);

// Random alphabetic string

// Random ASCII string

String key4= RandomStringUtils.randomAscii(6);

System.out.println("key4 = " + key4);




       String text = "";

        //String key = "Bar12345Bar12345"; // 128 bit key
     // Create key and cipher

         Key aesKey = new SecretKeySpec(key2.getBytes(), "AES");
     Cipher cipher = Cipher.getInstance("AES");
       // encrypt the text

         cipher.init(Cipher.ENCRYPT_MODE, aesKey);

         byte[] encrypted = cipher.doFinal(text.getBytes());

         System.out.println("encript"+new String(encrypted));
		 String encstr= new String(encrypted);
		 System.out.println("String : "+encstr);
		 

         // decrypt the text

       //  cipher.init(Cipher.DECRYPT_MODE, aesKey);

       //  String decrypted = new String(cipher.doFinal(encrypted));

       //  System.out.println(decrypted);

   

// Create a random string with indexes from the given array of chars

/*string = RandomStringUtils.random(32, 0, 20, true, true, "bj81G5RDED3DC6142kasok".toCharArray());

System.out.println("Random 3 = " + string);
*/


//String ee="chennaisunday.cs0166@gmail.com";

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="rajkumar.coign@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="success*"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

//String from ="CloudAdmin@gmail.com"; //Email id of the recipient

String subject ="Your File Access Key and filename ";

String to =emailid;// out going email id



//String messageText ="key is your user id";
String messageText ="<table bgcolor=\"#FFFF99\" align=\"center\"width=\"500px\" border=\"2\" cellspacing=\"1\"><tr ><td align=\"center\">Key1</td><td align=\"center\">key2</td></tr><tr ><td align=\"center\">"+key2+"</td><td align=\"center\">"+key3+""+key4+"</td></tr></table>";

//String messageText ="<html><body><h1>admin cloud file Access</h1><p> keyword1:"+keye+"</br> keyword3 Encrpited:"+encstr+" </br>keyword3:"+key3+"keyword4:"+key4+"</p> </body></html>";
//String messageText1 ="admin cloud file Access keyword1:  "+encstr;
 // String messageText2 ="admin cloud file Access keyword2:  "+key3;
  // String messageText3 ="admin cloud file Access keyword3:  "+key4;                   

boolean sessionDebug = true;
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(user));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);

try {
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("<h1>Sucess Send to Mail::</h1>"); // assume it was sent */
	}   catch(Exception e)
		   {
		   response.sendRedirect("admin.jsp?faild");
		   }


String sat="keysend";
try
{
	Class.forName("com.mysql.jdbc.Driver");		
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/key", "root", "");
//Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("update up set status='"+sat+"',akey1='"+key2+"',akey2='"+encstr+"',akey3='"+key3+key4+"' where fid='"+fid+"' ");
int x=ps1.executeUpdate();
if(x>0)
{
 response.sendRedirect("admin.jsp?send");
}else
{
response.sendRedirect("admin.jsp?faild");
}
}
 catch(Exception e11)
{
out.println(e11.getMessage());

}

%>
<%/*

   }catch(Exception e) {

         e.printStackTrace();

      }
	  */%>
	  
	  
	  




