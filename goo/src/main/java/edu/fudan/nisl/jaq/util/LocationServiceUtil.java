package edu.fudan.nisl.jaq.util;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.core.Response;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;
import edu.fudan.nisl.jaq.model.Shop;

public class LocationServiceUtil {
    private static String GOOGLE_API_KEY = "AIzaSyBARZOyD4L5FHUj8kNg9WXwowgickaGV7A";
    private static String GOOGLE_API_URL = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?";
    private static String DEFAULT_SEARCH_TYPE = "clothing_store";
    private static double DEFAULT_SEARCH_RADIUS = 100.0;

    private static String buildUrl(double lat, double lng, double radius, String type) {
        String url = GOOGLE_API_URL + "location=" + lat + "," + lng;
        url += "&radius=" + radius;
        url += "&types=" + type;
        url += "&key=" + GOOGLE_API_KEY;
        System.out.print(url);
        return url;
    }
    
    public static List<Shop> getNearby(double lat, double lng) {
        return getNearby(lat, lng, DEFAULT_SEARCH_RADIUS, DEFAULT_SEARCH_TYPE);
    }
    
    public static List<Shop> getNearby(double lat, double lng, double radius, String type) {
        Response response = commonModel.buildInvocationWithoutToken(buildUrl(lat, lng, radius, type)).get();
        if (response.getStatus() != 200) return null;
        
        String res = response.readEntity(String.class);
        JSONArray results = ((JSONObject) JSONSerializer.toJSON(res)).getJSONArray("results");
        System.out.println(res);
        
        
        List<Shop>  shops = new ArrayList<Shop>();
        for (int i = 0; i < results.size(); i ++) {
            shops.add(Shop.transferToShop((JSONObject) results.get(i)));
        }
        
        System.out.println(shops.get(0).getShopName());
        return shops;
    }

    public static void main(String[] args) {
        double lat = 31.236776799999998, lng = 121.5027612;
        getNearby(lat, lng);
    }
    
}
