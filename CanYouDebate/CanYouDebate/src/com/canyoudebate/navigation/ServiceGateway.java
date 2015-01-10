package com.canyoudebate.navigation;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ServiceInputVO;
import com.canyoudebate.beans.daobeans.ServiceOutputVO;
import com.canyoudebate.enums.SessionKeys;


@Controller
@RequestMapping("/ServiceGateway")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class ServiceGateway 
{
	@Autowired
	private Properties serviceGateWayKeys;
	
	@Autowired 
	private ApplicationContext applicationContext;
	

	
	
	@RequestMapping(value="/service",method=RequestMethod.POST)  
	@ResponseBody
	public ServiceOutputVO service(@RequestBody ServiceInputVO vo,HttpSession session,HttpServletRequest request)
	{	
		System.out.println("In Service GateWay");
		User    user                 =  null;
	
		String  ipAddress =  request.getHeader("X-FORWARDED-FOR");
		if (ipAddress     == null) {
		    ipAddress     =  request.getRemoteAddr();
		}
		
		long                         startTime         = new Date().getTime();
		
		ServiceOutputVO output   = null;
		try 
		{
			if (request!=null)
			{
				session=request.getSession(false);
				}
			user        = getLoggedUser(session);
		
		
			System.out.println("useer:::"+user);
			
			Class  invokedClass  = Class.forName(getFullClassPath(vo.getEndPoint()));
			Object object        = invokedClass.newInstance();
			Method method        = invokedClass.getDeclaredMethod(vo.getServiceMethod() , User.class, ApplicationContext.class,
																	  new HashMap<String, String>().getClass());
				
			output               = (ServiceOutputVO) method.invoke(object, user, applicationContext, vo.getParameters());
			
			
		
		
		if (output == null)
		{
			System.out.println("in output==null");
		output = new ServiceOutputVO();
		output.setResponseCode("-99999");
		output.setResponseMessage("Encountered a problem while processing the request.Please refresh the page to proceed.");
		}
		else
			{
			System.out.println("in output not null="+output.getResponseMessage());
			}
	
		//makeTransactioncomplete(status, commitTransaction);

		
		
		long endTime  = new Date().getTime();
		
		System.out.println("Acessed at    ~ " + new SimpleDateFormat("dd MMM yyyy hh:mm:ss a").format(startTime));
		System.out.println("IP Address    ~ " + ipAddress);
		if(user!=null)
		{
			System.out.println("User          ~ " + user.getName() + "(" + user.getUserId() +")");
		}
		System.out.println("Endpoint      ~ " + vo.getEndPoint());
		System.out.println("Service       ~ " + vo.getServiceMethod());
		System.out.println("Executed in   ~ " + (endTime - startTime) + " ms");
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
			System.out.println("in sg catch");
			if (output == null)
			{
			output = new ServiceOutputVO();
			output.setResponseCode("-99999");
			output.setResponseMessage("Encountered a problem while processing the request.Please refresh the page to proceed.");
			}
			//commitTransaction    = false;
		}
		return output;
	}
	
	private String getFullClassPath(String servicename)
	{
		return serviceGateWayKeys.getProperty(servicename);
	}
		
	private User   getLoggedUser(HttpSession session)
	{
		Object object = session.getAttribute(SessionKeys.USER_SESSION.getSessionKey());
		if(object != null)
		{
			return (User) object;
		}
		
		return null;
	}

}
