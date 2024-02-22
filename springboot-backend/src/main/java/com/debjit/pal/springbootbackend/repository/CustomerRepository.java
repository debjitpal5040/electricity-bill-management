package com.debjit.pal.springbootbackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.debjit.pal.springbootbackend.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
