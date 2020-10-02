package com.pbs.demo.controller;
import com.pbs.demo.repositories.allRoomsRepo;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pbs.demo.entities.RoomAvailability;
import com.pbs.demo.repositories.addRoomsRepo;
@Controller
public class addroomsController {

	@Autowired
	addRoomsRepo addRoomsRepo;
	
	@Autowired
	allRoomsRepo allRoomsRepo;
	
	@RequestMapping("/addRooms")
	public String addRoomDetails(@RequestParam("roomNo")String roomNo,@RequestParam("checkIn")@DateTimeFormat(pattern="MM-dd-yyyy")Date checkIn,@RequestParam("checkOut")@DateTimeFormat(pattern="MM-dd-yyyy")Date checkOut,@RequestParam("roomType")String roomType,@RequestParam("noOfGuest")int noOfGuest) {
		RoomAvailability R = new RoomAvailability();
		R.setRoomNo(roomNo);
		R.setCheckIn(checkIn);
		R.setCheckOut(checkOut);
		R.setRoomType(roomType);
		R.setNoOfGuest(noOfGuest);
		R.setRoomStatus("Not Booked");
		addRoomsRepo.save(R);
		return "Admin/addInfo";

	}
	
	@RequestMapping("/AllRooms")
	public String AllRooms(ModelMap map) {
		List<RoomAvailability> allRooms = allRoomsRepo.AllRooms();
		map.addAttribute("allRooms", allRooms);
		return "Admin/AllRoomDetails";
	}
	
	
}
