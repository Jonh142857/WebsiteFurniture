package com.huy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huy.domain.HinhThucThanhToan;
import com.huy.repository.HinhThucThanhToanRepository;

@Service
public class HinhThucThanhToanServiceImpl implements HinhThucThanhToanService {
	
	@Autowired
    private HinhThucThanhToanRepository hinhthucthanhtoanRepository;

	@Override
	public Iterable<HinhThucThanhToan> findAll() {
		return hinhthucthanhtoanRepository.findAll();
	}

	@Override
	public List<HinhThucThanhToan> search(String q) {
		return hinhthucthanhtoanRepository.findByNameContaining(q);
	}

	@Override
	public HinhThucThanhToan findOne(int id) {
		return hinhthucthanhtoanRepository.findOne(id);
	}

	@Override
	public void save(HinhThucThanhToan hinhthucthanhtoan) {
		hinhthucthanhtoanRepository.save(hinhthucthanhtoan);
	}

	@Override
	public void delete(int id) {
		hinhthucthanhtoanRepository.delete(id);
	}

}