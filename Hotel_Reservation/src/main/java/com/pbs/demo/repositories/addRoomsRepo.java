package com.pbs.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pbs.demo.entities.RoomAvailability;

public interface addRoomsRepo extends JpaRepository<RoomAvailability, Long> {

}
