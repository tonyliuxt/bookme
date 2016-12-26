package com.nanjing.au.bookme.mail;

public class MailTaskVO {
	private String to;
	private String toWho;
	private String subject;
	private String body;
	private String phone;
	
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getToWho() {
		return toWho;
	}
	public void setToWho(String toWho) {
		this.toWho = toWho;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
