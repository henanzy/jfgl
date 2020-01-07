package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.YhInfoService;

import net.sf.json.JSONObject;


@Controller
@RequestMapping("yhInfo")
public class YhInfoController {
	@Autowired
	private YhInfoService yhInfoService;

	@RequestMapping("findXq")
	@ResponseBody
	public JSONObject findXq(){
		JSONObject json=new JSONObject();
		
		json.put("Xq", yhInfoService.findXq());
		return json;
	}
	
	@RequestMapping("/yezxx")
    public String yezxx(HttpSession session){
		
    	return "yezxx";
    }
	//查询楼栋
	@RequestMapping("findLd")
	@ResponseBody
	public JSONObject findLd(String xqm) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		
		map.put("xqm", xqm);
		json.put("Ld", yhInfoService.findLd(map));
		return json;
	}

	
	
	@RequestMapping("findDy")
	@ResponseBody
	public JSONObject findDy(String xqm,String ldh) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		//xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		Map<String, Object> map = new HashMap<String, Object>();
		xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		map.put("xqm", xqm);
		map.put("ldh", getUtf8(ldh));
		
		json.put("Dy", yhInfoService.findDy(map));
		return json;
	}
	
	@RequestMapping("findHh")
	@ResponseBody
	public JSONObject findHh(String xqm,String ldh,String dyh) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		//xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		Map<String, Object> map = new HashMap<String, Object>();
		xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		map.put("xqm", xqm);
		map.put("ldh", getUtf8(ldh));
		map.put("dyh", getUtf8(dyh));
		json.put("Hh", yhInfoService.findHh(map));
		return json;
	}
	
	@RequestMapping("/xiaoqxx")
    public String xiaoqxx(){
    	return "ZhiNeng/yonghu/xiaoqxx";
    }
	
	
	@RequestMapping("find")
	@ResponseBody
	public JSONObject find(){
		JSONObject json=new JSONObject();
		
		json.put("list", yhInfoService.find());
		return json;
	}
	
	@RequestMapping("InsertXq")
	
	public String InsertXq(String XqName,String LxrName,String LxrPhone,
			String NHPrice,String AreaPrice1,String AreaPrice2,String HESName,String Jd,String Wd,String Place){
		
	Map<String, Object> map =new  HashMap<String, Object>();
	map.put("LxrName", LxrName);
	map.put("LxrPhone", LxrPhone);
	if(XqName!=null){
		map.put("XqName", XqName);
	}
	
	
	map.put("NHPrice", NHPrice);
	map.put("AreaPrice1", AreaPrice1);
	map.put("AreaPrice2", AreaPrice2);
	map.put("HESName", HESName);
	map.put("Jd", Jd);
	map.put("Wd", Wd);
	map.put("Place", Place);
	yhInfoService.InsertXq(map);
		return "redirect:xiaoqxx.action";
		
	}
	
@RequestMapping("UpdateXq")
	
	public String UpdateXq(String XqName,String LxrName,String LxrPhone,
			String NHPrice,String AreaPrice1,String AreaPrice2,String HESName,String Jd,String Wd,String Place,String id){
		
	Map<String, Object> map =new  HashMap<String, Object>();
	map.put("LxrName", LxrName);
	map.put("LxrPhone", LxrPhone);
	if(XqName!=null){
		map.put("XqName", XqName);
	}
	
	
	map.put("NHPrice", NHPrice);
	map.put("AreaPrice1", AreaPrice1);
	map.put("AreaPrice2", AreaPrice2);
	map.put("HESName", HESName);
	map.put("Jd", Jd);
	map.put("Wd", Wd);
	map.put("Place", Place);
	map.put("id", id);
	
	yhInfoService.UpdateXq(map);
		return "redirect:xiaoqxx.action";
		
	}

   @RequestMapping("DeleteXq")
   @ResponseBody
   public JSONObject DeleteXq(String id){
	JSONObject json=new JSONObject();
	
	yhInfoService.DeleteXq(id);
	return json;
   }
   
   @RequestMapping("findYh")
	@ResponseBody
	public JSONObject findYh(String xqm,String ldh,String dyh,String hh,String yhfl,String FamKd1,String FamKd2,String RoomTemp1,
			String RoomTemp2,String ValTemp1,String ValTemp2,String YHBM) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		if(xqm!=null){
			xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		}
		if(yhfl!=null){
			yhfl=new String(yhfl.getBytes("ISO-8859-1"),"utf-8");
		}
		
		
		map.put("xqm", xqm);
		map.put("ldh", getUtf8(ldh));
		map.put("dyh", getUtf8(dyh));
		map.put("hh", getUtf8(hh));
		map.put("YHBM", YHBM);
		map.put("yhfl", yhfl);
		map.put("FamKd1", FamKd1);
		map.put("FamKd2", FamKd2);
		map.put("RoomTemp1", RoomTemp1);
		map.put("RoomTemp2", RoomTemp2);
		map.put("ValTemp1", ValTemp1);
		map.put("ValTemp2", ValTemp2);
		
		
		json.put("list", yhInfoService.findYh(map));
		return json;
	}
   
   
   @RequestMapping("InsertYh")
	
	public String InsertYh(String YhName,String XqName,String BuildNO,
			String CellNO,String HouseNO,String Bz,String YHBM,String LXDH,String HeatArea){
		
	Map<String, Object> map =new  HashMap<String, Object>();
	map.put("YhName", YhName);
	map.put("XqName", XqName);
	
	map.put("BuildNO", BuildNO);
	map.put("YHBM", YHBM);
	
	
	map.put("CellNO", CellNO);
	map.put("HouseNO", HouseNO);
	map.put("LXDH", LXDH);
	map.put("Bz", Bz);
	
	map.put("HeatArea", HeatArea);
	
	yhInfoService.InsertYh(map);
	
		return "redirect:yezxx.action";
		
	}
   
   
   @RequestMapping("UpdateYh")
	
	public String UpdateYh(String YhName,String XqName,String BuildNO,
			String CellNO,String HouseNO,String Bz,String YHBM,String LXDH,String HeatArea,String id){
		
	Map<String, Object> map =new  HashMap<String, Object>();
	map.put("YhName", YhName);
	map.put("XqName", XqName);
	
	map.put("BuildNO", BuildNO);
	map.put("YHBM", YHBM);
	
	
	map.put("CellNO", CellNO);
	map.put("HouseNO", HouseNO);
	map.put("LXDH", LXDH);
	map.put("Bz", Bz);
	map.put("id", id);
	map.put("HeatArea", HeatArea);
	yhInfoService.UpdateYh(map);
	
	return "redirect:yezxx.action";
		
	}
   
   
   @RequestMapping("findFm")
	@ResponseBody
	public JSONObject findFm(String ValAd) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		
			json.put("flag", yhInfoService.findFm(ValAd));
		
		
		return json;
	}
   
   @RequestMapping("DeleteYh")
   @ResponseBody
   public JSONObject DeleteYh(String id){
	JSONObject json=new JSONObject();
	
	yhInfoService.DeleteYh(id);
	
	return json;
   }
   
   @RequestMapping("findFmLs")
   @ResponseBody
	public JSONObject findFmLs(String xqm,String ldh,String dyh,String hh) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		if(xqm!=null){
			xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		}
		
		
		map.put("xqm", xqm);
		map.put("ldh", ldh);
		map.put("dyh", dyh);
		map.put("hh", hh);
		json.put("fmls", yhInfoService.findFmLs(map));
		
		json.put("gdls", yhInfoService.gdjl(map));
		return json;
	}
   
   
   @RequestMapping("findFmkdLs")
   @ResponseBody
	public JSONObject findFmkdLs(String xqm,String ldh,String dyh,String hh,String startTime,String endTime) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		if(xqm!=null){
			xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		}
		
		
		map.put("xqm", xqm);
		map.put("ldh", ldh);
		map.put("dyh", dyh);
		map.put("hh", hh);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		
		json.put("list", yhInfoService.findFmkdLs(map));
		
		
		return json;
	}
   
   
   @RequestMapping("findXqKdLs")
   @ResponseBody
	public JSONObject findKdLs(String xqm,String startTime,String endTime) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		if(xqm!=null){
			xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		}
		
		
		map.put("xqm", xqm);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		
		json.put("list", yhInfoService.findKdLs(map));
		
		
		return json;
	}
   
   @RequestMapping("findAllKdLs")
   @ResponseBody
	public JSONObject findAllKdLs(String startTime,String endTime) throws UnsupportedEncodingException{
	   JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
	List<Map<String, Object>> list = yhInfoService.findXq();
	List<List<Map<String, Object>>> xqkdList=new ArrayList<List<Map<String, Object>>>();
	for (int i = 0; i < list.size(); i++) {
		map.clear();
		map.put("xqm", list.get(i).get("XqName"));
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		Map<Object, Object> xqavg = new HashMap<>();
		
		xqkdList.add(yhInfoService.findKdLs(map));
	}
		json.put("xqkdList", xqkdList);
		
		
		return json;
	}
   
   @RequestMapping("findHisAvg")
   @ResponseBody
	public JSONObject findHisAvg(String xqm,String startTime,String endTime) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		if(xqm!=null){
			xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		}
		
		
		map.put("xqm", xqm);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		
		json.put("list", yhInfoService.findHisAvg(map));
		
		
		return json;
	}
   @RequestMapping("findAllAvg")
   @ResponseBody
	public JSONObject findAllAvg(String startTime,String endTime) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
	List<Map<String, Object>> list = yhInfoService.findXq();
	List<List<Map<String, Object>>> xqavgList=new ArrayList<List<Map<String, Object>>>();
	for (int i = 0; i < list.size(); i++) {
		map.clear();
		map.put("xqm", list.get(i).get("XqName"));
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		Map<Object, Object> xqavg = new HashMap<>();
		
		xqavgList.add(yhInfoService.findHisAvg(map));
	}
		json.put("xqavgList", xqavgList);
		
		
		return json;
	}
   
   @RequestMapping("findTc")
	@ResponseBody
	public JSONObject findTc(String xqm,String ldh,String dyh,String hh) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		if(xqm!=null){
			xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		}
		map.put("xqm", xqm);
		map.put("ldh", getUtf8(ldh));
		map.put("dyh", getUtf8(dyh));
		hh=getUtf8(hh);
		if(hh!=null){
			if(hh.length()==3){
				hh=hh.substring(0, 1);
			}else{
				hh=hh.substring(0, 2);
			}
		}		
		map.put("hh", hh);

		json.put("list", yhInfoService.findTc(map));
		return json;
	}
   
    @RequestMapping("szt")
	@ResponseBody
	public JSONObject szt(){
		JSONObject json=new JSONObject();
		
		json.put("list", yhInfoService.szt(null));
		return json;
	}
   
   
   @RequestMapping("getDz")
   @ResponseBody
	public JSONObject getDz(String ValAd) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		json.put("map", yhInfoService.geidz(ValAd));
		
		
		return json;
	}
   
   @RequestMapping("findAll")
	@ResponseBody
	public JSONObject findAll(String xqm,String ldh,String dyh,String hh,String startTime,String endTime) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		if(xqm!=null){
			xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		}
		map.put("xqm", xqm);
		map.put("ldh", ldh);
		map.put("dyh", dyh);		
		map.put("hh", hh);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		json.put("list", yhInfoService.findAll(map));
		return json;
	}
   
   @RequestMapping("findQf")
	@ResponseBody
	public JSONObject findQf(String xqm,String ldh,String dyh,String hh,String JFBS) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		if(xqm!=null){
			xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		}
		map.put("xqm", xqm);
		map.put("ldh", getUtf8(ldh));
		map.put("dyh", getUtf8(dyh));		
		map.put("hh", getUtf8(hh));
		map.put("JFBS",getUtf8( JFBS));
	
		json.put("list", yhInfoService.findQf(map));
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
   
   @RequestMapping("UpdateYhByBm")
	@ResponseBody
	public JSONObject findLd(String YhName,String Telephone,String YHBM) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		map.put("YhName", getUtf8(YhName));
		map.put("Telephone", getUtf8(Telephone));
		map.put("YHBM", getUtf8(YHBM));
		yhInfoService.UpdateYhByBm(map);
		return json;
	}
   
   @RequestMapping("UpdateLhyh")
	
	public String UpdateLhyh(String SFLH,String LHYY,String id) throws UnsupportedEncodingException{
		
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(id);
		
		map.put("SFLH", SFLH);
		map.put("LHYY", LHYY);
		map.put("id", id);
		yhInfoService.UpdateLhyh(map);
		 return "redirect:yezxx.action";
	}
   
   @RequestMapping("Qxlh")
   @ResponseBody
   public JSONObject Qxlh(String SFLH,String id){
	JSONObject json=new JSONObject();
	
	Map<String, Object> map = new HashMap<String, Object>();
	System.out.println(id);
	
	map.put("SFLH", SFLH);
	
	map.put("id", id);
	yhInfoService.UpdateLhyh(map);
	
	return json;
   }
   
}