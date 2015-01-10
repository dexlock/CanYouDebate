package com.canyoudebate.beans;

public class DebateCategory{
	private int debateCategoryId;
	private String debateCategoryName;
	
	
	
	public DebateCategory(int debateCategoryId, String debateCategoryName) {
		super();
		this.debateCategoryId = debateCategoryId;
		this.debateCategoryName = debateCategoryName;
	}
	
	public int getDebateCategoryId() {
		return debateCategoryId;
	}
	public void setDebateCategoryId(int debateCategoryId) {
		this.debateCategoryId = debateCategoryId;
	}
	public String getDebateCategoryName() {
		return debateCategoryName;
	}
	public void setDebateCategoryName(String debateCategoryName) {
		this.debateCategoryName = debateCategoryName;
	}
	
}
