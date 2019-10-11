package com.hnzy.hot.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface TfxxDao {

   public void InsertTfxx(Map<String, Object> map);
   
   public List<Map<String, Object>> findTfxx(Map<String, Object> map);
   
   public List<Map<String, Object>> findJfByBm(String YHBM);
   
   public void UpdateTfxx(@Param("SHJG")String SHJG,@Param("SHR")String SHR,@Param("id")String id);
}
