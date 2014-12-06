package edu.fudan.nisl.jaq.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.fudan.nisl.jaq.dao.ChattingDAO;
import edu.fudan.nisl.jaq.dao.DealDAO;
import edu.fudan.nisl.jaq.model.Chatting;
import edu.fudan.nisl.jaq.model.Deal;
import edu.fudan.nisl.jaq.model.Shop;
import edu.fudan.nisl.jaq.model.Users;

@Service
public class DealService {
	@Autowired
	DealDAO dealDao;
	@Autowired
	ChattingDAO chattingDao;
	
	public List<Shop> queryDeal(List<Shop> shops){
		List<Shop> result = new ArrayList<Shop>();
		for(Shop shop : shops){
			shop.setDeals(dealDao.findDealByShop(shop.getShopName()));
			result.add(shop);
		}
		return result;
	}
	
	public List<Chatting> queryChat(int dealId){
		return chattingDao.findChattingByDeal(dealId);
	}
	
	public String createDeal(String shopName, String info, int userId, Date deadline){
		Deal deal = new Deal();
		deal.setShop(shopName);
		Users user = new Users();
		user.setId(userId);
		deal.setUser(user);
		deal.setInfo(info);
		deal.setDeadline(deadline);
		try{
			dealDao.create(deal);
			return "success";
		}catch(Exception e){
			e.printStackTrace();
			return "error";
		}
	}
	
	public String message(String info, int dealId, int userId){
		try{
			Chatting log = new Chatting();
			log.setChatting(userId, dealId, info);
			chattingDao.create(log);
			return "success";
		}catch(Exception e){
			e.printStackTrace();
			return "error";
		}
	}
}