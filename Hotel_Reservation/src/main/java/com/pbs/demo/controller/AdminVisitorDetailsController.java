package com.pbs.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.pbs.demo.repositories.reservationRepo;
import com.pbs.demo.entities.RoomAvailability;

@Controller
public class AdminVisitorDetailsController {
	
	@Autowired
	reservationRepo reservationRepo	;

	@RequestMapping("/visitorDetails")
	private String visitorDetails(@RequestParam("roomId")Long roomId,ModelMap map) {
		Optional<RoomAvailability> byId = reservationRepo.findById(roomId);
		map.addAttribute("find", byId);
	return "Admin/VisitorDetails";
	
	}
}
