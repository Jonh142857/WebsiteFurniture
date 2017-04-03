package com.huy.service;

import java.util.List;

import com.huy.domain.NhaSanXuat;

public interface NhaSanXuatService {

    Iterable<NhaSanXuat> findAll();

    List<NhaSanXuat> search(String q);

    NhaSanXuat findOne(int id);

    void save(NhaSanXuat nhasanxuat);

    void delete(int id);

}