package com.hnzy.hot.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.JfxxDao;
import com.hnzy.hot.service.JfxxService;


@Service
public class JfxxServiceImpl implements JfxxService{

	@Autowired
	private JfxxDao jfxxDao;
	@Override
	public List<Map<String, Object>> findYhByBm(String YHBM) {
		// TODO Auto-generated method stub
		return jfxxDao.findYhByBm(YHBM);
	}
	@Override
	public void InsertJfxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		jfxxDao.InsertJfxx(map);
	}
	@Override
	public List<Map<String, Object>> findYhds(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return jfxxDao.findYhds(map);
	}
	@Override
	public List<Map<String, Object>> findJfze() {
		// TODO Auto-generated method stub
		return jfxxDao.findJfze();
	}
	@Override
	public void UpdateJfxx(String JFBS, String YHBM,String JFRQ) {
		// TODO Auto-generated method stub
		jfxxDao.UpdateJfxx(JFBS, YHBM,JFRQ);
	}
	@Override
	public Map<String, Object> findSfx(String sfx) {
		// TODO Auto-generated method stub
		return jfxxDao.findSfx(sfx);
	}
	@Override
	public List<Map<String, Object>> findJfBs(String YHBM) {
		// TODO Auto-generated method stub
		return jfxxDao.findJfBs(YHBM);
	}

	


	
}
