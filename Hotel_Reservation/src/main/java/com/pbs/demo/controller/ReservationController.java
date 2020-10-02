package com.pbs.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pbs.demo.entities.RoomAvailability;
import com.pbs.demo.repositories.SearchRoomRepo;
import com.pbs.demo.repositories.addRoomsRepo;
import com.pbs.demo.repositories.reservationRepo;

@Controller
public class ReservationController {

	@Autowired
	SearchRoomRepo SearchRoomRepo;

	@Autowired
	addRoomsRepo addRoomsRepo;
	
	@Autowired
	reservationRepo reservationRepo;
	
	
	@RequestMapping("/showReservation")
	private String showReservation(@RequestParam("roomid")Long id,ModelMap map) {
	Optional<RoomAvailability> findById = SearchRoomRepo.findById(id);
		RoomAvailability roomAvailability = findById.get();
		map.addAttribute("roomAvailability", roomAvailability);
		return "User/BookingInfo";
    }
	
	@RequestMapping("/completeBooking")
	private String completeBooking(@RequestParam("roomId")Long id,@RequestParam("roomno")int roomno,@RequestParam("firstname")String firstname,@RequestParam("lastname")String lastname,@RequestParam("email")String email,@RequestParam("phone")String phone) {
		Optional<RoomAvailability> findById = addRoomsRepo.findById(id);
		RoomAvailability roomAvailability = findById.get();
		roomAvailability.setRoomStatus("Booked");
		roomAvailability.setFirstname(firstname);
		roomAvailability.setLastname(lastname);
		roomAvailability.setEmail(email);
		roomAvailability.setPhone(phone);
		addRoomsRepo.save(roomAvailability);
		
		return "User/FinalConfirmation";
		
	}
}