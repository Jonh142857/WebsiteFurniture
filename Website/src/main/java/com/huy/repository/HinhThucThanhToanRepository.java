package com.huy.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.huy.domain.HinhThucThanhToan;

public interface HinhThucThanhToanRepository extends CrudRepository<HinhThucThanhToan, Integer> {

    List<HinhThucThanhToan> findByNameContaining(String q);

}