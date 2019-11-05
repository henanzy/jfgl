package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.JfxxService;
import com.hnzy.hot.service.TfxxService;
import com.hnzy.hot.service.XxglService;

import net.sf.json.JSONObject;


@Controller
@RequestMapping("tfxx")
public class TfxxController {
	@Autowired
	public TfxxService tfxxService;
	@Autowired
	private XxglService xxglService;
	@Autowired
	public JfxxService jfxxService;
	
	@RequestMapping("findJfByBm")
	   @ResponseBody
		public JSONObject findJfByBm(String YHBM) throws UnsupportedEncodingException{
			JSONObject json=new JSONObject();
			json.put("map", tfxxService.findJfByBm(YHBM));			
			return json;
		}
	
	@RequestMapping("InsertTfxx")
	   @ResponseBody
		public JSONObject InsertJfxx(HttpSession session,String YHBM,String IDNum,String YRZT,String KHLX,String LXDH,String CNQ,String SSJE,
				String BCTF,String TKFS,String PJHM,String TKRQ,String TKR,String BZ,String TFYY,String cl) throws UnsupportedEncodingException{
			JSONObject json=new JSONObject();
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("YHBM",getUtf8(YHBM));map.put("IDNum",getUtf8(IDNum));
			map.put("YRZT",getUtf8(YRZT));map.put("KHLX",getUtf8(KHLX));
			map.put("LXDH",getUtf8(LXDH));map.put("CNQ",getUtf8(CNQ));
			map.put("SSJE",getUtf8(SSJE));map.put("BCTF",getUtf8(BCTF));
			map.put("TKFS",getUtf8(TKFS));map.put("PJHM",getUtf8(PJHM));
			map.put("TKRQ",getUtf8(TKRQ));map.put("TKR",getUtf8(TKR));
			map.put("BZ",getUtf8(BZ));map.put("TFYY",getUtf8(TFYY));
			map.put("cl",getUtf8(cl));
			
			xxglService.InsertRz((String) session.getAttribute("UserName"), "退费登记 用户编码："+getUtf8(YHBM)+"  金额"+BCTF, new Date());
			if("否".equals(jfxxService.findJfBs(YHBM).get(0).get("JFBS"))){
				json.put("msg", "0");
			}else{
				jfxxService.UpdateJfxx("否", YHBM,null);
				jfxxService.UpdateJfje(YHBM);
				tfxxService.InsertTfxx(map);
				json.put("msg", "1");
			}
			
			return json;
		}
	
	@RequestMapping("findTfxx")
	   @ResponseBody
		public JSONObject findTfxx(String YHBM,String IDNum,String YhName,String CNQ,String XqName,
				String BuildNo,String CellNO,String hh,String startTime,String endTime) throws UnsupportedEncodingException{
			JSONObject json=new JSONObject();
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("YHBM",getUtf8(YHBM));map.put("IDNum",getUtf8(IDNum));
			map.put("YhName",getUtf8(YhName));map.put("CNQ",getUtf8(CNQ));
			map.put("XqName",getUtf8(XqName));
			map.put("BuildNo",getUtf8(BuildNo));map.put("CellNO",getUtf8(CellNO));
			map.put("hh",getUtf8(hh));
			map.put("startTime",getUtf8(startTime));map.put("endTime",getUtf8(endTime));
			
			
			
			json.put("list", tfxxService.findTfxx(map));
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
	
	@RequestMapping("UpdateTfxx")
	@ResponseBody
	public JSONObject rwxx(HttpSession session,String SHJG,String SHR,String id,String YHBM){
		JSONObject json=new JSONObject();
		
		if(session.getAttribute("UserName")!="phrl"){
			json.put("msg", "请使用具有权限的用户进行审核");
			
		}else{
			tfxxService.UpdateTfxx(SHJG, (String) session.getAttribute("UserName"), id);
			if(SHJG.equals("同意")){
				jfxxService.UpdateJfxx("否", YHBM,null);
			}
			xxglService.InsertRz((String) session.getAttribute("UserName"), "退费审核 "+SHJG+"  用户编码："+YHBM, new Date());
			json.put("msg", "审核成功");
		}
		
		return json;
	}
}