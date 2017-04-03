package com.huy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huy.domain.NhaSanXuat;
import com.huy.repository.NhaSanXuatRepository;

@Service
public class NhaSanXuatServiceImpl implements NhaSanXuatService {
	
	@Autowired
    private NhaSanXuatRepository nhasanxuatRepository;

	@Override
	public Iterable<NhaSanXuat> findAll() {
		return nhasanxuatRepository.findAll();
	}

	@Override
	public List<NhaSanXuat> search(String q) {
		return nhasanxuatRepository.findByNameContaining(q);
	}

	@Override
	public NhaSanXuat findOne(int id) {
		return nhasanxuatRepository.findOne(id);
	}

	@Override
	public void save(NhaSanXuat nhasanxuat) {
		nhasanxuatRepository.save(nhasanxuat);
	}

	@Override
	public void delete(int id) {
		nhasanxuatRepository.delete(id);
	}

	

}