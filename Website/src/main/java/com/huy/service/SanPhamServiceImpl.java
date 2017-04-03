package com.huy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huy.domain.SanPham;
import com.huy.repository.SanPhamRepository;

@Service
public class SanPhamServiceImpl implements SanPhamService {
	
	@Autowired
    private SanPhamRepository sanphamRepository;

	@Override
	public Iterable<SanPham> findAll() {
		// TODO Auto-generated method stub
		return sanphamRepository.findAll();
	}

	@Override
	public List<SanPham> search(String q) {
		// TODO Auto-generated method stub
		return sanphamRepository.findByNameContaining(q);
	}

	@Override
	public SanPham findOne(int id) {
		// TODO Auto-generated method stub
		return sanphamRepository.findOne(id);
	}

	@Override
	public void save(SanPham sanpham) {
		// TODO Auto-generated method stub
		sanphamRepository.save(sanpham);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		sanphamRepository.delete(id);
	}

}