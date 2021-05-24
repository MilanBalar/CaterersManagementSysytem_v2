package com.controllers;

import java.util.Base64;

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
        String password=userData.getPassword();
        String encryptPass=Base64.getEncoder().encodeToString(password.getBytes());
        userData.setPassword(encryptPass);
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

	@RequestMapping("/logout")
	public String logoutPage(HttpServletRequest req) {
     HttpSession session =req.getSession();
     session.removeAttribute("user");
     if(session.getAttribute("user")==null) {
        return "homePage";
     }

		return "homePage";

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
		/*--------------- Encription & Decription start--------------------------*/
        String encryptPass=Base64.getEncoder().encodeToString(password.getBytes());
        System.out.println("encrpto password==="+encryptPass);
        String descPass=new String(Base64.getMimeDecoder().decode(encryptPass));
        System.out.println("decrpto password==="+descPass);
		/*--------------- Encription & Decription End--------------------------*/

	    TblAppUser user=caterersService.getUserByEmailAndPassword(email, encryptPass);

	    HttpSession httpSession =request.getSession();
	   if(email.equals("Admin@gmail.com") && encryptPass.equals("QWRtaW4="))
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
