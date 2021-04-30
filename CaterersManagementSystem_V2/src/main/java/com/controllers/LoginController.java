package com.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	@RequestMapping(value = "register",method = RequestMethod.GET)
	public String RegisterPage(@ModelAttribute("userInfo") TblAppUser userData) {

		return "register";

	}

	@RequestMapping(value = "saveEmp",method = RequestMethod.POST)
	public String saveEmpPage(@ModelAttribute("userInfo") TblAppUser userData) {

		caterersService.addCaterers(userData);

		System.out.print("Login successfully");

		return "loginPage";

	}
	@RequestMapping("/login")
	public String loginPage(@ModelAttribute("userInfo") TblAppUser userData) {

		return "loginPage";

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