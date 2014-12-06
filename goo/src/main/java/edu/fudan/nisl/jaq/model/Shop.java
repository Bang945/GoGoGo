package edu.fudan.nisl.jaq.model;

import java.util.List;

public class Shop {
	String shopName;
	List<Deal> deals;
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public List<Deal> getDeals() {
		return deals;
	}
	public void setDeals(List<Deal> deals) {
		this.deals = deals;
	}
}
