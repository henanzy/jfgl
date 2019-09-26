package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.JfxxService;

import net.sf.json.JSONObject;


@Controller
@RequestMapping("jfxx")
public class JfxxController {
	@Autowired
	public JfxxService jfxxService;
	
	@RequestMapping("findYhByBm")
	   @ResponseBody
		public JSONObject findYhByBm(String YHBM) throws UnsupportedEncodingException{
			JSONObject json=new JSONObject();
			json.put("map", jfxxService.findYhByBm(YHBM));			
			return json;
		}
	
	@RequestMapping("InsertJfxx")
	   @ResponseBody
		public JSONObject InsertJfxx(String YHBM,String IDNum,String JFSJ,String CNQ,String JIFFS,String JFTJ,String RWBM,
				String JFJE,String YSJE,String SYJE,String SKZH,String PJHM,String LSDH,String LXDH,String SFFS) throws UnsupportedEncodingException{
			JSONObject json=new JSONObject();
			Map<String, Object> map = new HashMap<String, Object>();
			Date date = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss") ; 
			String jfsj = dateFormat.format(date);
			map.put("YHBM",getUtf8(YHBM));map.put("IDNum",getUtf8(IDNum));
			map.put("JFSJ",getUtf8(JFSJ));map.put("CNQ",getUtf8(CNQ));
			map.put("JIFFS",getUtf8(JIFFS));map.put("JFTJ",getUtf8(JFTJ));
			map.put("RWBM",getUtf8(RWBM));map.put("JFJE",getUtf8(JFJE));
			map.put("YSJE",getUtf8(YSJE));map.put("SYJE",getUtf8(SYJE));
			map.put("SKZH",getUtf8(SKZH));map.put("PJHM",getUtf8(PJHM));
			map.put("LSDH",getUtf8(jfsj));map.put("LXDH",getUtf8(LXDH));
			map.put("SFFS",getUtf8(SFFS));
			jfxxService.InsertJfxx(map);
			json.put("msg", "1");
			return json;
		}
	
	@RequestMapping("findJfxx")
	   @ResponseBody
		public JSONObject findJfxx(String YHBM,String IDNum,String YhName,String CNQ,String JFTJ,String XqName,
				String BuildNo,String CellNO,String hh,String SFFS,String startTime,String endTime) throws UnsupportedEncodingException{
			JSONObject json=new JSONObject();
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("YHBM",getUtf8(YHBM));map.put("IDNum",getUtf8(IDNum));
			map.put("YhName",getUtf8(YhName));map.put("CNQ",getUtf8(CNQ));
			map.put("JFTJ",getUtf8(JFTJ));map.put("XqName",getUtf8(XqName));
			map.put("BuildNo",getUtf8(BuildNo));map.put("CellNO",getUtf8(CellNO));
			map.put("hh",getUtf8(hh));map.put("SFFS",getUtf8(SFFS));
			map.put("startTime",getUtf8(startTime));map.put("endTime",getUtf8(endTime));
			
			
			
			json.put("list", jfxxService.findYhds(map));
			return json;
		}
	   
	
	private String getUtf8(String str){
		if(str!=null){
			try {
				str=new String(str.getBytes("ISO-8859-1"),"utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return str;
	}
}