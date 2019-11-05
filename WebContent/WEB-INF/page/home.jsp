<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String ip =request.getScheme()+ "://"+request.getServerName()+ ":" + request.getServerPort()+"/";
%>


<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>计费管理系统</title>

<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/reset.css"
	media="screen" />
<!-- <link rel="stylesheet" type="text/css" href="../css/text.css"
	media="screen" /> -->
<link rel="stylesheet" type="text/css"
	href="../css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fluid.css"
	media="screen" />

<link rel="stylesheet" type="text/css"
	href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/mws.style.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/icons/icons.css" />
<link rel="stylesheet" type="text/css" href="../css/admin-all.css"
	media="screen" />

<link rel="stylesheet" type="text/css" href="../css/mws.theme.css"
	media="screen" />


<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<script type="text/javascript"
	src="../plugins/jimgareaselect/jquery.imgareaselect.min.js"></script>
<script type="text/javascript"
	src="../plugins/jquery.dualListBox-1.3.min.js"></script>
<script type="text/javascript" src="../plugins/jgrowl/jquery.jgrowl.js"></script>
<script type="text/javascript" src="../plugins/jquery.filestyle.js"></script>
<script type="text/javascript"
	src="../plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.dataTables.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../plugins/flot/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript" src="../plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript"
	src="../plugins/colorpicker/colorpicker.js"></script>
<script type="text/javascript" src="../plugins/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript"
	src="../plugins/sourcerer/Sourcerer-1.2.js"></script>
<script type="text/javascript" src="../plugins/jquery.placeholder.js"></script>
<script type="text/javascript" src="../plugins/jquery.validate.js"></script>
<script type="text/javascript" src="../plugins/jquery.mousewheel.js"></script>
<script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>
<!-- <script type="text/javascript">
var yhInfoj=${yhInfo};
var tel=${tel}
alert(yhInfoj);
</script> -->

<!-- 来电即时信息 -->
<style>
fieldset {
	width: 350px;
	margin: 0px;
	padding: 6px;
	border: 1px solid #3E403C;
	text-align: left;
}

legend {
	color: #3E403C;
	font-weight: 800;
	padding: 3px 6px;
}
</style>


<script type="text/javascript" src="../js/swfobject.js"></script>
<%
  
  /* 'CTI服务器相关参数 */
  String weburl="2.asp" ;  /* '弹屏网址 */
  String ctiip="192.168.1.108";    /* 'CTI服务器地址  */
  String ipport="2000" ;  /* 'CTI服务器端口 */ 
  String extno="801" ;  /* '分机号，具体对接时请做成动态参数 */
  String seatpass="" ;  /* '密码，使用md5加密后的值，默值不需要密码，只有服务器端设置了需要密码才需要设置 */  
  String isautologin="1";          /* '是否启用自动登录，即与呼叫中心服务器断开了会自动重新登录 */
  String isshowcall="1" ;          /* '是否显示对外呼叫相关控件，“1”为显示，其它值不显示 */
  String ishidetel="0"  ;         /*  '是否要隐藏来电码，“0”不隐藏，“1”为隐藏 */
%>
<script type="text/javascript">

//通过swfobject.js来加载cti.swf 还是 通过普通代码来加载cti.swf，请根据实际情况选择一种
//考虑到浏览器兼容方面的原因，建议使用swfobject.js来加载cti.swf
//用swfobject来引用flash
<%-- var flashvars = { 
      extno: "<%=extno%>", 
      seatpass: "<%=seatpass%>", 
      ctiip: "<%=ctiip%>", 
      ipport: "<%=ipport%>", 
      isshowcall: "<%=isshowcall%>", 
      isautologin: "<%=isautologin%>" ,
      ishidetel: "<%=ishidetel%>"                         
    }; 
    var params = { 
      menu: "false" 
    }; 
    var attributes = { 
      id: "cti", 
      name: "cti" 
    };  --%>
</script>
<%-- <% 
   if logintype=1 then
%>
//如要通过普通代码来加载cti.swf请注释掉下面一行的代码，请在html代码部分做一个切换选择
swfobject.embedSWF("cti.swf", "callcenter", "350", "80", "9.0.0", "cti.swf", flashvars, params, attributes); 
<%
   else    
%>
 --%>
 <script type="text/html" id="pswModel">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="username" readonly="readonly" name="username" value="${UserName}" class="layui-input" maxlength="12"
                       lay-verify="required" required/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">旧密码</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="oldpassword" name="oldpassword" placeholder="请输入旧密码" type="password" class="layui-input" maxlength="12"
                       lay-verify="required" required/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">新密码</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="newpassword" name="newpassword" placeholder="请输入新密码" type="password" class="layui-input" maxlength="12"
                       lay-verify="required|pass" required/>
            </div>
        </div>
        
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
            <button class="layui-btn layui-btn-primary" type="button" id="pswCancel">取消</button>
            <button class="layui-btn layui-btn-normal" type="button" id="pswSubmit" >修改</button>
        </div>
    </form>

</script>

<script type="text/html" id="YhModel">

<form id="addYhForm" class="layui-form model-form" action="" method="PUT">

    
       <div class="layui-form-item">
           <label class="layui-form-label">用户名</label>
           <div class="layui-input-block">
               <input style="width:200px" autocomplete="off" id="username" name="username" placeholder="请输入用户名" value="" class="layui-input" maxlength="12"
                      lay-verify="required" required/>
           </div>
       </div>

       <div class="layui-form-item">
           <label class="layui-form-label">密码</label>
           <div class="layui-input-block">
               <input style="width:200px" autocomplete="off" id="password" name="password" placeholder="请输入新密码" type="password" class="layui-input" maxlength="12"
                      lay-verify="required|pass" required/>
           </div>
       </div>

     
    

     
       
       <div class="layui-form-item model-form-footer" style="margin-left:130px">
           <button class="layui-btn layui-btn-primary" type="button" id="adYhCancel">取消</button>
           <button class="layui-btn layui-btn-normal" id="addYhSubmit" >添加</button>
       </div>
   </form>
</script>
<script type="text/javascript">
function xzyh(flag){
	var form = layui.form
   
	if(flag=="1"){
		layer.msg("用户名已存在");
	}
	 layer.open({
	        type: 1,
	        title: "新增用户",
	        area: ['400px', '220px'] ,
	        offset: '120px',
	        content: $("#YhModel").html()
	    });
	 form.render();
	 $("#addYhForm")[0].reset();
	    $("#adYhCancel").click(function () {
	        layer.closeAll();
	    });
	    
	    $("#addYhSubmit").click(function () {
	    	var username = $('#username').val();
			var password = $('#password').val();
			
			
			if(username==""||password==""){
				alert("用户名或密码不为空!");
				return false;
			}
				$.ajax({
					url : "<%=basePath%>user/addYh.action", 
					async : false,
					dataType : "json",
					data : {
						"username" : username,
						"password" : password,
						
					},
					success : function(data) {
	
						msg = data.msg
						 if(msg=="0"){
							
								alert("该用户没有注册权限");
								return false;
							
							
					     }
						if(msg=="1"){
							setTimeout(function () {
								alert("添加成功");
		                    }, 2500);
							
						}else if(msg=="0"){
								
									alert("用户名已存在!");
									return false;
								
								
						}
						else if(msg=="2"){
							
							alert("您没有注册权限!");
							return false;
						
						
				}
					}

				});
	    });
}

function xgmm(flag) {
	 if(flag=="1"){
		layer.msg("原密码输入错误");
	} 
    layer.open({
        type: 1,
        title: "修改密码",
        area: '400px',
        offset: '120px',
        content: $("#pswModel").html()
    });
    $("#pswForm")[0].reset();
    $("#pswCancel").click(function () {
        layer.closeAll();
    });
    
    $("#pswSubmit").click(function () {
    	var username = $('#username').val();
		var oldpassword = $('#oldpassword').val();
		var newpassword = $('#newpassword').val();
		if(oldpassword==""||oldpassword==""){
			alert("密码不能为空!");
			return false;
		}
		var id=$('#id').val();
			$.ajax({
				url : "<%=basePath%>user/updapwd.action", 
				async : false,
				dataType : "json",
				data : {
					"oldpassword" : oldpassword,
					"newpassword" : newpassword,
					"username" : username,
					
				},
				success : function(data) {
					
					msg = data
					if(msg=="0"){				
							alert("修改成功!");	
							window.location.href="<%=basePath%>user/toLogin.action"; 
					}else{
					alert("原密码输入错误");

							//xgmm(0);
						
					}
				}

			});
    });
    
    
    
}



</script>


<!-- 选项卡 -->
<link rel="stylesheet" type="text/css" href="../tag/css/style.css" />
<link rel="stylesheet" type="text/css" href="../tag/css/tabstyle.css" />
<script type="text/javascript" src="../tag/js/tab.js"></script>


<!-- 侧边树状图 -->
<link rel="stylesheet" type="text/css" href="../css/treecss/jquery.treemenu.css" />
<script type="text/javascript" src="../js/treejs/jquery.treemenu.js"></script>


<style>
* {
	margin: 0px;
	padding: 0px;
}

#demo_m {
	display: block;
	width: 46px;
	height: 40px;
	position: fixed;
	bottom: 30px;
	left: 160px;
	z-index: 999;
}

#demo_m ul {
	width: 34px;
	height: 20px;
	position: absolute;
	top: 20px;
}

#demo_m ul li {
	list-style: none;
	padding: 0px;
	margin: 0px;
	display: inline-block;
	width: 6px;
	height: 6px;
	border-radius: 4px;
	background-color: rgba(255, 255, 255, 0.7);
}

#demo_menu1 {
	display: none;
	width: 80px;
	height: 140px;
	background-color: rgba(43, 45, 49, 0.9);
	text-align: center;
	padding: 10px;
	border-radius: 10px;
	box-shadow: 4px 4px 4px 4px rgba(0, 0, 0, 0.1);
	position: fixed;
	bottom: 30px;
	left: 204px;
	z-index: 998;
}

#demo_menu1 li a {
	color: #bbb;
	line-height: 27px;
}

#demo_menu1 li a:hover {
	color: #fff;
}

#demo_menu1::before {
	content: "";
	display: block;
	position: absolute;
	width: 0px;
	height: 0px;
	border: 10px solid transparent;
	left: -20px;
	bottom: 16px;
	border-right-color: rgba(43, 45, 49, 0.8);
}

	
#demo_menu2 {
	width: 36px;
	height: 32px;
	position: fixed;
	top: 10%;
	right: 0px;
	background-color: #2B2D31;
	border-radius: 4px;
	z-index: 11;
}

#demo_menu2 img {
	display: block;
	width: 28px;
	height: 22px;
	margin: 5px auto;
}

#demo_menu3 {
	display: none; 
	width : 160px;
	height: 106%;
	border-radius:10px;
	background-color: #444;
	position: absolute;
	top: 62px;
	right: 0px;
	z-index: 12;
	overflow:hidden;
}

.tree {
	color: #46CFB0;
	width: 146px;
	margin: 10px auto;
}

.tree li, .tree li>a, .tree li>span {
	padding: 4pt;
	border-radius: 4px;
}

.tree li a {
	color: #46CFB0;
	text-decoration: none;
	line-height: 20pt;
	border-radius: 4px;
}

.tree li a:hover {
	background-color: #34BC9D;
	color: #fff;
}

.active {
	background-color: #34495E;
	color: white;
}

.active a {
	color: #fff;
}

.tree li a.active:hover {
	background-color: #34BC9D;
}
	
.xqname,.ldname,.dyname{
	background:url("../images/background/cir.png") no-repeat left center;
}

.xqname:hover,.ldname:hover,.dyname:hover{
	background:url("../images/background/cirf.png") no-repeat left center;
}
</style>

 <script type="text/javascript">
 /* 稽查管理 */
 function jcgl(){// 
 	window.open("<%=basePath%>user/jcgl.action","Conframe");
 }
 /* 清欠中心*/
 function qqzx(){// 
 	window.open("<%=basePath%>user/qqzx.action","Conframe");
 }
 /* 采暖变更*/
 function cnbg(){// 
 	window.open("<%=basePath%>user/cnbg.action","Conframe");
 }
 /* 客户管理 */
 function khgl(){// 
 	window.open("<%=basePath%>user/khgl.action","Conframe");
 }
 /* 收费明细查询 */
 function sfmxcx(){// 
 	window.open("<%=basePath%>user/sfmxcx.action","Conframe");
 }
 /* 新入网 */
 function xrwcx(){// 
 	window.open("<%=basePath%>user/xrwcx.action","Conframe");
 }
 /* 日收费 */
 function rsfhz(){// 
 	window.open("<%=basePath%>user/rsfhz.action","Conframe");
 }
 /* 小区收费 */
 function xqsfhz(){// 
 	window.open("<%=basePath%>user/xqsfhz.action","Conframe");
 }
 /* 当前用户类别 */
 function dqyhlb(){// 
 	window.open("<%=basePath%>user/dqyhlb.action","Conframe");
 }
 /* 历史欠费查询 */
 function lsndqf(){// 
 	window.open("<%=basePath%>user/lsndqf.action","Conframe");
 }
 /* 面积变更 */
 function mjbg(){// 
 	window.open("<%=basePath%>user/mjbg.action","Conframe");
 }
 /* 统计图表 */
 function tjtb(){// 
 	window.open("<%=basePath%>user/tjtb.action","Conframe");
 }
 /* 系统设置 */
 function xtsz(){// 
 	window.open("<%=basePath%>user/xtsz.action","Conframe");
 }
 /* 柜台收费 */
 function gtsf(){// 
 	window.open("<%=basePath%>user/gtsf.action","Conframe");
 }
 /* 银行代收 */
 function yhds(){// 
 	window.open("<%=basePath%>user/yhds.action","Conframe");
 }
 /* 微信支付*/
 function wxzf(){// 
 	window.open("<%=basePath%>user/wxzf.action","Conframe");
 }
 /* 支付宝支付*/
 function zfbzf(){// 
 	window.open("<%=basePath%>user/zfbzf.action","Conframe");
 }
 /*退费 */
 function tf(){// 
 	window.open("<%=basePath%>user/tf.action","Conframe");
 }
 /*离线收费 */
 function lxsf(){// 
 	window.open("<%=basePath%>user/lxsf.action","Conframe");
 }
 /* 合同模板 */
 function htmb(){// 
 	window.open("<%=basePath%>user/htmb.action","Conframe");
 }
 /* 合同查询 */
 function htcx(){// 
 	window.open("<%=basePath%>user/htcx.action","Conframe");
 }
 /* 入网审核 */
 function rwsh(){// 
 	window.open("<%=basePath%>user/rwsh.action","Conframe");
 } 
 /* 批量录入 */
 function pllr(){// 
 	window.open("<%=basePath%>user/pllr.action","Conframe");
 } 
 /* 入网登记*/
 function rwdj(){// 
 	window.open("<%=basePath%>user/rwdj.action","Conframe");
 } 
 /* 知识库 */
 function qiytl(){// 
     window.open("<%=basePath%>user/qiytl.action?type=企业条例", "Conframe");
 } 
 function guojfg(){// 
 	window.open("<%=basePath%>user/guojfg.action?type=国家法规", "Conframe");
 } 
 function hangyzs(){// 
 	window.open("<%=basePath%>user/hangyzs.action?type=行业知识", "Conframe");
 } 
 function xitsm(){// 
 	window.open("<%=basePath%>user/xitsm.action?type=系统说明", "Conframe");
 } 
 function wentjd(){// 
 	window.open("<%=basePath%>user/wentjd.action?type=问题解答", "Conframe");
 } 
  	/* 员工定位 */
 function shisdw(){// 
 	window.open("<%=basePath%>user/shisdw.action","Conframe");
 } 
 function lisgj(){// 
 	window.open("<%=basePath%>user/lisgj.action","Conframe");
 } 
 function tfcx(){// 
 	window.open("<%=basePath%>user/tfcx.action","Conframe");
 }
</script>


</head>
<body onload="doit()">


	<!--   模块连接 -->
	<div>
		<div id="demo_m">
			<ul>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
			

		<div id="demo_menu3">
			<ul class="tree">

			</ul>
		</div>

	</div>



	<!-- 悬浮框 -->
	<%-- <div
		style="position: fixed; bottom: 20px; right: 20px; z-index: 9999; visibility: hidden;">
		<form name="form1" action="home.action">
			<input type="hidden" name="mobile" value=""> <br />
			<fieldset class="nowinfo">
				<legend align="top">即时信息</legend>
				<div align="left" style="height: 82px;">
					<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
						codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0"
						width="350" height="80" id="cti" align="middle">
						<param name="allowScriptAccess" value="sameDomain" />
						<param name="allowFullScreen" value="false" />
						<param name="movie"
							value="../cti/cti.swf?extno=<%=extno%>&seatpass=<%=seatpass%>&ctiip=<%=ctiip%>&ipport=<%=ipport%>&isshowcall=1&isautologin=1&ishidetel=0" />
						<param name="quality" value="high" />
						<param name="bgcolor" value="#ffffff" />
						<param name="wmode" value="transparent" />
						<embed
							src="../cti/cti.swf?extno=<%=extno%>&seatpass=<%=seatpass%>&ctiip=<%=ctiip%>&ipport=<%=ipport%>&isshowcall=1&isautologin=1&ishidetel=0"
							quality="high" bgcolor="#fff" width="350" height="80" name="1"
							align="middle" allowScriptAccess="sameDomain"
							allowFullScreen="false" type="application/x-shockwave-flash"
							pluginspage="http://www.adobe.com/go/getflashplayer_cn" />
					</object>
				</div>
			</fieldset>
			<br />
		</form>
	</div>
 --%>
	<!-- 头部 -->

	<div id="mws-header" class="clearfix" style="width: 100%; min-width:700px;">
		<div id="mws-logo-container" style="width: 60%;">
			<div id="mws-logo-wrap" style="width: 100%; float: right;">
				<!-- <img src="../images/logo.png" alt="mws admin" style="width:300px;height:34px;float:right;margin-top:10px;" /> -->
				<p
					style="width: 450px; height: 34px; float: left; font-size: 30px; color: #C5D52B; line-height: 60px">ZYIS-H 缴费管理系统</p>
			</div>
		</div>

		<!-- 登录头像 -->
		<div id="mws-user-tools" class="clearfix">
			<div id="mws-user-info" class="mws-inset">
				<div id="mws-user-photo">
					<img src="../example/profile.jpg" alt="User Photo" />
				</div>
				<div id="mws-user-functions">
				
					<div id="mws-username"></div>
					<ul>
					 <li><a href="#" onclick="xgmm(0)">更改密码</a></li>
                        <li><a href="#" onclick="xzyh(0)">用户注册</a></li>
                        <li><a href="<%=ip%>jfgl/user/toLogin.action">登录</a></li>
                        <li><a href="<%=ip%>kfgl/user/toLogin.action">客服系统</a></li>
					   <!--  <li><a href="#" onclick="xgmm(0)">更改密码</a></li>
                        <li><a href="#" onclick="xzyh(0)">用户注册</a></li>
                       <li><a href="http://192.144.169.217:8090/zhineng/user/toLogin.action">登录</a></li>
						<li><a href="http://192.144.169.217:8090/zhineng/user/toLogin.action">退出</a></li>
						<li><a href="http://192.144.169.217:8090/jfgl/user/ZHome.action">退到主页面</a></li> -->
					</ul>
				</div>
			</div>
		</div>
	</div>

	http://192.144.169.217:8090/xingxhrz/images/background/Arrow-Right.gif

	<!-- 下面内容 start-->
	<div id="mws-wrapper">
		<!--  必要的标记，不要删除 -->
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>

		<!-- 左边侧栏包装器 -->
		<div id="mws-sidebar">

			<!--  搜索框-->
			<div id="mws-searchbox" class="mws-inset">
				<form action="https://www.baidu.com/">
					<input type="text" class="mws-search-input" /> <input
						type="submit" class="mws-search-submit" />
				</form>
			</div>

			<iframe scrolling="no" width="100%" name="Conframel" id="Conframel"
				src="<%=basePath%>user/left.action" frameborder="0"
				onload="this.height=0;var fdh=(this.Document?this.Document.body.scrollHeight:this.contentDocument.body.offsetHeight);this.height=(fdh>1700?fdh:1100)"></iframe>

		</div>
		<!-- 左边侧栏包装器  End -->

		<!--  右边主容器 start  -->
	
		<div id="mws-container" class="clearfix">
			 
			<div class="Conframe" style="height:90%;">
			 	<div id="page-tab">
					<button class="tab-btn" id="page-prev"></button>
					<nav id="page-tab-content">
						<div id="menu-list">                </div>
					</nav>
					<button class="tab-btn" id="page-next"></button>
					
				</div>
				<iframe name="Conframe" id="Conframe"
					src="<%=basePath%>user/rwdj.action"></iframe>
			</div>
		</div>

	</div>


	<script type="text/javascript">
	var UserName="<%=request.getSession().getAttribute("UserName")%>"
	console.log("<%=request.getSession().getAttribute("UserName")%>");
	$("#mws-username").html("Hello,"+UserName);
	function doit(){
		$('#Conframel').contents().find(".ac_kf li a").tab();
	}
		
		
	var list = ${YhList};
	var list = [
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "金领小区",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "02",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "金领小区",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "02",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "金领小区",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "03",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "金领小区",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "天鹅堡",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "02",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "天鹅堡",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "02",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "天鹅堡",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "03",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "天鹅堡",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "上村花苑",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "02",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "上村花苑",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "02",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "上村花苑",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "1层服务大厅",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "03",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "上村花苑",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
			
	];
	//侧面树图
	 var xqlilst = [];
	 for(var i = 0 ; i < list.length ; i ++){
		 if(xqlilst.indexOf(list[i].xqm) == -1){
			 xqlilst.push(list[i].xqm);
		 }
	 }
	 for(var j = 0; j < xqlilst.length; j++) {
			$(".tree").append("<li class='xq xqli"+j+"'><a class='xqname' href='#about'>&nbsp;&nbsp;"+xqlilst[j]+"</a></li>");
	}
	

	 var ldlist = [];
	 var ldl = [];
	 for(var x = 0 ; x < xqlilst.length ; x ++){
		 for(var i = 0 ; i < list.length ; i ++){
			 if( xqlilst[x] == list[i].xqm && ldl.indexOf(list[i].ldh) == -1){
				 ldl.push(list[i].ldh);
			 }
		 }
		 ldlist.push(ldl);
		 ldl = [];
	 }
	 
	 for(var j = 0; j < ldlist.length; j++) {
		 $(".xqli"+j).append("<ul></ul>");
		 for(var i = 0; i < ldlist[j].length; i++){
			 $(".xqli"+j).children("ul").append("<li class='ld'><a class='ldname' href='#'>&nbsp;&nbsp;&nbsp;"+ldlist[j][i]+"</a></li>");
		 }
	 } 
	
	 var dylist = [];
	 var ldlic = $(".ld");
	 $(".ld").each(function(i){
		$(this).addClass("ldli"+i);
		 
	 });
	 for(var y = 0 ; y < ldlic.length ; y ++){
		 var xqlddy = [];
		 var aldhtml = $(".ldli"+y).children("a.ldname").html();
		 aldhtml = aldhtml.replace(/&nbsp;/ig, "");
		 var axqhtml = $(".ldli"+y).parent().parent().children("a.xqname").html();
		 axqhtml = axqhtml.replace(/&nbsp;/ig, "");
		 for(var i = 0 ; i < list.length ;i ++){
			 if(axqhtml == list[i].xqm && aldhtml == list[i].ldh && xqlddy.indexOf(list[i].dyh) == -1){
				 xqlddy.push(list[i].dyh);
			 }
		 }
		 if(xqlddy.length > 0){
			 $(".ldli"+y).append("<ul></ul>"); 
			 for(var a = 0 ; a < xqlddy.length ;a ++){
				 $(".ldli"+y).children("ul").append("<li class='dy'><a class='dyname' href='#job1'>&nbsp;&nbsp;&nbsp;&nbsp;"+xqlddy[a]+"</a></li>");
			 }
		 }
		
	 } 
	
	
	 
	
	$("#demo_menu2").mouseenter(function() {
		$("#demo_menu3").fadeIn(500);
	});
	
	$("#demo_menu3").mouseleave(function(){
		$("#demo_menu3").fadeOut(500);
	});
        
	$(".tree").treemenu({
		delay: 300
	}).openActive();
	
        

  $("#demo_m").mouseenter(function() {
		$("#demo_m ul").css("transform", "rotate(90deg)");
		$("#demo_m ul li").css("background-color", "#C5D52B");
		$("#demo_menu1").show();
	}).mouseleave(function() {
		$("#demo_m ul").css("transform", "rotate(360deg)");
		$("#demo_m ul li").css("background-color","rgba(255,255,255,0.7)");
		$("#demo_menu1").hide();
	});

	$("#demo_menu1").mouseover(function() {
		$("#demo_m ul").css("transform", "rotate(90deg)");
		$("#demo_m ul li").css("background-color", "#C5D52B");
		$(this).show();
	}).mouseleave(function() {
		$("#demo_m ul").css("transform", "rotate(360deg)");
		$("#demo_m ul li").css("background-color","rgba(255,255,255,0.7)");
		$(this).hide();
	});

	var xq;
	var ld;
	var dy;
	
	
	/* 楼栋 */
	$("a.xqname").click(function(){
		window.open("<%=basePath%>user/szt.action","Conframe");
		$('#Conframel').contents().find(".ac_kf li a").css("cssText","color:#fff !important;");
		
		xq = $(this).html();
		xq = xq.replace(/&nbsp;/ig, "");
		
	});	 
	
	/* 楼栋 */
	$("a.ldname").click(function(){
		window.open("<%=basePath%>user/szt.action","Conframe");
		$('#Conframel').contents().find(".ac_kf li a").css("cssText","color:#fff !important;");
		
		ld = $(this).html();
		ld = ld.replace(/&nbsp;/ig, "");
		xq = $(this).parents("li.xq").children("a.xqname").html();
		xq = xq.replace(/&nbsp;/ig, "");
		
	});	 
	
	/* 单元 */
	$("a.dyname").click(function(){
		window.open("<%=basePath%>user/szt.action","Conframe");
		$('#Conframel').contents().find(".ac_kf li a").css("cssText","color:#fff !important;");
		
		dy = $(this).html();
		dy = dy.replace(/&nbsp;/ig, "");
		ld = $(this).parents("li.ld").children("a.ldname").html();
		ld = ld.replace(/&nbsp;/ig, "");
		xq = $(this).parents("li.xq").children("a.xqname").html();
		xq = xq.replace(/&nbsp;/ig, "");
		
	});	 
	
	 

        
  </script>


</body>


</html>