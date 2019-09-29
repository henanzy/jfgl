package com.hnzy.hot.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface RwxxService {
	public Map<String,String>findrwxx(String XqName,String BuildNo,String CellNo,String HouseNo);
	public void InsertDrwxx(Map<String,String>mapDrw);
	public List<Map<String,String>>findRw(@Param("XqName")String XqName,@Param("BuildNo")String BuildNo,@Param("CellNo")String CellNo,@Param("HouseNo")String HouseNo);
}
