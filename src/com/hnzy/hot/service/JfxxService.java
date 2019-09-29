package com.hnzy.hot.service;

import java.util.List;
import java.util.Map;

public interface JfxxService {
	public List<Map<String, Object>> findYhByBm(String YHBM);
	public void InsertJfxx(Map<String, Object> map);
	public List<Map<String, Object>> findYhds(Map<String, Object> map);
	public List<Map<String, Object>> findJfze();
}
