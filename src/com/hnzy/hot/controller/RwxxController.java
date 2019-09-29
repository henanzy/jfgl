package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.RwxxService;
import com.hnzy.hot.service.YhInfoService;

import net.sf.json.JSONObject;

@RequestMapping("rwxxCont")
@Controller
public class RwxxController {
	@Autowired
	private YhInfoService yhInfoService;
	@Autowired
	private RwxxService rwxxService;
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

	@RequestMapping("rwSer")
	@ResponseBody
	public JSONObject rwSer(String XqName,String BuildNo,String CellNo,String HouseNo) throws UnsupportedEncodingException{
		XqName=new String(XqName.getBytes("ISO-8859-1"),"utf-8");
		JSONObject json=new JSONObject();
    	Map<String, String> rwxx=rwxxService.findrwxx(XqName, BuildNo, CellNo, HouseNo);
    	rwxx.put("rwbm", "YM"+String.valueOf(rwxx.get("BuildNO"))+""+String.valueOf(rwxx.get("CellNO"))+""+String.valueOf(rwxx.get("HouseNO")));
		json.put("rwxx", rwxx);
		return json;
	}
   @RequestMapping("InsertrRw")
   @ResponseBody
	public void InsertrRw(String HTQSRQ,String HTJSRQ,String DJ, String TelePhone,String IDNum,String XqName,String BuildNO,String CellNO,String HouseNO,String yhName,String YHBM,String rwbm
			,String rwDate,String sfrz,String sfdb,String cnss,String jzwmc,String jzwyt,String jzwcg,String bz ,String rwfy) throws UnsupportedEncodingException{
		Map<String,String>map=new HashMap<>();
		
		sfrz=new String(sfrz.getBytes("ISO-8859-1"),"utf-8");
		sfdb=new String(sfdb.getBytes("ISO-8859-1"),"utf-8");
		jzwmc=new String(jzwmc.getBytes("ISO-8859-1"),"utf-8");
		jzwyt=new String(jzwyt.getBytes("ISO-8859-1"),"utf-8");
		cnss=new String(cnss.getBytes("ISO-8859-1"),"utf-8");
		bz=new String(bz.getBytes("ISO-8859-1"),"utf-8");
		map.put("IDNum",IDNum );
		map.put("YHBM",YHBM  );
		map.put("RWBM",rwbm  );
		map.put("LXDH",TelePhone  );
		map.put("SFRZ",sfrz  );
		map.put("SFDB",sfdb  );
		map.put("CNSS",cnss  );
		map.put("JZMC",jzwmc  );
		map.put("JZYT",jzwyt  );
		map.put("JZCG",jzwcg  );
		map.put("BZ", bz );
		map.put("HTQSRQ",HTQSRQ  );
		map.put("HTJSRQ",HTJSRQ  );
		map.put("DJ",DJ  );
		map.put("RWFY",rwfy  );
		rwxxService.InsertDrwxx(map);
	}
	
	@RequestMapping("findDy")
	@ResponseBody
	public JSONObject findDy(String xqm,String ldh) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		//xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		Map<String, Object> map = new HashMap<String, Object>();
		xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		map.put("xqm", xqm);
		map.put("ldh", ldh);
		
		json.put("Dy", yhInfoService.findDy(map));
		return json;
	}
	
	@RequestMapping("findHh")
	@ResponseBody
	public JSONObject findHh(Map<String, Object> map) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
		//xqm=new String(xqm.getBytes("ISO-8859-1"),"utf-8");
		json.put("Hh", yhInfoService.findHh(map));
		return json;
	}
	
	@RequestMapping("rwxx")
	@ResponseBody
	public JSONObject rwxx(){
		JSONObject json=new JSONObject();
		List<Map<String, String>> rwxx=rwxxService.findRw(null, null,null,null);
		json.put("rwxx", rwxx);
		return json;
	}
}
