package com.huy.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.huy.domain.NhaSanXuat;

public interface NhaSanXuatRepository extends CrudRepository<NhaSanXuat, Integer> {

    List<NhaSanXuat> findByNameContaining(String q);

}