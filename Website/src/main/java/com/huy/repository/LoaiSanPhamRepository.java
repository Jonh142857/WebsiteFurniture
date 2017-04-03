package com.huy.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.huy.domain.LoaiSanPham;

public interface LoaiSanPhamRepository extends CrudRepository<LoaiSanPham, Integer> {

    List<LoaiSanPham> findByNameContaining(String q);

}