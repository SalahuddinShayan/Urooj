package com.urooj.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;


import com.urooj.entity.TeamMembers;
import com.urooj.repository.TeamMembersRepository;

@Controller
public class TeamMembersController {
	
	@Autowired
	TeamMembersRepository TeamRepo;
	
	@RequestMapping("/teammembers")
	public String memberlist(Model model) {
			model.addAttribute("Members",TeamRepo.findAll());
			model.addAttribute("command",new TeamMembers());
		    return "teammembersback";
	    
	}
	
	@GetMapping("/member-image/{id}")
	@ResponseBody
	void showImage(@PathVariable("id") int id, HttpServletResponse response, Optional<TeamMembers> members)
			throws ServletException, IOException {
		members = TeamRepo.findById(id);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		response.getOutputStream().write(members.get().getPicture());
		response.getOutputStream().close();
	}
	
	@RequestMapping(value ="/savamember", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public RedirectView  savemember(@RequestParam("MemberId") int Id, @RequestParam("MemberName") String Name, 
			@RequestParam("Position") String position, @RequestParam("password") String password, 
			@RequestParam("Bio") String bio, @RequestParam("Pic") MultipartFile pic) throws IllegalStateException, IOException, ParseException {
		TeamMembers member = new TeamMembers();
		member.setMemberId(Id);
		member.setMemberName(Name);
		member.setPosition(position);
		member.setPassword(password);
		member.setBio(bio);
		member.setPicture(pic.getBytes());
		TeamRepo.save(member);
		RedirectView redirectView= new RedirectView("/teammembers",true);
	    return redirectView;
		}
	
	@RequestMapping(value="/deletemember")
	public RedirectView  deletemember(@RequestParam("MemberId") int id){
		TeamRepo.deleteById(id);
		RedirectView redirectView= new RedirectView("/teammembers",true);
	    return redirectView;
		}
		
	
	@RequestMapping("/ourteam")
	public String team(Model model) {
		model.addAttribute("Members",TeamRepo.findAll());
		return "team";
	}

}
