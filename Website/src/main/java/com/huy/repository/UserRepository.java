package com.huy.repository;

import org.springframework.data.repository.CrudRepository;

import com.huy.domain.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
	User findByEmail(String email);
	
}
