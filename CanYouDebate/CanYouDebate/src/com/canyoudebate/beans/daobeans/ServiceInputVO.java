package com.canyoudebate.beans.daobeans;

import java.io.Serializable;
import java.util.Map;

public class ServiceInputVO implements Serializable 
{
	private static final long       serialVersionUID = 1L;

	private String                  endPoint         = "";
	private String                  serviceMethod    = "";
	private Map<String, String>     parameters       = null;

	public String getServiceMethod() {
		return serviceMethod;
	}
	public void setServiceMethod(String serviceMethod) {
		this.serviceMethod = serviceMethod;
	}
	public Map<String, String> getParameters() {
		return parameters;
	}
	public void setParameters(Map<String, String> parameters) {
		this.parameters = parameters;
	}
	public String getEndPoint() {
		return endPoint;
	}
	public void setEndPoint(String endPoint) {
		this.endPoint = endPoint;
	}


}
