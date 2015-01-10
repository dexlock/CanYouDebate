package com.canyoudebate.endpoint;

import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

import org.springframework.context.ApplicationContext;

import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ProcResponse;
import com.canyoudebate.beans.daobeans.ServiceOutputVO;
import com.canyoudebate.service.DebateService;

public class DebateHomeEndPoint {
	
	public ServiceOutputVO getDebateCaytegoryList(User user, ApplicationContext context,HashMap<String, String> parameters){
		
		ServiceOutputVO serviceOutputVO = new ServiceOutputVO();
		
	try{
			
			Map<String , Object> buildMap = new WeakHashMap<String, Object>();
			DebateService service = new DebateService();
			ProcResponse response = service.getDebateCategoryList(user);
			
			buildMap.put("DebateCategoryList", response.getResponseOutput());
			serviceOutputVO.setParameters(buildMap);
			
	}
	catch(Exception e){e.printStackTrace();}
	
		return serviceOutputVO;
	}
	
	
	public ServiceOutputVO getTopicList(User user, ApplicationContext context,HashMap<String, String> parameters){
		
		ServiceOutputVO serviceOutputVO = new ServiceOutputVO();
		
	try{
			
			Map<String , Object> buildMap = new WeakHashMap<String, Object>();
			DebateService service = new DebateService();
			ProcResponse response = service.getTopicList(user,parameters.get("categoryId"));
			buildMap.put("DebateTopicList", response.getResponseOutput());
			serviceOutputVO.setParameters(buildMap);
			
	}
	catch(Exception e){e.printStackTrace();}
	
		return serviceOutputVO;
	}
	
}
