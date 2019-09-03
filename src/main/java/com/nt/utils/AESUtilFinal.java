package com.nt.utils;

import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

public final class AESUtilFinal {
	private static Cipher cipher;
	private static final String KEY_CHARSET = "UTF-8";
	private static final String KEY_ALGORITHM = "AES";
	private static final String CIPHER_ALGORITHM_CBC = "AES/CBC/PKCS5Padding";
	private static final Integer PRIVATE_KEY_SIZE_BIT = 128;
	private static final Integer PRIVATE_KEY_SIZE_BYTE = 16;

	public static String encrypt(String secretKey, String plainText) {
		if (secretKey.length() != PRIVATE_KEY_SIZE_BYTE) {
			throw new RuntimeException(
					"AESUtil:Invalid AES secretKey length (must be 16 bytes)");
		}
		String cipherText = "";
		try {
			initParam(secretKey, Cipher.ENCRYPT_MODE);
			byte[] bytePlainText = plainText.getBytes(KEY_CHARSET);
			byte[] byteCipherText = cipher.doFinal(bytePlainText);
			cipherText = new String(Base64.encodeBase64(byteCipherText));
		} catch (Exception e) {
			throw new RuntimeException("AESUtil:encrypt fail!", e);
		}
		return cipherText;
	}

	public static String decrypt(String secretKey, String cipherText) {
		if (secretKey.length() != PRIVATE_KEY_SIZE_BYTE) {
			throw new RuntimeException(
					"AESUtil:Invalid AES secretKey length (must be 16 bytes)");
		}
		String plainText = "";
		try {
			initParam(secretKey, Cipher.DECRYPT_MODE);
			byte[] byteCipherText = Base64.decodeBase64(cipherText.getBytes());
			byte[] bytePlainText = cipher.doFinal(byteCipherText);
			plainText = new String(bytePlainText, KEY_CHARSET);
		} catch (Exception e) {
			throw new RuntimeException("AESUtil:decrypt fail!", e);
		}
		return plainText;
	}

	public static void initParam(String secretKey, int mode) {
		try {
			SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
			secureRandom.setSeed(secretKey.getBytes());
			KeyGenerator keygen = KeyGenerator.getInstance(KEY_ALGORITHM);
			keygen.init(PRIVATE_KEY_SIZE_BIT, secureRandom);
			byte[] raw = secretKey.getBytes();
			SecretKeySpec key = new SecretKeySpec(raw, KEY_ALGORITHM);
			cipher = Cipher.getInstance(CIPHER_ALGORITHM_CBC);
			IvParameterSpec iv = new IvParameterSpec(secretKey.getBytes());
			cipher.init(mode, key, iv);
		} catch (Exception e) {
			throw new RuntimeException("AESUtil:initParam fail!", e);
		}
	}
}
