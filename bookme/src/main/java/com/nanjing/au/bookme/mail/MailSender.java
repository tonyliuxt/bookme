package com.nanjing.au.bookme.mail;

import java.util.Properties;
import java.util.ResourceBundle;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MailSender {
	
	public static String mailUsername = "liudrivingschool@gmail.com";
	public static String mailPassword = "liuwang2@yunnan";

	public static String mailHost = "smtp.gmail.com";
	public static String mailPort = "587";

	private final static Logger mylogger = LoggerFactory.getLogger(MailSender.class);
	/**
	 * Send mail with specified params
	 * @param from who this is from
	 * @param to who this is for
	 * @param subject subject of the mail
	 * @param text body of the mail
	 */
	public static void send(MailTaskVO uvo){
		if(uvo == null)	return;
		ResourceBundle bundle = ResourceBundle.getBundle("messages", uvo.getLocale());
		
		final String from = mailUsername;
		final String pwd = mailPassword;

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", mailHost);
		props.put("mail.smtp.port", mailPort);
		
 		Session mailSession = Session.getDefaultInstance(props,new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, pwd);
			}
		});
 		
 		MimeMessage simpleMessage = new MimeMessage(mailSession);
		InternetAddress fromAddress = null;
		InternetAddress toAddress = null;
		try {
			fromAddress = new InternetAddress(from);
			toAddress = new InternetAddress(uvo.getTo());
		} catch (AddressException e) {
			e.printStackTrace();
		}
		
		try {
			String sendsubject = "Dear "+uvo.getToWho() +", "+bundle.getString("index.contact.mailSubject");
			String sendbody = "Dear "+uvo.getToWho() +", <BR><BR>"+bundle.getString("index.contact.mailSubject") + "<BR><BR>" + bundle.getString("index.contact.mailBody") + bundle.getString("index.contact.mailSignature");
			simpleMessage.setFrom(fromAddress);
			simpleMessage.setRecipient(RecipientType.TO, toAddress);
			simpleMessage.setSubject(sendsubject);
			simpleMessage.setText(sendbody, "UTF-8", "html");
						
			Transport.send(simpleMessage);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		mylogger.info("Mail sent. to:" + uvo.getTo());
	}
		
	public static void main(String args[]){
		MailTaskVO uvo = new MailTaskVO();
		uvo.setTo("liu76xt@gmail.com");
		send(uvo);
	}

}
