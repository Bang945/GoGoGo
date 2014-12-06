package edu.fudan.nisl.jaq.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSON;
import net.sf.json.JSONObject;

public class Shop {
	String shopName;
	List<Deal> deals;

    String id;
    String vicinity;
	List<String> type;
	Map<String, Double> geometry;

	public Shop(String shopName, String id) {
	    this.shopName = shopName;
	}
	
	public Shop(String shopName, String id, String vicinity, Map<String, Double> geometry) {
	    this.shopName = shopName;
	    this.id = id;
	    this.vicinity = vicinity;
	    // this.type = type;
	    this.geometry = geometry;
	}
	
    public static Shop transferToShop(JSONObject obj) {
        JSONObject geo = obj.getJSONObject("geometry").getJSONObject("location");
        Map<String, Double> geometry = new HashMap<String, Double>();
        if (geo != null) {
            geometry.put("lat", (double) geo.getLong("lat"));
            geometry.put("lng", (double) geo.getLong("lng"));
        }
        return new Shop(obj.getString("name"), obj.getString("id"), obj.getString("vincinity"), geometry);
    }
    
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
