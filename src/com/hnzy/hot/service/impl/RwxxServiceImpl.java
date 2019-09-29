package com.hnzy.hot.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.RwxxDao;
import com.hnzy.hot.service.RwxxService;

@Service
public class RwxxServiceImpl implements RwxxService {

	@Autowired
	private RwxxDao rwxxdao;

	@Override
	public Map<String, String> findrwxx(String XqName, String BuildNo, String CellNo, String HouseNo) {
		// TODO Auto-generated method stub
		return rwxxdao.findrwxx(XqName, BuildNo, CellNo, HouseNo);
	}

	@Override
	public void InsertDrwxx(Map<String, String> mapDrw) {
		// TODO Auto-generated method stub
		rwxxdao.InsertDrwxx(mapDrw);
	}

	@Override
	public List<Map<String, String>> findRw(String XqName, String BuildNo, String CellNo, String HouseNo) {
		// TODO Auto-generated method stub
		return rwxxdao.findRw(XqName, BuildNo, CellNo, HouseNo);
	}
	
}
