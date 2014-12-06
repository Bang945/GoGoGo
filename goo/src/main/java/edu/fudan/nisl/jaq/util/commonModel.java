package edu.fudan.nisl.jaq.util;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

public class commonModel {
	
	/**
	 * build invocation with token
	 * @param targetURI URI of target resource
	 * @param tokenId token id
	 * @return invocaiont build of target URI with tokenID in header
	 */
	public static Invocation.Builder buildInvocationWithToken(String targetURI, String tokenId){
		
		return buildInvocationWithoutToken(targetURI).header("X-Auth-Token", tokenId);
	}
	
	/**
	 * build invocation without token
	 * @param targetURI URI of target resource
	 * @return invocaiont build of target URI with tokenID in header
	 */
	public static Invocation.Builder buildInvocationWithoutToken(String targetURI){
		// init obj
		Client client = ClientBuilder.newClient();
		WebTarget tokenTarget = client.target(targetURI);
		Invocation.Builder invocation = tokenTarget
				.request(MediaType.APPLICATION_JSON_TYPE);

		// configure header
		invocation.header("Accept", "application/json");
		invocation.header("Content-Type", "application/json");
		
		return invocation;
	}	

	public static Invocation.Builder buildGetInvocationWithoutToken(String targetURI){
		// init obj
		Client client = ClientBuilder.newClient();
		WebTarget tokenTarget = client.target(targetURI);
		Invocation.Builder invocation = tokenTarget
				.request(MediaType.TEXT_PLAIN);

		// configure header
		invocation.header("Accept", "application/json");
		invocation.header("Content-Type", "application/json");
		
		return invocation;
	}
	
	//add URL param
	//WebTarget tokenTarget = client.target(targetURI).queryParam("limit", 1)
//	public static WebTarget buildWebTarget(String targetURI, Map <String, String> urlParam){
//		
//		//init target
//		Client client = ClientBuilder.newClient();
//		WebTarget target = client.target(targetURI);
//		
//		//add param
//		Iterator iter = urlParam.entrySet().iterator();
//		while(iter.hasNext()){
//			Map.Entry<String, String> entry = (Map.Entry<String, String>) iter.next();
//			
//		}
//	}
	public static Invocation.Builder buildInvocationWitTokenLimitNum(String targetURI, String tokenId, int maxNum){
		// init obj
		Client client = ClientBuilder.newClient();
		WebTarget tokenTarget = client.target(targetURI).queryParam("limit", maxNum);
		Invocation.Builder invocation = tokenTarget
				.request(MediaType.APPLICATION_JSON_TYPE);

		// configure header
		invocation.header("Accept", "application/json");
		invocation.header("Content-Type", "application/json");
		invocation.header("X-Auth-Token", tokenId);
		
		return invocation;
	}
	
	
}
