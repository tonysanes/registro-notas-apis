package com.app.notas.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.UUID;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.keygen.KeyGenerators;

/**
 * Program to Encrypt / Decrypt String Using AES 128 bit Encryption Algorithm
 */
public class SecurityUtil {
	
	private static Logger logger = LoggerFactory.getLogger(SecurityUtil.class);
	
    private static final String cipherTransformation    = "AES/CBC/PKCS5PADDING";
    private static final String aesEncryptionAlgorithm = "AES";

    /**
     * Method for Encrypt Plain String Data
     * @param plainText
     * @return encryptedText
     */
    public static String encrypt(String plainText, String encryptionKey) {
        String encryptedText = "";
        try {
            Cipher cipher   = Cipher.getInstance(cipherTransformation);
            byte[] key      = encryptionKey.getBytes(StandardCharsets.UTF_8);
            SecretKeySpec secretKey = new SecretKeySpec(key, aesEncryptionAlgorithm);
            IvParameterSpec ivparameterspec = new IvParameterSpec(key);
            cipher.init(Cipher.ENCRYPT_MODE, secretKey, ivparameterspec);
            byte[] cipherText = cipher.doFinal(plainText.getBytes(StandardCharsets.UTF_8));
            Base64.Encoder encoder = Base64.getEncoder();
            encryptedText = encoder.encodeToString(cipherText);

        } catch (Exception e) {
        	logger.error("Exception while encrypt your value: {}", e);
        }
        return encryptedText;
    }

    /**
     * Method For Get encryptedText and Decrypted provided String
     * @param encryptedText
     * @return decryptedText
     */
    public static String decrypt(String encryptedText, String encryptionKey) {
        String decryptedText = "";
        try {
            Cipher cipher = Cipher.getInstance(cipherTransformation);
            byte[] key = encryptionKey.getBytes(StandardCharsets.UTF_8);
            SecretKeySpec secretKey = new SecretKeySpec(key, aesEncryptionAlgorithm);
            IvParameterSpec ivparameterspec = new IvParameterSpec(key);
            cipher.init(Cipher.DECRYPT_MODE, secretKey, ivparameterspec);
            Base64.Decoder decoder = Base64.getDecoder();
            byte[] cipherText = decoder.decode(encryptedText.getBytes(StandardCharsets.UTF_8));
            decryptedText = new String(cipher.doFinal(cipherText), StandardCharsets.UTF_8);

        } catch (Exception e) {
        	logger.error("Exception while decrypt your value: {}", e);
        }
        return decryptedText;
    }
    
    public static String generateKey(){
		return KeyGenerators.string().generateKey();
	}
	public static String generateKeyUUID(){
		return UUID.randomUUID().toString();
	}
	public static String generateBCrypt(String password) {
		return new BCryptPasswordEncoder().encode(password);
	}
	public static boolean matches(String oldPassword, String encodedPassword) {
		return new BCryptPasswordEncoder().matches(oldPassword, encodedPassword);
	}
	
	public static String decodeUTF8(String encodeString) {
		String decoded = null;
		try {
			decoded = URLDecoder.decode(encodeString, StandardCharsets.UTF_8.toString());
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return decoded;
	}
    
    public static void main(String[] args) {
        String plainString = "test";
        
        String encryptionKey = generateKey();
        
        String encyptStr   = encrypt(plainString, encryptionKey);
        String decryptStr  = decrypt(encyptStr, encryptionKey);
        String bcryptPass  = generateBCrypt(plainString);
        
        System.out.println("bcrypt  String  : "+bcryptPass);
        System.out.println("Key     String  : "+encryptionKey);
        System.out.println("Plain   String  : "+plainString);
        System.out.println("Encrypt String  : "+encyptStr);
        System.out.println("Decrypt String  : "+decryptStr);
        
    }
}
