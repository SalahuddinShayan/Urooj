package com.wordsmith.Controllers;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.time.Instant;
import java.util.Optional;



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

import com.wordsmith.Entity.Novel;
import com.wordsmith.Repositories.NovelRepository;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class NovelController {
	
	@Autowired
	NovelRepository NovelRepo;
	
	@RequestMapping(value= { "/","/home"})                     
    public String index() {
        return "index";           
    }
	
	@RequestMapping("/novellist")
	public String memberlist(Model model) {
			model.addAttribute("Novels",NovelRepo.findAll());
			model.addAttribute("command",new Novel());
		    return "novellist";
	    
	}
	
	@GetMapping("/novel-image/{id}")
	@ResponseBody
	void showImage(@PathVariable("id") int id, HttpServletResponse response, Optional<Novel> Novel)
			throws ServletException, IOException {
		Novel = NovelRepo.findById(id);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		response.getOutputStream().write(Novel.get().getNovelImage());
		response.getOutputStream().flush();
	}
	
	@RequestMapping(value ="/savenovel", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public RedirectView  savenovel(@RequestParam("NovelId") int Id, @RequestParam("NovelName") String Name, 
			@RequestParam("OriginalLanguage") String originalLanguage, @RequestParam("Genre") String genre, 
			@RequestParam("Author") String Author, @RequestParam("Description") String description, 
			@RequestParam("Keywords") String keywords, @RequestParam("Pic") MultipartFile pic)
					throws IllegalStateException, IOException, ParseException {
		Novel novel = new Novel();
		novel.setNovelId(Id);
		novel.setNovelName(Name);
		novel.setAuthor(Author);
		novel.setOriginalLanguage(originalLanguage);
		novel.setGenre(genre);
		novel.setDescription(description);
		novel.setNovelImage(pic.getBytes());
		novel.setKeywords(keywords);
		Timestamp instant= Timestamp.from(Instant.now());
		novel.setAddedOn(instant);
		NovelRepo.save(novel);
		RedirectView redirectView= new RedirectView("/novellist",true);
	    return redirectView;
		}
	
	@RequestMapping(value="/deletenovel")
	public RedirectView  deletemember(@RequestParam("NovelId") int id){
		NovelRepo.deleteById(id);
		RedirectView redirectView= new RedirectView("/novellist",true);
	    return redirectView;
		}
	
	@RequestMapping("/novel/{novelName}")
	public String Novel(@PathVariable String novelName, Model m) {
		Novel novel = NovelRepo.byNovelName(novelName);
		m.addAttribute("novel",novel);
		return "noveltemplate";
	}

}