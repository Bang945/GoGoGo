package edu.fudan.nisl.jaq.service;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.fudan.nisl.jaq.model.Shop;
import edu.fudan.nisl.jaq.util.LocationServiceUtil;

@Service
public class MapService {
	public List<Shop> getNearbyShop(double lat, double lng){
		return LocationServiceUtil.getNearby(lat, lng);
	}
	
	public String getlocalShop(double jd, double wd){
		return null;
	}
}
