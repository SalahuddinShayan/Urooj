package com.urooj.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.time.Instant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.urooj.entity.Messages;
import com.urooj.repository.MessageRepository;

@Controller
public class MessageController {
	
	@Autowired
	MessageRepository messRepo;
	
	@RequestMapping("/messages")
	public String memberlist(Model model,@RequestParam("admin") String admin) {
		if(admin!=null) {
			model.addAttribute("messages",messRepo.findAll());
		    return "messages";
		}
		return "error";
	}
	

	@RequestMapping(value ="/savemessage", method = RequestMethod.POST)
	public String  savemember(@RequestParam("name") String Name, @RequestParam("email") String email, 
			@RequestParam("Phone") String phone,@RequestParam("subject") String subject, 
			@RequestParam("message") String message) throws IllegalStateException, IOException, ParseException {
		Messages mess = new Messages();
		mess.setmName(Name);
		mess.setEmail(email);
		mess.setPhone(phone);
		mess.setSubject(subject);
		mess.setMessage(message);
		Timestamp instant= Timestamp.from(Instant.now());
		mess.setUtilTimestamp(instant);
		messRepo.save(mess);
		return "messagerecived";
				 
	}

}
