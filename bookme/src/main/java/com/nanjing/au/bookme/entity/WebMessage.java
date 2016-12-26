package com.nanjing.au.bookme.entity;

public class WebMessage {
	private String ipaddress;
	private boolean emailsent;
	private boolean smssent;
	private boolean called;
	private String datetime;
	
	private ContactMessage contactmsg;
	
	public String getIpaddress() {
		return ipaddress;
	}
	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}
	public boolean isEmailsent() {
		return emailsent;
	}
	public void setEmailsent(boolean emailsent) {
		this.emailsent = emailsent;
	}
	public boolean isSmssent() {
		return smssent;
	}
	public void setSmssent(boolean smssent) {
		this.smssent = smssent;
	}
	public boolean isCalled() {
		return called;
	}
	public void setCalled(boolean called) {
		this.called = called;
	}
	public ContactMessage getContactmsg() {
		return contactmsg;
	}
	public void setContactmsg(ContactMessage contactmsg) {
		this.contactmsg = contactmsg;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	
}
