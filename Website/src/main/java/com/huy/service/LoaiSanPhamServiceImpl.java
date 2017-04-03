package com.huy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huy.domain.LoaiSanPham;
import com.huy.repository.LoaiSanPhamRepository;

@Service
public class LoaiSanPhamServiceImpl implements LoaiSanPhamService {
	
	@Autowired
    private LoaiSanPhamRepository loaisanphamRepository;

	@Override
	public Iterable<LoaiSanPham> findAll() {
		return loaisanphamRepository.findAll();
	}

	@Override
	public List<LoaiSanPham> search(String q) {
		return loaisanphamRepository.findByNameContaining(q);
	}

	@Override
	public LoaiSanPham findOne(int id) {
		return loaisanphamRepository.findOne(id);
	}

	@Override
	public void save(LoaiSanPham loaisanpham) {
		loaisanphamRepository.save(loaisanpham);
	}

	@Override
	public void delete(int id) {
		loaisanphamRepository.delete(id);
	}

}