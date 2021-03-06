package edu.fudan.nisl.jaq.model;

import java.util.Date;

public class Chatting {
	private int id;
	//private int user;
	private Users user;
	private int deal;
	private String info;
	private Date timeStamp;
	
	public void setChatting(int userId, int dealId, String info){
		Users user = new Users();
		user.setId(userId);
		this.setUser(user);
		this.setDeal(dealId);
		this.setInfo(info);
		this.setTimeStamp(new Date());
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
/*	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}*/
	public int getDeal() {
		return deal;
	}
	public void setDeal(int deal) {
		this.deal = deal;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Date getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Date timeStamp) {
		this.timeStamp = timeStamp;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
}
