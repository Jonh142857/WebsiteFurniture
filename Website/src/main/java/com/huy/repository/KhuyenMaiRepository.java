package com.huy.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.huy.domain.KhuyenMai;

public interface KhuyenMaiRepository extends CrudRepository<KhuyenMai, Integer> {

    List<KhuyenMai> findByNameContaining(String q);

}