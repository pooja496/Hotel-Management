package com.pbs.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.pbs.demo.repositories.userRepository;
import com.pbs.demo.entities.UserInfo;

@Controller
public class userController {

	@Autowired
	userRepository userRepo;
	
	@RequestMapping("/FrontPage")
	public String FrontPage() {
		return "index";
	}
		
	@RequestMapping("/showuser")
	public String showReg() {
		return "User/signup";
	}
	
	@RequestMapping(value = "/saveUser" ,method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user")UserInfo user) {
		userRepo.save(user);
		return "User/userLogin";
	}
	
	@RequestMapping("/userLogin")
	public String showLogin() {
		return "User/userLogin";
		
	}
	
	@RequestMapping("/saveLogin")
	public String login(@RequestParam("email")String email,@RequestParam("password")String password,ModelMap map){
		UserInfo user = userRepo.findByEmail(email);
		try {
		if(user.getPassword().equals(password)) {
			return "User/searchRoom";
		}else {
			map.addAttribute("msg","Invalid username/password");
			return "User/userLogin";
		}}
		catch(Exception e) {
			map.addAttribute("msg","Invalid username/password");
			return "User/userLogin";
		}
		
		
	}
}
