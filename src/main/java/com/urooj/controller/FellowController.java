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

import com.urooj.entity.Fellows;
import com.urooj.repository.FellowsRepository;

@Controller
public class FellowController {
	
	@Autowired
	FellowsRepository fellowRepo;
	
	@RequestMapping("/fellowsback")
	public String memberlist(Model model) {
		model.addAttribute("Fellows",fellowRepo.findAll());
		model.addAttribute("command",new Fellows());
	    return "fellowsback";
		}
	
	@GetMapping("/fellow-image/{id}")
	@ResponseBody
	void showImage(@PathVariable("id") int id, HttpServletResponse response, Optional<Fellows> members)
			throws ServletException, IOException {
		members = fellowRepo.findById(id);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		response.getOutputStream().write(members.get().getPicture());
		response.getOutputStream().close();
	}
	
	
	@RequestMapping(value ="/savafellow", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public RedirectView  savemember(@RequestParam("FellowId") int Id, @RequestParam("FellowName") String Name, @RequestParam("Batch") int batch,
			@RequestParam("Bio") String bio, @RequestParam("Pic") MultipartFile pic) throws IllegalStateException, IOException, ParseException {
		Fellows fellow = new Fellows();
		fellow.setFellowId(Id);
		fellow.setfName(Name);
		fellow.setBatch(batch);
		fellow.setBio(bio);
		fellow.setPicture(pic.getBytes());
		fellowRepo.save(fellow);
		RedirectView redirectView= new RedirectView("/fellows",true);
		return redirectView;
		}
	
	@RequestMapping(value="/deletefellow")
	public RedirectView  deletemember(@RequestParam("FellowId") int id){
		fellowRepo.deleteById(id);
		RedirectView redirectView= new RedirectView("/fellows",true);
	    return redirectView;
		}
	
	@RequestMapping("/fellowshipprograms")
	public String fellow(Model model) {
		model.addAttribute("Fellows",fellowRepo.findAll());
		return "fellow";
	}
	
}
