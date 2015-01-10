package com.canyoudebate.beans.daobeans;
 

public enum ResponseCode 
{
	SUCCESS("OK"),ERROR("ERROR"),NORMAL("NORMAL");
	
	private String status;
	
	private ResponseCode(String _status)
	{
		status = _status;
	}
	
	public String getStatus()
	{
		return status;
	}
}
