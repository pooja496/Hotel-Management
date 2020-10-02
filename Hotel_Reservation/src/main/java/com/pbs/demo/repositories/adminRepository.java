package com.pbs.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pbs.demo.entities.AdminInfo;

public interface adminRepository extends JpaRepository<AdminInfo, Long> {

	AdminInfo findByEmail(String email);

}
