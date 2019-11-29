package com.hnzy.hot.service.impl;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hnzy.hot.dao.JfxxDao;
import com.hnzy.hot.dao.RwxxDao;
import com.hnzy.hot.dao.XxglDao;
import com.hnzy.hot.dao.YhInfoDao;
import com.hnzy.hot.service.JfxxService;
import com.hnzy.socket.util.ExcelUtilS;



@Service
public class JfxxServiceImpl implements JfxxService{

	@Autowired
	private JfxxDao jfxxDao;
	@Autowired
	private YhInfoDao yhnfoDao;
	@Autowired
	private RwxxDao rwxxdao;
	@Autowired
	private XxglDao xxgldao;
	@Override
	public List<Map<String, Object>> findYhByBm(String YHBM) {
		// TODO Auto-generated method stub
		return jfxxDao.findYhByBm(YHBM);
	}
	@Override
	public void InsertJfxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		jfxxDao.InsertJfxx(map);
	}
	@Override
	public List<Map<String, Object>> findYhds(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return jfxxDao.findYhds(map);
	}
	@Override
	public List<Map<String, Object>> findJfze(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return jfxxDao.findJfze(map);
	}
	@Override
	public void UpdateJfxx(String JFBS, String YHBM,String JFRQ) {
		// TODO Auto-generated method stub
		jfxxDao.UpdateJfxx(JFBS, YHBM,JFRQ);
	}
	@Override
	public Map<String, Object> findSfx(String sfx) {
		// TODO Auto-generated method stub
		return jfxxDao.findSfx(sfx);
	}
	@Override
	public List<Map<String, Object>> findJfBs(String YHBM) {
		// TODO Auto-generated method stub
		return jfxxDao.findJfBs(YHBM);
	}
	
	@Override
	public void importExcelInfo(String  UserName,InputStream in, MultipartFile file, Integer adminId) throws Exception {
		// TODO Auto-generated method stub

		List<List<Object>> listob = ExcelUtilS.getBankListByExcel(in,file.getOriginalFilename());
	    //遍历listob数据，把数据放到List中
	    for (int i = 0; i < listob.size(); i++) {
	        List<Object> ob = listob.get(i);
	       String YHBM="";   String JFSJ="";   String CNQ="";   String JIFFS="";   String JFTJ="";
	       String JFJE="";   String YSJE="";   String LXDH="";  String SKZH="";    String SFRZ="";
	       String SFDB="";   String HTQSRQ="";  String HTJSRQ="";  String SFFS="";
	      
	       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss") ; 
	       Date date = new Date();
	       String LSDH = dateFormat.format(date)+i;
	      
	       if(ob.get(0)==null||"".equals(ob.get(0))){
	    	   System.out.println(i);
	    	   continue;
	       }
	        if(ob.get(0)!=null&&ob.get(0)!=""){
	        	Map map1 = new HashMap();
	        	map1.put("YHBM", ob.get(0));
	        	
	        	if(yhnfoDao.findYh(map1).size()==0){
	        		
	        		continue;
	        	}else{
	        		
	        		YHBM=(String) ob.get(0);
	        		
	        	}
	        }
	       
	        if(ob.get(1)!=null&&ob.get(1)!=""){
	        	 LXDH=(String) ob.get(1);
	        }
	    
	        if(ob.get(2)!=null&&ob.get(2)!=""){
	        	  CNQ=(String) ob.get(2);
	        }
	        
	        if(ob.get(3)!=null&&ob.get(3)!="" ){
	        	 JFSJ=(String) ob.get(3);
	        
	        }
	        
	        if(ob.get(4)!=null&&ob.get(4)!=""){
	        	YSJE=(String) ob.get(4);
	        }
	        
	        if(ob.get(5)!=null&&ob.get(5)!=""){
	        	JFJE=(String) ob.get(5);
	        }
	        if(ob.get(6)!=null&&ob.get(6)!=""){
	        	JFTJ=(String) ob.get(6);
	        }
	        if(ob.get(7)!=null&&ob.get(7)!=""){
	        	SFFS=(String) ob.get(7);
	        }
	        
	        if(ob.get(8)!=null&&ob.get(8)!=""){
	        	JIFFS=(String) ob.get(8);
	        }        
	        if(ob.get(9)!=null&&ob.get(9)!=""){
	        	SKZH=(String) ob.get(9);
	        }
	        if(ob.get(10)!=null&&ob.get(10)!=""){
	        	SFRZ=(String) ob.get(10);
	        }
	        if(ob.get(11)!=null&&ob.get(11)!=""){
	        	SFDB=(String) ob.get(10);
	        }
	        
	        if(ob.get(12)!=null&&ob.get(12)!=""){
	        	HTQSRQ=(String) ob.get(12);
	        }
	        
	        if(ob.get(13)!=null&&ob.get(13)!=""){
	        	HTJSRQ=(String) ob.get(13);
	        }
	        Map map = new HashMap();
	        map.put("YHBM",getUtf8(YHBM));
			map.put("JFSJ",JFSJ);map.put("CNQ",CNQ);
			map.put("JIFFS",JIFFS);map.put("JFTJ",JFTJ);
			map.put("JFJE",getUtf8(JFJE));
			map.put("YSJE",YSJE);
			map.put("SKZH",SKZH);
			map.put("LSDH",getUtf8(LSDH));map.put("LXDH",LXDH);
			map.put("SFFS",SFFS);map.put("SFRZ",SFRZ  );
			map.put("SFDB",SFDB  );
			map.put("CNSS","散热片"  );map.put("HTQSRQ",HTQSRQ  );
			map.put("HTJSRQ",HTJSRQ  );
			System.out.println(map);
			jfxxDao.InsertJfxx(map);
			rwxxdao.InsertDrwxx(map);
			jfxxDao.UpdateJfxx("是", YHBM, JFSJ);
			
			xxgldao.InsertRz(UserName, "导入缴费信息，用户编码："+YHBM, new Date());
			
	    }
	    

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
	@Override
	public void UpdateJfje(String YHBM) {
		// TODO Auto-generated method stub
		jfxxDao.UpdateJfje(YHBM);
	}

	
}
