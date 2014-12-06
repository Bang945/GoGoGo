package edu.fudan.nisl.jaq.model;

import java.util.Date;

public class Deal {
	private int id;
	private String shop;
//	private int user;
	private Users user;
	private String info;
	private Date deadline;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShop() {
		return shop;
	}
	public void setShop(String shop) {
		this.shop = shop;
	}
/*	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}*/
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
}
