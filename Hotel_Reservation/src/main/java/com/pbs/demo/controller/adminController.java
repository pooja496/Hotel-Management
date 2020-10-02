package com.pbs.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pbs.demo.entities.AdminInfo;
import com.pbs.demo.repositories.adminRepository;
@Controller
public class adminController {

	@Autowired
	adminRepository adminRepo;
	
	@RequestMapping("/Admin")
	public String showLogin() {
		return "Admin/adminLogin";
		
	}
	
	@RequestMapping("/saveAdminLogin")
	public String login(@RequestParam("email")String email,@RequestParam("password")String password,ModelMap map){
		AdminInfo admin = adminRepo.findByEmail(email);
		try {
		if(admin.getPassword().equals(password)) {
			return "Admin/addInfo";
		}else {
			map.addAttribute("msg","Invalid username/password");
			return "Admin/adminLogin";
		}}
		catch(Exception e) {
			map.addAttribute("msg","Invalid username/password");
			return "Admin/adminLogin";
		}
		
		
	}
}
