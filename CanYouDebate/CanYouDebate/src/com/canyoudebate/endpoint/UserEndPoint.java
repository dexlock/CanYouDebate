package com.canyoudebate.endpoint;

import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

import org.springframework.context.ApplicationContext;

import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ProcResponse;
import com.canyoudebate.beans.daobeans.ServiceOutputVO;
import com.canyoudebate.dao.UserDao;

public class UserEndPoint {
	
	public ServiceOutputVO addUser(User user,ApplicationContext context,HashMap<String, String> parameters) throws Exception{
		
		ServiceOutputVO outputVO = new ServiceOutputVO();
		
		System.out.println("in user end point yay");
		
		try{
			
			Map<String , Object>     buildMap          = new WeakHashMap<String, Object>();

			
			user = new User();
			user.setUserName(parameters.get("userName"));
			user.setName(parameters.get("userName"));
			user.setPassword(parameters.get("password"));
			user.setEmail(parameters.get("userEmail"));
			
			
			
			
			
			UserDao userDao = new UserDao();
			
					
			ProcResponse response = userDao.addUser(user);
			
			buildMap.put("RESPONSECODE", response.getResponseCode());
			
			buildMap.put("MESSAGE", response.getResponseMessage());
			
			outputVO.setParameters(buildMap);
			
			
			
		}
		catch(Exception exception){
			
		}
		return null;
		
	}

}
