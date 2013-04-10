package action;
import javax.crypto.*;
import java.io.*;

import org.bouncycastle.openpgp.PGPObjectFactory;
import org.bouncycastle.openpgp.PGPPublicKey;
import org.bouncycastle.openpgp.PGPPublicKeyRing;
import org.bouncycastle.openpgp.PGPUtil;

public class Encryt {
   public static void main(String[] args) throws Exception {
      // First, create the encryption key...
      System.out.println("Generating key");

      KeyGenerator keygen = KeyGenerator.getInstance("DSA");
      SecretKey desKey = keygen.generateKey();

      System.out.println("Writing key to file...");
      byte[] keyBytes = desKey.getEncoded();

      System.out.println("Writing bytes = " + keyBytes.length);
      BufferedOutputStream out =
         new BufferedOutputStream(new FileOutputStream
         ("encrypted_key.txt"));
      out.write(keyBytes);
      out.flush();
      out.close();
     
      
      
      

      // Now, create the cipher object with appropriate parameters...
      System.out.println("Encrypting file using DES/ECB/PKCS5Padding");
      Cipher desCipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
      desCipher.init(Cipher.ENCRYPT_MODE, desKey);

      System.out.println("Reading cleartext file and encrypting...");
      BufferedOutputStream outData =
         new BufferedOutputStream(new FileOutputStream
         ("encrypted_data.txt"));
      BufferedInputStream in =
         new BufferedInputStream(new FileInputStream
         ("cleartext.txt"));
      while (in.available() > 0) {
         byte[] cleartextBytes = new byte[in.available()];
         in.read(cleartextBytes);
         // Now, encrypt them and write them to the encrypted file...
         byte[] encryptedBytes = desCipher.update(cleartextBytes);

         outData.write(encryptedBytes, 0, encryptedBytes.length);
      }    // while
      // Take care of any pending padding operations
      outData.write(desCipher.doFinal());
      in.close();
      outData.flush();
      outData.close();

      System.out.println("Done!");
   }    // main

}    // EncryptFileExample