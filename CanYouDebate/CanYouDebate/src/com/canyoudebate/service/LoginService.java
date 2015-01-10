package com.canyoudebate.service;

import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ProcResponse;
import com.canyoudebate.dao.LoginDao;

public class LoginService {
	
	public ProcResponse userDetails(User user)
	{
		LoginDao dao = new LoginDao();
		ProcResponse response = null;
		response = dao.userDetails(user);
		return response;
	}

}
