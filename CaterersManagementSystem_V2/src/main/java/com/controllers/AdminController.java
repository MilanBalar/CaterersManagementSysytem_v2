package com.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String availableCustomerPage() {
      return "AvailableCustomer";
    }



}
