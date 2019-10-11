package com.hnzy.hot.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
			,String rwDate,String sfrz,String sfdb,String cnss,String jzwmc,String jzwyt,String jzwcg,String bz ,String rwfy,String ht,String RWRQ) throws UnsupportedEncodingException{
		Map<String,String>map=new HashMap<>();
		ht=getUtf8(ht);
		sfrz=getUtf8(sfrz);
		sfdb=getUtf8(sfdb);
		jzwmc=getUtf8(jzwmc);
		jzwyt=getUtf8(jzwyt);
		cnss=getUtf8(cnss);
		bz=getUtf8(bz);
		
		map.put("IDNum",IDNum );
		map.put("YHBM",YHBM  );
		map.put("RWBM",rwbm  );
		map.put("LXDH",TelePhone);
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
		map.put("ht",ht  );
		map.put("RWRQ",RWRQ);
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
	public JSONObject rwxx(String XqName,String BuildNo,String CellNo,String HouseNo,String startTime,String endTime){
		JSONObject json=new JSONObject();
		List<Map<String, String>> rwxx=rwxxService.findRw(getUtf8(XqName), getUtf8(BuildNo),getUtf8(CellNo),getUtf8(HouseNo),startTime,endTime);
		json.put("rwxx", rwxx);
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
	
	@RequestMapping("/fileUp")
	@ResponseBody
	public JSONObject fileUp(HttpServletRequest req, HttpServletResponse resp,
			@RequestParam("img") List<MultipartFile> list) throws IOException {
		String path = this.getClass().getClassLoader().getResource("/").getPath();

		path = "D:/apache-tomcat-8090/webapps/jfgl/images/img";
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(factory);
		sfu.setHeaderEncoding("UTF-8"); // 处理中文问题
		sfu.setSizeMax(1024 * 1024);
		String fileName = "";
		try {
			for (MultipartFile item : list) {
				fileName = UUID.randomUUID().toString() + item.getName();
				item.transferTo(new File(path + "/" + fileName + ".jpg"));
			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		JSONObject json = new JSONObject();

		String imgUrl = "../images/img/" + fileName + ".jpg";

		json.put("errno", 0);

		json.put("url", imgUrl);

		resp.setContentType("text/html;charset=utf-8");

		return json;
	}
	@RequestMapping("UpdateRwxx")
	@ResponseBody
	public JSONObject rwxx(HttpSession session,String SHJG,String SHR,String id){
		JSONObject json=new JSONObject();
		
		if(session.getAttribute("UserName")==null){
			json.put("msg", "请使用具有权限的用户进行审核");
			
		}else{
			rwxxService.UpdateRwxx(SHJG, (String) session.getAttribute("UserName"), id);
			json.put("msg", "审核成功");
		}
		
		return json;
	}
	
}
