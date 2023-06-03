package com.urooj.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.urooj.Utility.FileUploadUtil;
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
	
	@RequestMapping(value ="/savamember", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public String savemember(@RequestParam("MemberId") int Id, @RequestParam("MemberName") String Name, 
			@RequestParam("Position") String position, @RequestParam("password") String password, 
			@RequestParam("Bio") String bio, @RequestParam("Pic") MultipartFile pic) throws IllegalStateException, IOException, ParseException {
		TeamMembers member = new TeamMembers();
		member.setMemberId(Id);
		member.setMemberName(Name);
		member.setPosition(position);
		member.setPassword(password);
		member.setBio(bio);
		member.setPicture(pic.getOriginalFilename());
		TeamRepo.save(member);
		String uploadDir = "team-photos/"+Id;
		FileUploadUtil.saveFile(uploadDir, pic.getOriginalFilename(), pic);
		return "forward:/teammembers";
	}
	
	@RequestMapping(value="/deletemember/{id}",method = RequestMethod.GET)
	public String deletemember(@PathVariable int id){
		TeamMembers member = TeamRepo.getReferenceById(id);
		try {
		      Path file = Paths.get(member.getPhotosImagePath());
		      Files.deleteIfExists(file);
		    } catch (IOException e) {
		      throw new RuntimeException("Error: " + e.getMessage());
		    }
		
		TeamRepo.deleteById(id);
		return "forward:/teammembers";
	}
	
	@RequestMapping("/ourteam")
	public String team(Model model) {
		model.addAttribute("Members",TeamRepo.findAll());
		return "team";
	}

}
