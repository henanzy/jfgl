package com.hnzy.hot.service;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

public interface JfxxService {
	public List<Map<String, Object>> findYhByBm(String YHBM);
	public void InsertJfxx(Map<String, Object> map);
	public List<Map<String, Object>> findYhds(Map<String, Object> map);
	public List<Map<String, Object>> findJfze(Map<String, Object> map);
	public void UpdateJfxx(@Param("JFBS")String JFBS,@Param("YHBM")String YHBM,@Param("JFRQ")String JFRQ);
	public Map<String, Object> findSfx(String sfx);
	public List<Map<String, Object>> findJfBs(String YHBM);
	public void importExcelInfo(String  UserName,InputStream in, MultipartFile file,Integer adminId) throws Exception;
}
