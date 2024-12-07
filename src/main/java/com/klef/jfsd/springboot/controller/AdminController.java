package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminservice;
	
	@GetMapping("DonourLogin")
	public ModelAndView DonourLogin(){
		ModelAndView mv = new ModelAndView();
	    //mv.setViewName("home");
		mv.setViewName("DonourLogin");
	    return mv;
	}
    
	
	@GetMapping("Donourhome")
	public ModelAndView Donourhome(){
		ModelAndView mv = new ModelAndView();
	    //mv.setViewName("home");
		mv.setViewName("Donourhome");
		
		 long count =  adminservice.customercount();
		 mv.addObject("count",count);
		
	    return mv;
	}
    
	
	
	
	
	
	
	
	

	@PostMapping("checkDonourLogin")
	public ModelAndView checkDonourLogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		String duname = request.getParameter("duname");
		String dpassword = request.getParameter("dpassword");
		
		Admin donour = adminservice.checkAdminLogin(duname,dpassword);
		
		if(donour!=null) {
			mv.setViewName("Donourhome");
			
			 long count =  adminservice.customercount();
			 mv.addObject("count",count);
			
		}else {
			mv.setViewName("DonourLoginfailed");
			mv.addObject("message","Login Failed");
			
		}
		return mv;
		
	}
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcustomers");
		
		List<Customer> customers = adminservice.viewAllCustomers();
		mv.addObject("customerlist",customers);
		return mv;
		
	}



}
