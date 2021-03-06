package com.csis3275.controller_cwu_18;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.csis3275.dao_cwu_18.DAOImpl_cwu_18;
import com.csis3275.model_cwu_18.Comment_cwu_18;

@Controller
public class ContactUsController_cwu_18 {

	@Autowired
	DAOImpl_cwu_18 daoImpl;
	
	

	// Add Contact Us Feature
	@ModelAttribute("contact")
	public Comment_cwu_18 setUpAddForm() {
		return new Comment_cwu_18();
	}

	//user side to send the comments
	@GetMapping("/contactus")
	public String writeComments(@RequestParam(required = true) int id, Model model) {
		model.addAttribute("userId", id);
		return "ContactUs_cwu_18";
	}
	
	@PostMapping("/comment")
	public String getComments(@RequestParam(required = true) int id, @RequestParam(required=false,name="content") String content, Model model) {
		//daoImpl.createComment(comment);
		model.addAttribute("userId", id);
		int comment_id = IdGenerator_cwu_18.getRandomBookingID();
		Comment_cwu_18 newComment = new Comment_cwu_18(comment_id, content, id);
		if(newComment != null) {
			daoImpl.createComment(newComment);
		}
		
		return "ContactUs_cwu_18";
	}

	// admin side to view the comments from users
	@GetMapping("/viewcomments")
	public String viewComments(@RequestParam(required = true) int id, Model model) {
		model.addAttribute("userId", id);
		List<Comment_cwu_18> comments =	daoImpl.getAllComments();
		model.addAttribute("comments", comments);

		return "ViewComments_cwu_18";
	}

	@ModelAttribute("countries")
	public List<String> setUpCountryList() {
		List<String> countries = new ArrayList<String>();
		countries.add("Canada");
		countries.add("USA");
		countries.add("Brazil");
		countries.add("India");

		return countries;
	}

}
