package com.huy.repository;

import org.springframework.data.repository.CrudRepository;

import com.huy.domain.Role;

public interface RoleRepository extends CrudRepository<Role, Integer> {

	Role findByName(String name);
	
}
