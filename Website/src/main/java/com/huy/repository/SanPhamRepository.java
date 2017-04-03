package com.huy.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.huy.domain.SanPham;

public interface SanPhamRepository extends CrudRepository<SanPham, Integer> {

    List<SanPham> findByNameContaining(String q);

}