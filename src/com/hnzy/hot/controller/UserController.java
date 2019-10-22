package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.pojo.User;
import com.hnzy.hot.pojo.YhMessage;
import com.hnzy.hot.service.UserService;
import com.hnzy.hot.util.JSONSerializer;
import com.hnzy.hot.util.MD5Util;
import com.hnzy.hot.util.StringUtil;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userServer;
	//跳转到登录页面
		@RequestMapping("/toLogin")
		public String tologin(){
			return"index";
		}

	
	//跳转到主页面
		@RequestMapping("ZHome")
		public String ZHome(){
			return "navi";
		}
		
		@RequestMapping("bzxx")
		public String bzxx(){
			return "Xxgl/bzxx";
		}
		
		
		//来电弹屏和首页
		@RequestMapping("/home" )
    	public String home(HttpSession session,String mobile,HttpServletRequest request,String type,String gs,String UserName) throws UnsupportedEncodingException{
			List<YhMessage> findData = new ArrayList();
    		/*List<Map<String, Object>> YhList=dataService.find(null,null,null,null);
    		request.setAttribute("YhList", JSONSerializer.serialize(YhList));*/
			YhMessage da = new YhMessage();
			da.setXqm("金领小区");
			da.setLdh("1");
			da.setDyh("2");
			da.setXqm("市政小区");
			da.setLdh("1");
			da.setDyh("2");
			da.setXqm("涧河小区");
			da.setLdh("1");
			da.setDyh("2");
			da.setXqm("交警队");
			da.setLdh("1");
			da.setDyh("2");
    		findData.add(da);
    		if(gs!=null){
    			gs=new String(gs.getBytes("ISO-8859-1"),"utf-8")+"";
    		}
    		session.setAttribute("type",type);
    		session.setAttribute("gs",gs);
    		/*session.setAttribute("UserName",UserName);*/
    		request.setAttribute("YhList", JSONSerializer.serialize(findData));
    		return "home";
    	}
		@ResponseBody
		@RequestMapping("/login")
		public JSONObject login(HttpSession session,String username,String password,String type,HttpServletRequest request) throws UnsupportedEncodingException{
			JSONObject jsonObject= new JSONObject();
			if (StringUtil.isNoEmpty(username) && StringUtil.isNoEmpty(password)) {
				username=new String(username.getBytes("ISO-8859-1"),"utf-8")+"";
				password=new String(password.getBytes("ISO-8859-1"),"utf-8")+"";
				password=MD5Util.string2MD5(password);				
				User info = userServer.findUserByNameAndMD5(username, password);			
				if(info!=null){										
						request.getSession().setAttribute("admins", info);
						request.getSession().setAttribute("UserName", username);
					
						request.getSession().setAttribute("PassWord", info.getPassword());
						request.getSession().setAttribute("ID", info.getId());												
						jsonObject.put("msg","0");																			
			}else {

					jsonObject.put("msg", "1"); 
				}

			}
			return jsonObject;
		}
		@RequestMapping("updapwd")
		@ResponseBody
		public String updapwd(HttpSession session,HttpServletRequest request,String oldpassword ,String newpassword,String username) throws UnsupportedEncodingException {
//			JSONObject jsonObject=new JSONObject();
			       username=new String(username.getBytes("ISO-8859-1"),"utf-8");
					
					String password11=MD5Util.string2MD5(oldpassword);
					String password12=MD5Util.string2MD5(newpassword);	
					String msg="";
					Integer ID=(Integer) session.getAttribute("ID");

					
					
						if (password11.equalsIgnoreCase(userServer.findUserPass(ID))) {  
							User user =new User();
							user.setId(ID);
							user.setUserName(username);
							user.setPassword(password12);
							userServer.update(user);
							msg="0";
						}else{
							msg="1";
						} 

					return msg;
		}
		
		//新增登录用户
		@ResponseBody
		@RequestMapping("addYh")
		public JSONObject addYh(HttpServletRequest request,String username,String password) throws UnsupportedEncodingException{
			 username=new String(username.getBytes("ISO-8859-1"),"utf-8");
			
			JSONObject json=new JSONObject();
			if("phrl".equals(request.getSession().getAttribute("UserName"))==false){
				json.put("msg","2");
				return json;
			} 
			 //根据用户名字查找用户是否存在
			 User user=userServer.findByName(username);
			 if(user!=null){
				 //用户名称已存在
				 json.put("msg","0");
			 }else{
				  password=MD5Util.string2MD5(password);
				 userServer.InsUsePass(username, password,null);
				 json.put("msg","1");
			 }
			 
			return json;
			
		}	
    	@RequestMapping("/left")
    	public String left(HttpServletRequest reqeust){
    		return "left";
    	}
    	/*@RequestMapping("/index")
    	public String index(){
    		return "index";
    	}*/
    	@RequestMapping("/error")
    	public String error(){
    		return "error";
    	}
    	
    	//缁熻鍒嗘瀽
    	@RequestMapping("/tongjfx2")
    	public String tongjfx2(){
    		return "Kefu/tongjfx2";
    	}
 
    	//宸ュ崟瀹℃牳
    	@RequestMapping("/gongdsh")
    	public String gongdsh(){
    		return "Kefu/gongdsh";
    	}
    	//宸ュ崟鐩戞帶
    	@RequestMapping("/gongdjk")
    	public String gongdjk(){
    		return "Kefu/gongdjk";
    	}
    	//鍙傛暟璁剧疆
    	@RequestMapping("/canssz")
    	public String canssz(){
    		return "Kefu/canssz";
    	}
    	//鎹㈢儹绔欒繍琛岀鐞�
    	@RequestMapping("/yunxgl2")
    	public String yunxgl2(){
    		return "huanre/yunxgl2";
    	}

    	/*企业条例新增文章*/
    	@RequestMapping("/qiytlwz")
    	public String qiytlwz(){
    		return "zhishiku/qiytlwz";
    	}

    	/*企业条例国家法规*/
    	@RequestMapping("/guojfg")
    	public String guojfg(){
    		return "zhishiku/guojfg";
    	}
    	
    	/*企业条例行业知识*/
    	@RequestMapping("/xitsm")
    	public String xitsm(){
    		return "zhishiku/xitsm";
    	}
    
    	
    	/*树状栏跳转页面*/
    	@RequestMapping("/szt")
    	public String szt(){
    		return "/szt";
    	}

    	/*企业条例国家法规*/
    	@RequestMapping("/qiytl")
    	public String qiytl(String type){
    		return "zhishiku/qiytl";
    	}
    	
    	/*企业条例行业知识*/
    	@RequestMapping("/hangyzs")
    	public String hangyzs(String type){
    		return "zhishiku/hangyzs";
    	}
   
    	/*企业条例行业知识*/
    	@RequestMapping("/wentjd")
    	public String wentjd(String type){
    		return "zhishiku/wentjd";
    	}
    	

    	/*员工定位*/
    	@RequestMapping("/shisdw")
    	public String shisdw(){
    		return "dingwei/shisdw";
    	}
    	/*历史轨迹*/
    	@RequestMapping("/lisgj")
    	public String lisgj(){
    		return "dingwei/lisgj";
    	}
    	
    	/*入网登记*/
    	@RequestMapping("/rwdj")
    	public String rwdj(){
    		return "rwgl/rwdj";
    	}
    	
    	/*批量录入*/
    	@RequestMapping("/pllr")
    	public String pllr(){
    		return "rwgl/pllr";
    	}
    	
    	/*入网审核*/
    	@RequestMapping("/rwsh")
    	public String rwsh(){
    		return "rwgl/rwsh";
    	}
    	/*合同模板*/
    	@RequestMapping("/htmb")
    	public String htmb(){
    		return "rwgl/htmb";
    	}
    	
    	/*合同查询*/
    	@RequestMapping("/htcx")
    	public String htcx(){
    		return "rwgl/htcx";
    	}
    	
    	/*柜台收费*/
    	@RequestMapping("/gtsf")
    	public String gtsf(){
    		return "sfgl/gtsf";
    	}
    	
    	/*银行代收*/
    	@RequestMapping("/yhds")
    	public String yhds(){
    		return "sfgl/yhds";
    	}
    	
    	/*微信支付*/
    	@RequestMapping("/wxzf")
    	public String wxzf(){
    		return "sfgl/wxzf";
    	}
    	
    	/*支付宝支付*/
    	@RequestMapping("/zfbzf")
    	public String zfbzf(){
    		return "sfgl/zfbzf";
    	}
    	
    	/*退费*/
    	@RequestMapping("/tf")
    	public String tf(){
    		return "sfgl/tf";
    	}
    	
    	/*离线收费*/
    	@RequestMapping("/lxsf")
    	public String lxsf(){
    		return "sfgl/lxsf";
    	}
    	
    	/*稽查管理*/
    	@RequestMapping("/jcgl")
    	public String jcgl(){
    		return "jcgl";
    	}
    	
    	/*清欠中心*/
    	@RequestMapping("/qqzx")
    	public String qqzx(){
    		return "qqzx";
    	}
    	
    	/*采暖变更*/
    	@RequestMapping("/cnbg")
    	public String cnbg(){
    		return "cnbg";
    	}
    	
    	/*客户管理*/
    	@RequestMapping("/khgl")
    	public String khgl(){
    		return "khgl";
    	}
    	
    	/*报表管理*/
    	@RequestMapping("/bbgl")
    	public String bbgl(){
    		return "bbgl";
    	}
    	
    	/*统计图表*/
    	@RequestMapping("/tjtb")
    	public String tjtb(){
    		return "tjtb";
    	}
    	
    	/*系统设置*/
    	@RequestMapping("/xtsz")
    	public String xtsz(){
    		return "xtsz";
    	}
    	
    	/*收费明细查询*/
    	@RequestMapping("/sfmxcx")
    	public String sfmxcx(){
    		return "bbgl/sfmxcx";
    	}
    	
    	@RequestMapping("/rsfhz")
    	public String rsfhz(){
    		return "bbgl/rsfhz";
    	}
    	
    	@RequestMapping("/xqsfhz")
    	public String xqsfhz(){
    		return "bbgl/xqsfhz";
    	}
    	
    	@RequestMapping("/xrwcx")
    	public String xrwcx(){
    		return "bbgl/xrwcx";
    	}
    	
    	@RequestMapping("/dqyhlb")
    	public String dqyhlb(){
    		return "bbgl/dqyhlb";
    	}
    	
    	@RequestMapping("/lsndqf")
    	public String lsndqf(){
    		return "bbgl/lsndqf";
    	}
    	
    	@RequestMapping("/mjbg")
    	public String mjbg(){
    		return "bbgl/mjbg";
    	}
    	@RequestMapping("/rbb")
    	public String rbb(){
    		return "bbgl/rbb";
    	}
    	@RequestMapping("/tfcx")
    	public String tfcx(){
    		return "sfgl/tfcx";
    	}
    	@RequestMapping("/czrz")
		public String czrz(){
			return"caozrz";
		}
    	
}