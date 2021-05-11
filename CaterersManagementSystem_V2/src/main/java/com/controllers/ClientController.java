package com.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.TblAppUser;
import com.service.CaterersService;

@Controller
public class ClientController {
	@Autowired
	CaterersService caterersService;

	@RequestMapping("/clientDashBoard")
	public String HomePage(HttpSession session,@ModelAttribute("userInfo") TblAppUser userData) {

		TblAppUser current_user=(TblAppUser)session.getAttribute("user");
		   if(current_user==null){
		   	session.setAttribute("message", "You are not logged in !! Login first");

		   	return "loginPage";
		   }
		   else {
			    if(("Admin").equals(current_user.getUserName())){
			   		session.setAttribute("message", "You are not Customer !! Do not Access this page");

			   		return "loginPage";
	              }
			    else {
                       return "ClientDashBoard";
			    }
		   }

    }


}
