package com.pbs.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pbs.demo.entities.UserInfo;

public interface userRepository extends JpaRepository<UserInfo, Long> {

	UserInfo findByEmail(String email);

}
