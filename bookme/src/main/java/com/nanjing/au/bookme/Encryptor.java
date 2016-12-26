package com.nanjing.au.bookme;

import org.springframework.util.Base64Utils;

public class Encryptor {
	    private static final String DEFAULT_ENCODING = "UTF-8"; 
	    private static final String key = "NanJing123@Melbourne";

	    public static String EncodeWithKey(String txt){
	    	return base64encode(xorMessage(txt, key));
	    }
	    
	    public static String DecodeWithKey(String txt){
	    	return xorMessage(base64decode(txt), key);
	    }
	    
	    private static String base64encode(String text) {
	        try {
	            return new String(Base64Utils.encode(text.getBytes(DEFAULT_ENCODING)));
	        } catch (Exception e) {
	            return null;
	        }
	    }//base64encode

	    private static String base64decode(String text) {
	        try {
	            return new String(Base64Utils.decodeFromString(text), DEFAULT_ENCODING);
	        } catch (Exception e) {
	            return null;
	        }
	    }//base64decode

	    private static String xorMessage(String message, String key) {
	        try {
	            if (message == null || key == null) return null;

	            char[] keys = key.toCharArray();
	            char[] mesg = message.toCharArray();

	            int ml = mesg.length;
	            int kl = keys.length;
	            char[] newmsg = new char[ml];

	            for (int i = 0; i < ml; i++) {
	                newmsg[i] = (char)(mesg[i] ^ keys[i % kl]);
	            }//for i

	            return new String(newmsg);
	        } catch (Exception e) {
	            return null;
	        }
	    }//xorMessage

	    public static void main(String[] args) {
	        String txt = "Password for accessing endpoints.";
	        //System.out.println(txt + " XOR-ed to: " + (txt = xorMessage(txt, key)));

	        String encoded = base64encode(xorMessage(txt, key));
	        String decoded = xorMessage(base64decode(encoded), key);
	        System.out.println("Encoded [" + encoded +"] from [" + decoded +"]");
	        System.out.println("Decoded [" + encoded + "] to [" + decoded +"]");
	    }


}
