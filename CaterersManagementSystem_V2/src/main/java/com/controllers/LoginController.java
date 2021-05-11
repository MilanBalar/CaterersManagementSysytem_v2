package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.TblAppUser;
import com.service.CaterersService;

@Controller
public class LoginController {

	@Autowired
	CaterersService caterersService;

	@RequestMapping("/")
	public String HomePage() {


		return "homePage";

	}
	@RequestMapping(value = "homePage",method = RequestMethod.GET)
	public String HomePages() {


		return "homePage";

	}
	@RequestMapping(value = "register",method = RequestMethod.GET)
	public String RegisterPage(@ModelAttribute("userInfo") TblAppUser userData) {

		return "register";

	}

	@RequestMapping(value = "saveEmp",method = RequestMethod.POST)
	public String saveEmpPage(@ModelAttribute("userInfo") TblAppUser userData,HttpServletRequest req) {

		caterersService.addCaterers(userData);
		//session
		HttpSession httpSession=req.getSession();
		httpSession.setAttribute("message","Registration successful !!");

		System.out.print("Login successfully");

		return "loginPage";

	}
	@RequestMapping("/login")
	public String loginPage(@ModelAttribute("userInfo") TblAppUser userData) {

		return "loginPage";

	}


	@RequestMapping("/ajax/checkEmailAvailibility")
	@ResponseBody
	public String checkEmailAvailibiklity(@RequestParam String email) {

		System.out.println("ajax called");
		if(caterersService.checkEmailAvailability(email)) {
			return "This Email id is already taken. choose another one";

		}
		else
		{
			return "Yes!! you can take this Email Id";

		}
	}

   // login Authentication logic
	@RequestMapping("/loginAuthentication")
	public String loginAuthenticationPage(@RequestParam("email") String email,@RequestParam("password") String password,HttpServletRequest request,ModelMap modelMap) {

		System.out.println(email);
		System.out.println(password);
	    TblAppUser user=caterersService.getUserByEmailAndPassword(email, password);
	    HttpSession httpSession =request.getSession();
	   if(email.equals("Admin@gmail.com") && password.equals("Admin"))
	   {
		   System.out.println("Super admin Login");
		   modelMap.addAttribute("user", "Admin");
		   httpSession.setAttribute("user",user);
		   return "AdminDashBoard";
	  }
	   else if(user==null)
	   {
           httpSession.setAttribute("message", "Invalid Credential !! Try Again");
		   return "redirect:/login";
	   }
	   else {
           System.out.println(" use login identity is :: -   "+ user.getUserName());
           httpSession.setAttribute("user",user);
           modelMap.addAttribute("user", user.getUserName());
		return "ClientDashBoard";
	   }

	}


	@RequestMapping("/termAndCondition")
	public String termAndConditionPage() {

		return "termsAndCondition";

	}
	@RequestMapping("/blog")
	public String blogPage() {

		return "blog";

	}
	@RequestMapping("/contact")
	public String contactPage() {

		return "contact";

	}
	@RequestMapping("/events")
	public String eventsPage() {

		return "events";

	}
	@RequestMapping("/index")
	public String homePages() {

		return "homePage";

	}
	@RequestMapping("/menu")
	public String menuPage() {

		return "menu";

	}
	@RequestMapping("/single")
	public String singlePage() {

		return "single";

	}
	@RequestMapping("/typo")
	public String typoPage() {

		return "typo";

	}




}
