package com.hnzy.hot.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface JcService {
	public void InsertJfxx(Map<String, Object> map);
	
	public void updateJCQK(@Param("JCQK")String JCQK,@Param("YHBM")String YHBM);
	
	public List<Map<String, Object>> findJcByBm(String YHBM);
	
	public void updateJCxx(Map<String, Object> map);
}
