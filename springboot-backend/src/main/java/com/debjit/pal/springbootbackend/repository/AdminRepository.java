package com.debjit.pal.springbootbackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.debjit.pal.springbootbackend.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {

}
