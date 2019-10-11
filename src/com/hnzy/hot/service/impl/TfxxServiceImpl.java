package com.hnzy.hot.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.TfxxDao;
import com.hnzy.hot.service.TfxxService;


@Service
public class TfxxServiceImpl implements TfxxService{

	@Autowired
	private TfxxDao tfxxDao;

	@Override
	public void InsertTfxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		tfxxDao.InsertTfxx(map);
	}

	@Override
	public List<Map<String, Object>> findTfxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return tfxxDao.findTfxx(map);
	}

	@Override
	public List<Map<String, Object>> findJfByBm(String YHBM) {
		// TODO Auto-generated method stub
		return tfxxDao.findJfByBm(YHBM);
	}

	@Override
	public void UpdateTfxx(String SHJG, String SHR, String id) {
		// TODO Auto-generated method stub
		tfxxDao.UpdateTfxx(SHJG, SHR, id);
	}
	

	


	
}
