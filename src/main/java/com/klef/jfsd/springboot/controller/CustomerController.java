package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/")
	public ModelAndView home(){
		ModelAndView mv = new ModelAndView();
	    //mv.setViewName("home");
		mv.setViewName("home");
	    return mv;
	}
	
	
	@GetMapping("TakerRegistration")
	public ModelAndView TakerRegistration (){
		ModelAndView mv = new ModelAndView();
	    //mv.setViewName("home");
		mv.setViewName("TakerRegistration");
	    return mv;
	}
	
	

	@GetMapping("Takerhome")
	public ModelAndView Takerhome (){
		ModelAndView mv = new ModelAndView();
	    //mv.setViewName("home");
		mv.setViewName("Takerhome");
	    return mv;
	}
	

	@GetMapping("TakerProfile")
	public ModelAndView TakerProfile (){
		ModelAndView mv = new ModelAndView();
	    //mv.setViewName("home");
		mv.setViewName("TakerProfile");
	    return mv;
	}
	
	
	@GetMapping("TakerLogin")
	public ModelAndView  TakerLogin (){
		ModelAndView mv = new ModelAndView();
	    //mv.setViewName("home");
		mv.setViewName("TakerLogin");
	    return mv;
	}
	
	@PostMapping("inserttaker")
	public ModelAndView inserttaker(HttpServletRequest request) {
		
		String name = request.getParameter("tname");
		String gender = request.getParameter("tgender");
		String dob = request.getParameter("tdob");
		String email = request.getParameter("temail");
		String location = request.getParameter("tlocation");
		String contact = request.getParameter("tcontact");
		String password = request.getParameter("tpassword");
		
		Customer customer = new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setDateofbirth(dob);
		customer.setEmail(email);
		customer.setLocation(location);
		customer.setContactno(contact);
		customer.setPassword(password);
		
		String message = customerService.customerRegistration(customer);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("TRegSucess");
		mv.addObject("message",message);
		
		return mv;
		}
	
	
	
	@PostMapping("checkcustomerlogin")  
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String temail=request.getParameter("temail");
		String tpassword=request.getParameter("tpassword");
		Customer customer=customerService.checkCustomerLogin(temail,tpassword);
		if(customer!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("customer",customer);
			mv.setViewName("Takerhome");
		}
		else {
			mv.setViewName("TakerLogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@PostMapping("checkTakerLogin")
	public ModelAndView checkTakerLogin(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		String temail = request.getParameter("temail");
		String tpassword = request.getParameter("tpassword");
		
		Customer customer = customerService.checkCustomerLogin(temail, tpassword);
		
		if(customer!=null) {
			
			HttpSession session = request.getSession();
			
			session.setAttribute("customer",customer);//customer is session object
			
			mv.setViewName("Takerhome");
			
		}else {
			mv.setViewName("TakerLogin");
			mv.addObject("message","Login Failed");
			
		}
		return mv;
		
	}
	
	
	@GetMapping("TakerLogout")
	public ModelAndView  TakerLogout (){
		ModelAndView mv = new ModelAndView();
	    //mv.setViewName("home");
		mv.setViewName("TakerLogout");
	    return mv;
	}
	



}


