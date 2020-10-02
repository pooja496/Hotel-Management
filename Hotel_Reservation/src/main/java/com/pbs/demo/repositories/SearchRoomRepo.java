package com.pbs.demo.repositories;

import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.pbs.demo.entities.RoomAvailability;


public interface SearchRoomRepo extends JpaRepository<RoomAvailability, Long> {

	@Query("from RoomAvailability where checkIn=:checkIn and checkOut=:checkOut and roomStatus=:roomStatus")

	List<RoomAvailability> findRooms(Date checkIn, Date checkOut, String roomStatus);


}
