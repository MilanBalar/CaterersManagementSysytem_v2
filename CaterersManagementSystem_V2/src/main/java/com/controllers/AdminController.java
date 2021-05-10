package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.TblAppUser;
import com.service.CaterersService;

@Controller
public class AdminController {

	@Autowired
	CaterersService caterersService;

	@RequestMapping("/adminDashBoard")
	public String HomePage() {
      return "AdminDashBoard";
    }

   @RequestMapping("/availableCustomer")
	public String availableCustomerPage(Model m) {
	      List<TblAppUser> list=caterersService.listCaterers();
	       System.out.println("caterers list"+list);
		   m.addAttribute("catererslist", list);
	       return "AvailableCustomerDetails";
    }





}
