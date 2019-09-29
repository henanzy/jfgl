package com.hnzy.hot.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.JcDao;
import com.hnzy.hot.service.JcService;


@Service
public class JcServiceImpl implements JcService{

	@Autowired
	private JcDao jcDao;

	@Override
	public void InsertJfxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		jcDao.InsertJfxx(map);
	}

	

	@Override
	public List<Map<String, Object>> findJcByBm(String YHBM) {
		// TODO Auto-generated method stub
		return jcDao.findJcByBm(YHBM);
	}

	@Override
	public void updateJCxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		jcDao.updateJCxx(map);
	}

	@Override
	public void updateJCQK(String JCQK, String YHBM) {
		// TODO Auto-generated method stub
		jcDao.updateJCQK(JCQK, YHBM);
	}
	

	


	
}
