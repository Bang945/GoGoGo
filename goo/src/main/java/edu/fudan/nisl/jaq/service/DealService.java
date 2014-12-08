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
	
	public List<Shop> queryDeal(double wd, double jd, List<Shop> shops){
		List<Shop> result = new ArrayList<Shop>();
		for(Shop shop : shops){
			if("HSBC".equals(shop.getShopName()))continue;
			shop.setDeals(dealDao.findDealByShop(shop.getShopName()));
			shop.setDistance(getDistatce(wd,jd,shop.getGeometry().get("lat"),shop.getGeometry().get("lng")));
			result.add(shop);
		}
		return result;
	}
	
	public List<Chatting> queryChat(int dealId){
		return chattingDao.findChattingByDeal(dealId);
	}
	
	public Deal queryExactDealInfo(int dealId){
		return dealDao.findById(dealId);
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
	
	private static double getDistatce(double lat1, double lon1, double lat2, double lon2) { 
		System.out.println("lat1 "+lat1);
		System.out.println("lon1 "+lon1);
		System.out.println("lat2 "+lat2);
		System.out.println("lon2 "+lon2);
		double a, b, R;  
	    R = 6378137; // 地球半径  
	    lat1 = lat1 * Math.PI / 180.0;  
	    lat2 = lat2 * Math.PI / 180.0;  
	    a = lat1 - lat2;  
	    b = (lon1 - lon2) * Math.PI / 180.0;  
	    double d;  
	    double sa2, sb2;  
	    sa2 = Math.sin(a / 2.0);  
	    sb2 = Math.sin(b / 2.0);  
	    d = 2  
	            * R  
	            * Math.asin(Math.sqrt(sa2 * sa2 + Math.cos(lat1)  
	                    * Math.cos(lat2) * sb2 * sb2));  
	    return d;  
    }
}
