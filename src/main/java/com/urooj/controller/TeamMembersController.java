package com.urooj.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.urooj.entity.TeamMembers;
import com.urooj.repository.TeamMembersRepository;

@Controller
public class TeamMembersController {
	
	@Autowired
	TeamMembersRepository TeamRepo;
	
	@Autowired
    private HttpServletRequest request;
	
	@RequestMapping("/teammembers")
	public String memberlist(Model model) {
		model.addAttribute("Members",TeamRepo.findAll());
		model.addAttribute("command",new TeamMembers());
	    return "teammembersback";
	    
	}
	
	@RequestMapping(value ="/savamember", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public String savemember(@RequestParam("MemberId") int Id, @RequestParam("MemberName") String Name, 
			@RequestParam("Position") String position, @RequestParam("Occupation") String occupation, 
			@RequestParam("DOJ") String DOJ, @RequestParam("password") String password, 
			@RequestParam("Bio") String bio, @RequestParam("Pic") MultipartFile pic) throws IllegalStateException, IOException, ParseException {
		TeamMembers member = new TeamMembers();
		member.setMemberId(Id);
		member.setMemberName(Name);
		member.setPosition(position);
		member.setOccupation(occupation);
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(DOJ);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String test = simpleDateFormat.format(date);
		member.setDOJ(test);
		member.setPassword(password);
		member.setBio(bio);
		member.setPicture(pic.getOriginalFilename());
		TeamRepo.save(member);
		String filePath = request.getServletContext().getRealPath("/");
		pic.transferTo(new File(filePath+pic.getOriginalFilename()));
		return "forward:/teammembers";
	}
	
	@RequestMapping(value="/deletemember/{id}",method = RequestMethod.GET)
	public String deletemember(@PathVariable int id){
		TeamRepo.deleteById(id);
		return "forward:/teammembers";
	}
	
	@RequestMapping("/ourteam")
	public String team(Model model) {
		model.addAttribute("Members",TeamRepo.findAll());
		return "team";
	}

}