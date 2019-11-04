package co.micol.dto;

import java.sql.Date;

public class MemberDto {
	private String id;
	private String name;
	private	String pw;
	private String grant;
	private Date enterDate;
	private String addr;
	
	
	
	public MemberDto() {
		super();
	}
	
	public MemberDto(String id, String name, String pw, String addr) {
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.addr = addr;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getGrant() {
		return grant;
	}
	public void setGrant(String grant) {
		this.grant = grant;
	}
	public Date getEnterDate() {
		return enterDate;
	}
	public void setEnterDate(Date enterDate) {
		this.enterDate = enterDate;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
}
