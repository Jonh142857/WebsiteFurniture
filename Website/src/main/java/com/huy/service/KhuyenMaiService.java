package com.huy.service;

import java.util.List;

import com.huy.domain.KhuyenMai;

public interface KhuyenMaiService {

    Iterable<KhuyenMai> findAll();

    List<KhuyenMai> search(String q);

    KhuyenMai findOne(int id);

    void save(KhuyenMai khuyenmai);

    void delete(int id);

}