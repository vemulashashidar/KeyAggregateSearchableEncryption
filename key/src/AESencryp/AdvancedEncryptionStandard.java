/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AESencryp;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/**
 *
 * @author LIPUNI
 */
class AdvancedEncryptionStandard {
    private String encryptionKey;

    public AdvancedEncryptionStandard(String encryptionKey)
    {
        this.encryptionKey = encryptionKey;
    }

    public String encrypt(String plainText) throws Exception
    {
        Cipher cipher = getCipher(Cipher.ENCRYPT_MODE);
        byte[] encryptedBytes = cipher.doFinal(plainText.getBytes());
        String cp = new BASE64Encoder().encode(encryptedBytes); 
        return cp;
    }

    public String decrypt(String encrypted) throws Exception
    {
        Cipher cipher = getCipher(Cipher.DECRYPT_MODE);
        byte[] plainBytes = new BASE64Decoder().decodeBuffer(encrypted);
        byte[] decValue = cipher.doFinal(plainBytes);
        String decryptedValue = new String(decValue);
        return decryptedValue;
    }

    private Cipher getCipher(int cipherMode)
            throws Exception
    {
        String encryptionAlgorithm = "AES";
        SecretKeySpec keySpecification = new SecretKeySpec(
                encryptionKey.getBytes("UTF-8"), encryptionAlgorithm);
        Cipher cipher = Cipher.getInstance(encryptionAlgorithm);
        cipher.init(cipherMode, keySpecification);

        return cipher;
    }
}
