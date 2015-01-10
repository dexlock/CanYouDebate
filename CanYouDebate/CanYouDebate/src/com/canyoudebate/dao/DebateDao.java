package com.canyoudebate.dao;

import java.util.ArrayList;

import com.canyoudebate.beans.DebateCategory;
import com.canyoudebate.beans.Topics;
import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ProcResponse;

public class DebateDao {
	
	ProcResponse response = null;
	
	public ProcResponse getDebateCategoryList(User user) {
		ArrayList<DebateCategory> dcList = new ArrayList<>();
		 response = new ProcResponse();
		DebateCategory dc4,dc1,dc2,dc3,dc5,dc6,dc7 = null;
		
		System.out.println("in dc dao");
		dc1 = new DebateCategory (1,"Movies");
		dc2 = new DebateCategory(2, "Super Heros");
		dc3 = new DebateCategory(3, "Sports");
		dc4 = new DebateCategory(4, "Games");
		dc5 = new DebateCategory(5, "SmartPhones");
		dc6 = new DebateCategory(6, "Place Travel");
		dc7 = new DebateCategory(7, "Laptops/Computers");

		dcList.add(dc1);
		dcList.add(dc2);
		dcList.add(dc3);
		dcList.add(dc4);
		dcList.add(dc5);
		dcList.add(dc6);
		dcList.add(dc7);

		response.setResponseOutput(dcList);
		return response;
	}

	public ProcResponse getTopicList(User user, String categoryId) {
		
		ArrayList<Topics> topicList = new ArrayList<>();
		response = new ProcResponse();
		Topics topic1,topic2,topic3,topic4,topic5,topic6 = null;
		if(categoryId.equalsIgnoreCase("1")){
			topic1 =  new Topics(11,"Batman Vs Superman Who would win","jsp/modules/debate/images/batVsup.jpg","Not a comin fan boy ? But still everone of us must have wondered who would win a fight between Batman vs Superman. Lets see what you guys have to say..");
			topic2 =  new Topics(12,"Was Joker(Heath Ledger) best actor ever to potrayed the character","","");
			topic3 =  new Topics(13,"Batman is Partially Responsible for the Crimes of the Joker","","");
			topic4 =  new Topics(14,"Movies better than Books","","");
			topic5 =  new Topics(15,"Superman vs Batman","","");
			topic6 =  new Topics(16,"Superman vs Batman","","");
			
			topicList.add(topic1);
			topicList.add(topic2);
			topicList.add(topic3);
			topicList.add(topic4);
			topicList.add(topic5);
			topicList.add(topic6);
			
			response.setResponseOutput(topicList);
			
			System.out.println("in topic dao" + response);
		}
		return response;
	}

}
