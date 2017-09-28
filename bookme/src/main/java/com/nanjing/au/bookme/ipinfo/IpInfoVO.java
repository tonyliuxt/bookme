package com.nanjing.au.bookme.ipinfo;

/**
 * 
 * @author Gordon
 *
 *{
  "ip": "66.249.70.15",
  "hostname": "crawl-66-249-70-15.googlebot.com",
  "city": "Mountain View",
  "region": "California",
  "country": "US",
  "loc": "37.4192,-122.0574",
  "org": "AS15169 Google Inc.",
  "postal": "94043"
}
 */
public class IpInfoVO {

	private String ip;
	private String hostname;
	private String city;
	private String region;
	private String country;
	private String loc;
	private String org;
	private String postal;
	
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getHostname() {
		return hostname;
	}
	public void setHostname(String hostname) {
		this.hostname = hostname;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getOrg() {
		return org;
	}
	public void setOrg(String org) {
		this.org = org;
	}
	public String getPostal() {
		return postal;
	}
	public void setPostal(String postal) {
		this.postal = postal;
	}
	
	
}
