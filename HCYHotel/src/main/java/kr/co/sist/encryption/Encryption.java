package kr.co.sist.encryption;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Component;

import kr.co.sist.util.cipher.DataDecrypt;
import kr.co.sist.util.cipher.DataEncrypt;
@Component
public class Encryption {

	public String encryption(String plan)
			throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		String result = "";

		DataEncrypt de = new DataEncrypt("1120020301311126");
		result = de.encryption(plan);

		return result;
	}// encryption
	
	public String directEncryption(String plan)
			throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		String result = "";
		
		result = DataEncrypt.messageDigest("MD5", plan);
		
		return result;
	}// encryption
	
	public String decryption(String cipher)
			throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		String result = "";

		DataDecrypt dd = new DataDecrypt("1120020301311126");
		result = dd.decryption(cipher);

		return result;
	}// encryption 
	
}// class
