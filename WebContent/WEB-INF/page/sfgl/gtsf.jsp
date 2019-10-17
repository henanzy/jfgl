<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/reset.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/text.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fluid.css"
	media="screen" />

<link rel="stylesheet" type="text/css" href="../css/mws.style.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/icons/icons.css"
	media="screen" />

<!-- Demo and Plugin Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/demo.css"
	media="screen" />

<link rel="stylesheet" type="text/css"
	href="../plugins/colorpicker/colorpicker.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/jimgareaselect/css/imgareaselect-default.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/fullcalendar/fullcalendar.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/fullcalendar/fullcalendar.print.css" media="print" />
<link rel="stylesheet" type="text/css" href="../plugins/tipsy/tipsy.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/sourcerer/Sourcerer-1.2.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/jgrowl/jquery.jgrowl.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/spinner/spinner.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/jui/jquery.ui.css"
	media="screen" />

<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/mws.theme.css"
	media="screen" />

<!-- JavaScript Plugins -->

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
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />

<!-- <script type="text/javascript" src="../plugins/flot/jquery.flot.min.js"></script> -->
<!-- <script type="text/javascript"
	src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.resize.min.js"></script> -->
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
 <script type="text/javascript" src="../js/gtsf.js"></script> 

 
 <style>
 *{
	margin:0;
	padding:0;
}

.mws-report {
	width: 98% !important;
	min-width: 170px;
	margin: 8px 1%;
	height: 80px;
	float: left;
	cursor: pointer;
	display: block;
	text-decoration: none;
	color: #323232;
}
#khxx p{
	display:block;
	width:100%;
	height:50px;
}
#khxx p label{
	display:inline-block;
	width:24%;
	text-align:center;
}
#khxx p label span{
display:inline-block;
	width:30%;
}
#khxx p label .khxx_input{
	margin-left:10px;
	width:60%;
	height:18px;
}
.readonly_input{
margin-left:10px;
	width:60%;
	height:18px;
	background-color:#CCCCCC;
}
#khxx p label select.khxx_input{
	height:24px;
}
#khxx div.khxx_div{
	display:block;
	width:100%;
	height:100px;
}
#khxx div.khxx_div div.htpz_title,
#khxx div.khxx_div div.htpz_content{
	display:block;
	height:92px;
	float:left;
}
#khxx div.khxx_div div.htpz_title{
text-align:right;
	width:80px;
}
#khxx div.khxx_div div.htpz_content{
	width:90%;
	background-color:#fff;
/* 	text-align:center; */
}

#khxx div.khxx_div div.htpz_content img{
display:block;
	width:50px;
	height:46px;
	margin:20px auto;
 	filter:alpha(opacity=50);  
    -moz-opacity:0.5;  
    -khtml-opacity: 0.5;  
    opacity: 0.5;  
}
#dayin,
#subbtn,
.checkinp,
.stateinp{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}

 </style>
  <script type="text/javascript" src="../js/LodopFuncs.js"></script>
 <script type="text/javascript">
 var type="<%=request.getSession().getAttribute("type")%>";
</script>
</head>
<body>

	<div id="increasedis" class="clearfix" style="overflow-x: hidden;">
		
		
		
		<div class="mws-panel grid_8 "
			style="width: 98%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">柜台收费</span>
			</div>
			
			<div id="khxx" class="mws-panel-body" style="height:400px; padding:10px;">
				<p class="khxx_p">
				 
					<label><span>小区名称:</span><input type="text" class="readonly_input" readonly="readonly" id="xq"  /></label>
					<label><span>楼栋号:</span><input type="text" class="readonly_input" readonly="readonly"  id="ldh" /></label>
					<label><span>单元号:</span><input type="text" class="readonly_input" readonly="readonly" id="dyh"  /></label>
					<label><span>户号:</span><input type="text" class="readonly_input"  readonly="readonly" id="hh" /></label>
				</p>
				<p class="khxx_p">
				    <label><span>客户编码:</span><input type="text" class="khxx_input" id="YHBM"  /></label>
				    
					<label><span>客户卡号:</span><input type="text" class="readonly_input"  readonly="readonly" id="IDNum"  /></label>
					
					<label><span>客户名称:</span><input type="text" class="readonly_input"  readonly="readonly"  id="yhmc"/></label>
					
					<label><span>客户类型:</span><input type="text" class="readonly_input"  readonly="readonly" id="yhfl" /></label>
					
				</p>
				<p class="khxx_p">
				<label><span>入网编码:</span><input type="text" class="readonly_input"  readonly="readonly" id="RWBM" /></label>
					<label><span>联系电话:</span><input type="text" class="khxx_input" id="LXDH" /></label>
					<label>
						<span>采暖期:</span>
						<select id="CNQ" class="khxx_input">
							
							<option value="2019-2020">2019-2020</option>
							<option value="2018-2019">2018-2019</option>
						</select>
					</label>
					
					<label><span>采暖面积:</span><input id="cnmj" type="text" class="readonly_input"  readonly="readonly"  /></label>
				</p>
				<p class="khxx_p">
					<label><span>单价:</span><input id="dj" type="text" class="readonly_input"  readonly="readonly"  /></label>
					<label><span>采暖费:</span><input id="cnf" type="text" class="readonly_input"  readonly="readonly"  /></label>
					<label><span>优惠比例:</span><input id="yhbl" type="text" class="readonly_input"  readonly="readonly" /></label>
					<label><span>优惠金额:</span><input id="yhje"  type="text" class="readonly_input"  readonly="readonly" /></label>
					
				</p>
				<p class="khxx_p">
					<label><span>应收金额:</span><input id="YSJE" type="text" class="readonly_input"  readonly="readonly" value="" /></label>
					
					
					<label><span>实收金额:</span><input id="JFJE" type="text" class="khxx_input" value="" /></label>
					<label style="display:none" ><span>剩余金额:</span><input id="SYJE" type="text" class="readonly_input" readonly="readonly" value="" /></label>
					<label><span>计费方式:</span>
						<select class="khxx_input" id="JIFFS">
							<option value="面积">面积</option>
							<option value="流量">流量</option>
						</select>
					</label>
				</p>
				<p class="khxx_p">
					<label><span>开票方式:</span>
						<select class="khxx_input">
							<option value="机打收据">机打收据</option>
							<option value="手写收据">手写收据</option>
						</select>
					</label>
					<label><span>票据号码:</span><input id="PJHM" type="text" class="khxx_input" value="" /></label>
					<label style="width:40%">
						<span>收费方式:</span>
						<input type="radio" name="SFFS" value="柜台收费" checked="checked" />柜台收费
						<input type="radio" name="SFFS" value="银行代收" />银行代收
						<input type="radio" name="SFFS" value="走收" />走收
						
						<input type="radio" name="SFFS" value="物业代售" />物业代收
					</label>
					
				</p>
				<p class="khxx_p">
				<label style="width:30%">
						<span>交款方式:</span>
						<input type="radio" name="JFTJ" value="现金" checked="checked" />现金
						
						<input type="radio" name="JFTJ" value="刷卡" />刷卡
						<input type="radio" name="JFTJ" value="转账" />转账
						<input type="radio" name="JFTJ" value="微信" />微信
						<input type="radio" name="JFTJ" value="支付宝" />支付宝
					</label>
					<label><span>收款人:</span><input type="text" class="readonly_input"  readonly="readonly" id="SKZH" value="测试账户" readonly="readonly"/></label>
					<label><span>收款日期:</span><input type="date" class="readonly_input"  readonly="readonly" id="JFSJ"  readonly="readonly" /></label>
				</p>
				<p class="khxx_p" style="text-align:center">
				
						<input style="width:80px;" type="button" alt="" onclick="jf()" id="subbtn" value="确认" />	
						<input style="width:80px;" type="button" alt=""  id="dayin" onclick="dy()" value="打印" />						
				</p>
				<input id="lsdh"  type="text" style="display:none" />
			</div>
		</div>
		
	</div>

<script>
var  LODOP;
function dy() {	
	var xq=$("#xq").val();

	var ld=$("#ldh").val();
	var dy=$("#dyh").val();
	var hh=$("#hh").val();
	var lsdh=$("#lsdh").val();
	var YHBM=$("#YHBM").val();
	var mj=$("#cnmj").val();
	var JIFFS=$("#JIFFS").val();
	var JFJE=$("#JFJE").val();
	var SFFS=$("input[name='SFFS']:checked").val();
	var JFSJ=$("#JFSJ").val();
	var UserName="<%=request.getSession().getAttribute("UserName")%>"
	LODOP=getLodop(); 
	
	LODOP.SET_PRINT_PAGESIZE(1, 800,3400,"");
	LODOP.ADD_PRINT_IMAGE(340,110,250,250,"<img src='../images/cwz.gif' width=120px height=120px/>");
	LODOP.SET_PRINT_STYLE("FontSize",15);
	LODOP.ADD_PRINT_TEXT(10,80,400,45,"南乐普惠热力");
	LODOP.ADD_PRINT_TEXT(30,5,400,45,"--------------------------");
	LODOP.SET_PRINT_STYLE("FontName","隶书");
	LODOP.SET_PRINT_STYLE("FontSize",10);
	LODOP.ADD_PRINT_TEXT(65,110,180,45,"缴费小票");
	LODOP.ADD_PRINT_TEXT(90,5,400,45,"-------------------------------------");
	LODOP.ADD_PRINT_TEXT(115,10,300,25,"流水单号:  "+lsdh);
	LODOP.ADD_PRINT_TEXT(140,10,300,25,"用户编码:  "+YHBM);
	LODOP.ADD_PRINT_TEXT(165,10,300,25,"小区    :  "+xq);
	LODOP.ADD_PRINT_TEXT(190,10,300,25,"楼栋    :  "+ld+"   单元："+dy+"   户号："+hh);
	LODOP.ADD_PRINT_TEXT(215,10,300,25,"住户面积:  "+mj+"㎡");
	LODOP.ADD_PRINT_TEXT(240,10,300,25,"计费方式:  "+JIFFS+"收费");
	LODOP.ADD_PRINT_TEXT(265,10,400,25,"缴费金额:  "+JFJE+"元     ");
	LODOP.ADD_PRINT_TEXT(290,10,400,25,"缴费日期:  "+JFSJ);
	LODOP.ADD_PRINT_TEXT(315,10,400,25,"缴费方式:  "+SFFS);
	LODOP.ADD_PRINT_TEXT(340,10,400,25,"收费员  :  "+UserName);
	LODOP.SET_PRINT_STYLE("FontSize",7);
	LODOP.ADD_PRINT_TEXT(450,90,400,25,"*本票据仅作为收费证明，不作为收据使用");
	
	
	LODOP.ADD_PRINT_IMAGE(960,110,250,250,"<img src='../images/cwz.gif'  width=120px height=120px/>");
	LODOP.SET_PRINT_STYLE("FontSize",15);
	LODOP.ADD_PRINT_TEXT(630,80,400,45,"南乐普惠热力");
	LODOP.ADD_PRINT_TEXT(660,5,400,45,"--------------------------");
	LODOP.SET_PRINT_STYLE("FontName","隶书");
	LODOP.SET_PRINT_STYLE("FontSize",10);
	LODOP.ADD_PRINT_TEXT(685,110,180,45,"缴费小票");
	LODOP.ADD_PRINT_TEXT(710,5,400,45,"-------------------------------------");
	LODOP.ADD_PRINT_TEXT(735,10,300,25,"流水单号:  "+lsdh);
	LODOP.ADD_PRINT_TEXT(760,10,300,25,"用户编码:  "+YHBM);
	LODOP.ADD_PRINT_TEXT(785,10,300,25,"小区    :  "+xq);
	LODOP.ADD_PRINT_TEXT(810,10,300,25,"楼栋    :  "+ld+"   单元："+dy+"   户号："+hh);
	LODOP.ADD_PRINT_TEXT(835,10,300,25,"住户面积:  "+mj+"㎡");
	LODOP.ADD_PRINT_TEXT(860,10,300,25,"计费方式:  "+JIFFS+"收费");
	LODOP.ADD_PRINT_TEXT(885,10,400,25,"缴费金额:  "+JFJE+"元     ");
	LODOP.ADD_PRINT_TEXT(910,10,400,25,"缴费日期:  "+JFSJ);
	LODOP.ADD_PRINT_TEXT(935,10,400,25,"缴费方式:  "+SFFS);
	LODOP.ADD_PRINT_TEXT(960,10,400,25,"收费员  :  "+UserName);
	LODOP.SET_PRINT_STYLE("FontSize",12);
	LODOP.ADD_PRINT_TEXT(1020,10,400,25,"客户签字 :____________");
	LODOP.SET_PRINT_STYLE("FontSize",7);
	LODOP.ADD_PRINT_TEXT(1070,90,400,25,"*本票据仅作为收费证明，不作为收据使用");
	
	
	
	
	
	      
	LODOP.PREVIEW();	       
};
$(document).ready(function(){
	
	
	var date = new Date();
	$("#JFSJ").val(date.format('yyyy-MM-dd'));
	function getTIME(){
		var newtime = new Date();
		var y = newtime.getFullYear();
		var m = newtime.getMonth()+1;
		var d = newtime.getDate();
		if(m<10){
			m = "0"+m;
		}
		if(d<10){
			d = "0"+m;
		}
		return y+'-'+m+'-'+d;
	}
	
})
</script>
<script type="text/javascript">
function jt(){
	  alert("您没有权限!")
}
</script>
</body>

</html>