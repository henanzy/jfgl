package com.hnzy.hot.service;

import java.util.List;
import java.util.Map;

public interface TfxxService {
	public void InsertTfxx(Map<String, Object> map);
	   
	public List<Map<String, Object>> findTfxx(Map<String, Object> map);
	
	public List<Map<String, Object>> findJfByBm(String YHBM);
}