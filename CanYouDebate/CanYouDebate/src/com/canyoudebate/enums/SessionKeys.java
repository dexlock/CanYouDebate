package com.canyoudebate.enums;

public enum SessionKeys 
{
    USER_SESSION("USER_SESSION"),
    LOGGED_IN_AS("LOGGED_IN_AS");
	
	private String sessionKey;
	
	private SessionKeys(String sessionString)
	{
		sessionKey = sessionString;
	}
	
	public String getSessionKey()
	{
		return sessionKey;
	}
}
