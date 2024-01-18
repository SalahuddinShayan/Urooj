package com.urooj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.urooj.entity.Admin;
import com.urooj.repository.AdminRepository;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository adminRepo;
	
	@RequestMapping("/")                     
    public String index() {
        return "index";           
    }
	
	@RequestMapping("/home")                     
    public String home() {
        return "index";           
    }

	
	@RequestMapping("/admin")
	public String adminlogin(Model m) {
		m.addAttribute("command", new Admin());
		return "admin";
	}
	
	@RequestMapping("/alogin")    
    public String login(@RequestParam String login,@RequestParam String password){    
    	String p = adminRepo.getp(login);
    	if(password.equals(p)) {
    		return "admin";
    	}
    	else {
        return "afail";}
    }
	
	@RequestMapping("/overview")                     
    public String overview() {
        return "overview";           
    }
	
	@RequestMapping("/mission&vision")                     
    public String mission() {
        return "mission&vision";           
    }
	
	@RequestMapping("/storyofchange")                     
    public String story() {
        return "storyofchange";           
    }
	
	@RequestMapping("/presscovrage")                     
    public String presscovrage() {
        return "presscovrage";           
    }
	
	@RequestMapping("/impact")                     
    public String impact() {
        return "impact";           
    }
	
	@RequestMapping("/testimonial")                     
    public String testimonial() {
        return "testimonial";           
    }
	
	@RequestMapping("/vocationaltraining")                     
    public String vocationaltraining() {
        return "vocationaltraining";           
    }
	
	@RequestMapping("/donate")                     
    public String donate() {
        return "donate";           
    }
	
	@RequestMapping("/volunteer")                     
    public String volunteer() {
        return "volunteer";           
    }
	
	@RequestMapping("/contactus")                     
    public String contactus() {
        return "contactus";           
    }
	
	@RequestMapping("/fellowship")                     
    public String fellowship() {
        return "fellowshipinternship";           
    }
	
	@RequestMapping("/careers")                     
    public String careers() {
        return "careers";           
    }
	
	@RequestMapping("/blog")                     
    public String blog() {
        return "blog";           
    }

}