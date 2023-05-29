package com.urooj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping("/createadmin")                     
    public String Admincreat(Model m) {
        try {
        	@SuppressWarnings("unused")
			List<Admin> L = adminRepo.findAll();
        	return "alreadycreated";
        }
        catch(NullPointerException e){
        	m.addAttribute("command", new Admin());
        	return "createadmin";
        }
		           
    }
	
	@RequestMapping("/saveadmin")
    public String save(@ModelAttribute("admin") Admin admin){    
    	adminRepo.save(admin);    
        return "admincreated";   
    }
	
	@RequestMapping("/adminlogin")
	public String adminlogin(Model m) {
		m.addAttribute("command", new Admin());
		return "adminlogin";
	}
	
	@RequestMapping("/alogin")    
    public String login(@RequestParam String login,@RequestParam String password,Model m){    
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

}