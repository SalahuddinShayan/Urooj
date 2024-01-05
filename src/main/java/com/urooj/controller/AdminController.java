package com.urooj.controller;

import javax.servlet.http.HttpSession;

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
		return "adminlogin";
	}
	
	@RequestMapping("/alogin")    
    public String login(@RequestParam String login,@RequestParam String password,HttpSession session){    
    	String p = adminRepo.getp(login);
    	if(password.equals(p)) {
    		session.setAttribute("admin",login);
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

}