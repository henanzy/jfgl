package com.hnzy.hot.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface JfxxDao {

 
   
   public List<Map<String, Object>> findYhByBm(String YHBM);
   
   public void InsertJfxx(Map<String, Object> map);
   
   public List<Map<String, Object>> findYhds(Map<String, Object> map);
   
   public List<Map<String, Object>> findJfze();
   
   public void UpdateJfxx(@Param("JFBS")String JFBS,@Param("YHBM")String YHBM,@Param("JFRQ")String JFRQ);
   
   public Map<String, Object> findSfx(String sfx);
}
