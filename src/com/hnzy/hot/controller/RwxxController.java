package com.hnzy.hot.controller;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.hnzy.hot.service.JfxxService;
import com.hnzy.hot.service.RwxxService;
import com.hnzy.hot.service.XxglService;
import com.hnzy.hot.service.YhInfoService;

import net.sf.json.JSONObject;

@RequestMapping("rwxxCont")
@Controller
public class RwxxController {
	@Autowired
	private YhInfoService yhInfoService;
	@Autowired
	private RwxxService rwxxService;
	@Autowired
	private XxglService XxglService;
	@Autowired
	private XxglService xxglService;
	
	@Autowired
	public JfxxService jfxxService;
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
		
		JSONObject json=new JSONObject();
		System.out.println(getUtf8(XqName)+getUtf8(HouseNo));
    	Map<String, String> rwxx=rwxxService.findrwxx(getUtf8(XqName), getUtf8(BuildNo), getUtf8(CellNo),  getUtf8(HouseNo));
    
		json.put("rwxx", rwxx);
		return json;
	}
   @RequestMapping("InsertrRw")
   @ResponseBody
	public void InsertrRw(HttpSession session,String HTQSRQ,String HTJSRQ,String DJ, String TelePhone,String IDNum,String XqName,String BuildNO,String CellNO,String HouseNO,String yhName,String YHBM,String rwbm
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
		xxglService.InsertRz((String) session.getAttribute("UserName"), "入网登记   用户编码："+YHBM, new Date());
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

		path = "D:/apache-tomcat-8090/webapps/img";
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(factory);
		sfu.setHeaderEncoding("UTF-8"); // 处理中文问题
		
		String fileName = "";
		
		try {
			int i=0;
			for (MultipartFile item : list) {
				Date date = new Date(); 
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss") ; 
				String JFRQ = dateFormat.format(date);
				fileName = JFRQ+ item.getName()+i;
				
				item.transferTo(new File(path + "/" + fileName + ".jpg"));
				i++;
			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		JSONObject json = new JSONObject();
		String ip =req.getScheme()+ "://"+req.getServerName()+ ":" + req.getServerPort()+"/";
		String imgUrl = ip+"img/" + fileName + ".jpg";//http://192.144.169.217:8090/
       
		json.put("errno", 0);

		json.put("url", imgUrl);

		resp.setContentType("text/html;charset=utf-8");

		return json;
	}
	@RequestMapping("UpdateRwxx")
	@ResponseBody
	public JSONObject rwxx(HttpSession session,String SHJG,String SHR,String id){
		JSONObject json=new JSONObject();
		
		if(session.getAttribute("UserName")!="phrl"){
			json.put("msg", "请使用具有权限的用户进行审核");
			
		}else{
			rwxxService.UpdateRwxx(SHJG, (String) session.getAttribute("UserName"), id);
			json.put("msg", "审核成功");
			xxglService.InsertRz((String) session.getAttribute("UserName"), "入网登记审核 ："+SHJG +"  id:"+id, new Date());
		}
		
		return json;
	}
	
	@RequestMapping("gpy")
	@ResponseBody
	public JSONObject geiYinpin (HttpServletRequest request){
	
		JSONObject json=new JSONObject();
		
		try {
			//System.out.println(url);
			Desktop.getDesktop().open(new File("C:得力拍照.lnk"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return json;
	}
	
	
	//删除收费明细查询
	@RequestMapping("rwxxDelete")
	@ResponseBody
	public JSONObject delete(HttpSession session,String YHBM){
		JSONObject json=new JSONObject();
        if(session.getAttribute("UserName")!=null){
        	XxglService.deleteJfxx(YHBM);
    		XxglService.deleteRwxx(YHBM);
    		Date date = new Date();
    		
    		
    		String UserName=(String) session.getAttribute("UserName");
    		Map map = new HashMap<>();
    		if( yhInfoService.findYhByBm(YHBM).size()>0){
    			 map= yhInfoService.findYhByBm(YHBM).get(0);
    		}else{
    			map.put("YhName", null);
    			map.put("XqName", null);
    			map.put("BuildNO", null);
    			map.put("CellNO", null);
    			map.put("HouseNO", null);
    		}
    		
    		xxglService.InsertRz(UserName, "删除缴费信息 用户编码："+getUtf8(YHBM)+"   用户名："+map.get("YhName")+" 小区："+map.get("XqName")+"   楼栋："+map.get("BuildNO")+"  单元："+map.get("CellNO")+"  户号："+map.get("HouseNO"), date);
    		jfxxService.UpdateJfxx("否", YHBM, null);
    		
    		json.put("msg", "1");
		}else{
			json.put("msg", "2");
		}
		
		return json;
		
	}
	
	@RequestMapping("UpdateHt")
	@ResponseBody
	public JSONObject UpdateHt(HttpSession session,String ht, String id){
		JSONObject json=new JSONObject();
		
		if(session.getAttribute("UserName")==null){
			json.put("msg", "1");
			
		}else{
			rwxxService.UpdateHt(getUtf8(ht),id);
			json.put("msg", "0");
			
		}
		
		return json;
	}
}
