package com.canyoudebate.beans;

public class Topics {
	
	private String topicName;
	private int topicId;
	private String url;
	private String description;

	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Topics(int topicId,String topicName,String url,String description) {
		super();
		this.topicName = topicName;
		this.topicId = topicId;
		this.url = url;
		this.description = description;
	}
	public String getTopicName() {
		return topicName;
	}
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
