package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.JcService;

import net.sf.json.JSONObject;


@Controller
@RequestMapping("jc")
public class JcController {
	@Autowired
	public JcService jcService;
	
	
	
	   @RequestMapping("InsertJcxx")
	   @ResponseBody
		public JSONObject InsertJcxx(String JCQK,String YRZT,String JCRQ,String JCWT,String YHBM,String JCR,String JCBZ,
				String CLQK,String CLRQ,String CLJG,String CLBZ) throws UnsupportedEncodingException{
			JSONObject json=new JSONObject();
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("JCQK",getUtf8(JCQK));map.put("YRZT",getUtf8(YRZT));
			map.put("JCRQ",getUtf8(JCRQ));map.put("JCWT",getUtf8(JCWT));
			map.put("YHBM",getUtf8(YHBM));map.put("JCR",getUtf8(JCR));
			map.put("JCBZ",getUtf8(JCBZ));map.put("CLQK",getUtf8(CLQK));
			map.put("CLRQ",getUtf8(CLRQ));map.put("CLJG",getUtf8(CLJG));
			map.put("CLBZ",getUtf8(CLBZ));
			
			Map<String, Object> map1 = new HashMap<String, Object>();
			map1.put("YHBM",getUtf8(YHBM));
			map1.put("JCQK",getUtf8(JCQK));
			List<Map<String, Object>> list=jcService.findJcByBm(YHBM);
			
			if(list.size()>0){
				jcService.updateJCQK(getUtf8(JCQK),getUtf8(YHBM));
				jcService.updateJCxx(map);
			}else{
				jcService.InsertJfxx(map);
				jcService.updateJCQK(getUtf8(JCQK),getUtf8(YHBM));
				
			}
			
			json.put("msg", "1");
			return json;
		}
	
	   @RequestMapping("FindJcxx")
	   @ResponseBody
		public JSONObject FindJcxx(String YHBM) throws UnsupportedEncodingException{
			JSONObject json=new JSONObject();
			
			List<Map<String, Object>> list=jcService.findJcByBm(YHBM);
			
			
			json.put("list", list);
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