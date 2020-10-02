package com.pbs.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.pbs.demo.entities.RoomAvailability;

public interface allRoomsRepo extends JpaRepository<RoomAvailability, Long> {

	@Query("from RoomAvailability")

	List<RoomAvailability> AllRooms();
}
