package com.huy.service;

import java.util.List;

import com.huy.domain.LoaiSanPham;

public interface LoaiSanPhamService {

    Iterable<LoaiSanPham> findAll();

    List<LoaiSanPham> search(String q);

    LoaiSanPham findOne(int id);

    void save(LoaiSanPham loaisanpham);

    void delete(int id);

}