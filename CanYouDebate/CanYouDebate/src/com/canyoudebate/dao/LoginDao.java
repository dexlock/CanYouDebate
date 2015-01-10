package com.canyoudebate.dao;

import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ProcResponse;

public class LoginDao {

	public ProcResponse userDetails(User user) {
		ProcResponse response = new ProcResponse();

		int loginid = user.getUserId();
		if(loginid == 753916){

			user.setUserId(loginid);
			user.setName("Amar Mishra");
			user.setEmail("amarmishra@live.in");
			user.setUserName("dexlock");
			
			response.setResponseOutput(user);
		}
		else 
			response.setResponseMessage("User Not Found");
		return response;
	}

}
