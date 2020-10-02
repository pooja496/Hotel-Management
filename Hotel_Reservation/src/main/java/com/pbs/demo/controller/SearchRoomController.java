package com.pbs.demo.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pbs.demo.entities.RoomAvailability;
import 	com.pbs.demo.repositories.SearchRoomRepo;


@Controller
public class SearchRoomController {
	
	@Autowired
	SearchRoomRepo SearchRoomRepo;

	@RequestMapping("/searchRoom")
	public String searchRoom(@RequestParam("checkIn")@DateTimeFormat(pattern="MM-dd-yyyy") Date checkIn,@RequestParam("checkOut")@DateTimeFormat(pattern="MM-dd-yyyy") Date checkOut,@RequestParam("roomStatus")String roomStatus,ModelMap map) {
		List<RoomAvailability> rooms = SearchRoomRepo.findRooms(checkIn, checkOut, roomStatus);
		map.addAttribute("rooms", rooms);
		
		return "User/RoomDetails";
		
	}
}
