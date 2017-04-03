package com.huy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huy.domain.KhuyenMai;
import com.huy.repository.KhuyenMaiRepository;

@Service
public class KhuyenMaiServiceImpl implements KhuyenMaiService {
	
	@Autowired
    private KhuyenMaiRepository khuyenmaiRepository;

	@Override
	public Iterable<KhuyenMai> findAll() {
		return khuyenmaiRepository.findAll();
	}

	@Override
	public List<KhuyenMai> search(String q) {
		return khuyenmaiRepository.findByNameContaining(q);
	}

	@Override
	public KhuyenMai findOne(int id) {
		return khuyenmaiRepository.findOne(id);
	}

	@Override
	public void save(KhuyenMai khuyenmai) {
		khuyenmaiRepository.save(khuyenmai);
	}

	@Override
	public void delete(int id) {
		khuyenmaiRepository.delete(id);
	}


}