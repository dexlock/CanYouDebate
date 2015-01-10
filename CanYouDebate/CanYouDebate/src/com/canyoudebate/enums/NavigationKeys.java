package com.canyoudebate.enums;

public enum NavigationKeys {
	
	EditProfile("editprofile"),
	Home("homePage"),
	DebateHome("debateHomePage"),
	DiscussHome("discussHomePage"),
	Error("error"),
	Login("login"),
	StartDebate("startdebate");
	
	private String navigationKey;
	
	private NavigationKeys(String navString)
	{
		navigationKey = navString;
	}
	
	public String getNavigationKey()
	{
		return navigationKey;
	}
}
