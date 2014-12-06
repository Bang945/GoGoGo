package edu.fudan.nisl.jaq.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.fudan.nisl.jaq.model.Shop;
import edu.fudan.nisl.jaq.service.DealService;
import edu.fudan.nisl.jaq.service.MapService;


@Controller
@RequestMapping("/shop")
public class BuyController {
	@Autowired
	DealService dealService;
	@Autowired
	MapService mapService;
	
	@RequestMapping("/query.json")
	public @ResponseBody Object listAllDeal(double jd, double wd) {	
		List<Shop> list = dealService.queryDeal(mapService.getNearbyShop(jd, wd));
		JSONObject json = new JSONObject();
		json.put("shops", list);
		return json;
	}
	
	@RequestMapping("/message.json")
	public @ResponseBody Object listAllChat(int dealId) {			
		JSONObject json = new JSONObject();
		json.put("logs", dealService.queryChat(dealId));
		return json;
	}
	
	@RequestMapping("/location.json")
	public @ResponseBody Object localShop(double jd, double wd) {			
		JSONObject json = new JSONObject();
		json.put("shopName", mapService.getlocalShop(jd, wd));
		return json;
	}
	
	@RequestMapping("/create.do")
	public @ResponseBody String createDeal(String shopName, String info, int minutes, HttpServletRequest request) {	
		HttpSession session=request.getSession();
		//get deadline
		Date deadline = new Date();
		Calendar rightNow = Calendar.getInstance();
        rightNow.setTime(deadline);
        rightNow.add(Calendar.MINUTE, -minutes);
		return dealService.createDeal(shopName, info, (int)session.getAttribute("userid"), rightNow.getTime());
	}
	
	@RequestMapping("/send.do")
	public @ResponseBody String sendChat(String info, int dealId, HttpServletRequest request) {	
		HttpSession session=request.getSession();
		return dealService.message(info, dealId, (int)session.getAttribute("userid"));
	}
}
