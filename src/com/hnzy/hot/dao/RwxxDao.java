package com.hnzy.hot.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface RwxxDao {
	public Map<String,String>findrwxx(@Param("XqName")String XqName,@Param("BuildNo")String BuildNo,@Param("CellNo")String CellNo,@Param("HouseNo")String HouseNo);
	public void InsertDrwxx(Map<String,String>mapDrw);
	public List<Map<String,String>>findRw(@Param("XqName")String XqName,@Param("BuildNo")String BuildNo,@Param("CellNo")String CellNo,@Param("HouseNo")String HouseNo);
}
