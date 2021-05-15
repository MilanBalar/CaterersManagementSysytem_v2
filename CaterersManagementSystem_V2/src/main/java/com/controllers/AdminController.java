package com.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.TblAppUser;
import com.service.CaterersService;

@Controller
public class AdminController {

	@Autowired
	CaterersService caterersService;

	@RequestMapping("/adminDashBoard")
	public String HomePage(HttpSession session,@ModelAttribute("userInfo") TblAppUser userData) {
		/*----------- user restriction for page access------------------*/
		TblAppUser current_user=(TblAppUser)session.getAttribute("user");
		   if(current_user==null){
		   	session.setAttribute("message", "You are not logged in !! Login first");

		   	return "loginPage";
		   }
		   else {
			    if(!("Admin").equals(current_user.getUserName())){
			   		session.setAttribute("message", "You are not Admin !! Do not Access this page");

			   		return "loginPage";
	              }
			    else {
			    	return "AdminDashBoard";
			    }
		   }

    }

   @RequestMapping("/availableCustomer")
	public String availableCustomerPage(Model m,HttpSession session,@ModelAttribute("userInfo") TblAppUser userData) {
	      List<TblAppUser> list=caterersService.listCaterers();
	       System.out.println("caterers list"+list);
		   m.addAttribute("catererslist", list);

		   /*----------- user restriction for page access------------------*/
			TblAppUser current_user=(TblAppUser)session.getAttribute("user");
			   if(current_user==null){
			   	session.setAttribute("message", "You are not logged in !! Login first");

			   	return "loginPage";
			   }
			   else {
				    if(!("Admin").equals(current_user.getUserName())){
				   		session.setAttribute("message", "You are not Admin !! Do not Access this page");

				   		return "loginPage";
		              }
				    else {
				    	return "AvailableCustomerDetail";
				    }
			   }

           }






}
