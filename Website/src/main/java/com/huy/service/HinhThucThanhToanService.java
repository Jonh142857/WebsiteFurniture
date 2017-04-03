package com.huy.service;

import java.util.List;

import com.huy.domain.HinhThucThanhToan;

public interface HinhThucThanhToanService {

    Iterable<HinhThucThanhToan> findAll();

    List<HinhThucThanhToan> search(String q);

    HinhThucThanhToan findOne(int id);

    void save(HinhThucThanhToan hinhthucthanhtoan);

    void delete(int id);

}