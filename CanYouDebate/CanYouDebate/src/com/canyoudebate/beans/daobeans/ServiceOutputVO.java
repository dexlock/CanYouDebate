package com.canyoudebate.beans.daobeans;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;


public class ServiceOutputVO  implements Serializable 
{
	private static final long       serialVersionUID = 1L;
	
	private String                  responseCode     = ResponseCode.SUCCESS.getStatus();
	private String                  responseMessage  = "";
	private Map<String, Object>     parameters       = new HashMap<String, Object>();
	
	
	public String getResponseCode() {
		return responseCode;
	}
	public void setResponseCode(String responseCode) {
		this.responseCode = responseCode;
	}
	public String getResponseMessage() {
		return responseMessage;
	}
	public void setResponseMessage(String responseMessage) {
		this.responseMessage = responseMessage;
	}
	public Map<String, Object> getParameters() {
		return parameters;
	}
	public void setParameters(Map<String, Object> parameters) {
		this.parameters = parameters;
	}
	
}
