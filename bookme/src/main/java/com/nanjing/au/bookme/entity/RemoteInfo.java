package com.nanjing.au.bookme.entity;

import com.nanjing.au.bookme.ipinfo.IpInfoVO;

public class RemoteInfo {
	private String ipaddress;
	private String firstdate;
	private String lastdate;
	private Integer totalcount;
	private IpInfoVO ipinfo;
	
	public IpInfoVO getIpinfo() {
		return ipinfo;
	}
	public void setIpinfo(IpInfoVO ipinfo) {
		this.ipinfo = ipinfo;
	}
	public String getIpaddress() {
		return ipaddress;
	}
	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}
	public String getFirstdate() {
		return firstdate;
	}
	public void setFirstdate(String firstdate) {
		this.firstdate = firstdate;
	}
	public String getLastdate() {
		return lastdate;
	}
	public void setLastdate(String lastdate) {
		this.lastdate = lastdate;
	}
	public Integer getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(Integer totalcount) {
		this.totalcount = totalcount;
	}
}
