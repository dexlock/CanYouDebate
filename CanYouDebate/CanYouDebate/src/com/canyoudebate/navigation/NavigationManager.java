package com.canyoudebate.navigation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ProcResponse;
import com.canyoudebate.enums.NavigationKeys;
import com.canyoudebate.service.LoginService;

@Controller
public class NavigationManager {


	@RequestMapping("/AdminHome")
	public String adminLogin(@RequestParam("adminId") int adminId, HttpSession session){
		
		ProcResponse response =null;
		
		User user =  null;
		user = new User();
		user.setUserId(adminId);
		LoginService service = new LoginService();
		response = service.userDetails(user);

		if(response != null)
		{
			user = (User)response.getResponseOutput();
			session.setAttribute("userSession", user);

				return NavigationKeys.Home.getNavigationKey();
		}
		else  {
			return NavigationKeys.Error.getNavigationKey();
		}
	}

	@RequestMapping("/Home")
	public String userLogin(@RequestParam(value = "userDetails[]") String[] userDetails, HttpSession session){

		System.out.println("Expect UserName" +userDetails[0] + "Expect Password" + userDetails[1]);		
		if(userDetails[0].equalsIgnoreCase("amarmishra"))
		{
			session.setAttribute("userSession", null);
			return NavigationKeys.Home.getNavigationKey();

		}
		else {
			return NavigationKeys.Error.getNavigationKey();
		}
	}

	@RequestMapping("/EditProfile")
	public String editProfile(){

		return NavigationKeys.EditProfile.getNavigationKey();
	}

	@RequestMapping("/HomePage")
	public String userHome(){
		return NavigationKeys.Home.getNavigationKey();
	}
	
	@RequestMapping("/DebateHome")
	public String debateHome(){
		return NavigationKeys.DebateHome.getNavigationKey();
	}
	
	@RequestMapping("/Login")
	public String loginPage(){
		System.out.println("hey in login controller");
		return NavigationKeys.Login.getNavigationKey();
	}
	
	@RequestMapping("/StartDebate")
	public String startDebate(@RequestParam(value = "selectedTopic") String selectedTopic, HttpServletRequest request){
		
		request.setAttribute("SelectedTopic", selectedTopic);
		System.out.println("Start Debate" + selectedTopic);
		return NavigationKeys.StartDebate.getNavigationKey();
	}
	
/*	@RequestMapping("/Discussion")
	public String discussionHome(){
		return NavigationKeys.DiscussHome.getNavigationKey();
	}*/
}
