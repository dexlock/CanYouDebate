package com.canyoudebate.service;

import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ProcResponse;
import com.canyoudebate.dao.DebateDao;

public class DebateService {
	
	DebateDao dao = null;
	ProcResponse response = null;
	
	public ProcResponse getDebateCategoryList(User user)
	{
		dao = new DebateDao();
		
		response = dao.getDebateCategoryList(user);
		return response;
	}

	public ProcResponse getTopicList(User user, String categoryId) {
		dao = new DebateDao();
		response = dao.getTopicList(user,categoryId);
		return response;
	}
}
