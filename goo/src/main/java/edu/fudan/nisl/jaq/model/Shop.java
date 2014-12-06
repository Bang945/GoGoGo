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
        return new Shop(obj.getString("name"), obj.getString("id"), obj.getString("vicinity"), geometry);
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
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getVicinity() {
        return vicinity;
    }

    public void setVicinity(String vicinity) {
        this.vicinity = vicinity;
    }

    public List<String> getType() {
        return type;
    }

    public void setType(List<String> type) {
        this.type = type;
    }

    public Map<String, Double> getGeometry() {
        return geometry;
    }

    public void setGeometry(Map<String, Double> geometry) {
        this.geometry = geometry;
    }
}
