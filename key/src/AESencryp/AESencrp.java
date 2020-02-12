/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AESencryp;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class AESencrp {
    
     private static final String ALGO = "AES";
     protected static String k1 = "";

public static String encrypt(String Data,byte []keyValue) throws Exception {
        Key key = generateKey(keyValue);
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.ENCRYPT_MODE, key);
        byte[] encVal = c.doFinal(Data.getBytes());
        String encryptedValue = new BASE64Encoder().encode(encVal);
        return encryptedValue;
    }

    public static String decrypt(String encryptedData,byte []keyValue) throws Exception {
        Key key = generateKey(keyValue);
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.DECRYPT_MODE, key);
        byte[] decordedValue = new BASE64Decoder().decodeBuffer(encryptedData);
        byte[] decValue = c.doFinal(decordedValue);
        String decryptedValue = new String(decValue);
        return decryptedValue;
    }
   
    private static Key generateKey(byte[]keyValue) throws Exception {
   
        
        Key key = new SecretKeySpec(keyValue, ALGO);
        return key;
}
    public static String method() throws Exception{
        String encryptionKey = "MZygpewJsCpRrfOr";
	String plainText = "Hello world!";
	AdvancedEncryptionStandard  advancedEncryptionStandard = new AdvancedEncryptionStandard(encryptionKey);
	
        String cipherText = advancedEncryptionStandard.encrypt(plainText);
	String decryptedCipherText = advancedEncryptionStandard.decrypt(cipherText);
        
        System.out.println(plainText);
	System.out.println(cipherText);
	System.out.println(decryptedCipherText);  
        return k1;
    }

}


