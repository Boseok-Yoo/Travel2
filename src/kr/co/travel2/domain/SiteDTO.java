package kr.co.travel2.domain;

import java.io.Serializable;

public class SiteDTO implements Serializable{
	private static final long serialVersionUID = 1L;
	private String sid;
	private String location;
	
	public SiteDTO() {}

	public SiteDTO(String sid, String location) {
		super();
		this.sid = sid;
		this.location = location;
	}
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}