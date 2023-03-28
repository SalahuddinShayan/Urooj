package com.urooj.controller;

import java.io.File;
import java.io.IOException;

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

import com.urooj.entity.Staff;
import com.urooj.repository.StaffRepository;

@Controller
public class StaffController {
	
	@Autowired
	StaffRepository StaffRepo;
	
	@Autowired
    private HttpServletRequest request;
	
	@RequestMapping("/newstaff")
	public String customerlist(Model model) {
		model.addAttribute("staffs",StaffRepo.findAll());
		model.addAttribute("command",new Staff());
	    return "newstaff"; 
	}
	
	
	@RequestMapping(value ="/savestaff", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public String savecustomer(@RequestParam("AuthorId") int Id,@RequestParam("AuthorName") String Name,@RequestParam("Password") String password, @RequestParam("image") MultipartFile image)throws IOException {
		Staff staff =new Staff();
		staff.setAuthorId(Id);
		staff.setAuthorName(Name);
		staff.setPassword(password);
		staff.setStaffpic(image.getOriginalFilename());
		StaffRepo.save(staff);
		String filePath = request.getServletContext().getRealPath("/"); 
		System.out.println(filePath);
		image.transferTo(new File(filePath+image.getOriginalFilename()));
		return "forward:/newstaff";
	}
	
	@RequestMapping(value="/deletestaff/{cuid}",method = RequestMethod.GET)    
    public String delete(@PathVariable int cuid){    
		StaffRepo.deleteById(cuid);    
        return "redirect:/newstaff";    
    }

}
