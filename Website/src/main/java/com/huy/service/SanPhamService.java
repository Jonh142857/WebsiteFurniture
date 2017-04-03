package com.huy.service;

import java.util.List;

import com.huy.domain.SanPham;

public interface SanPhamService {

    Iterable<SanPham> findAll();

    List<SanPham> search(String q);

    SanPham findOne(int id);

    void save(SanPham sanpham);

    void delete(int id);

}