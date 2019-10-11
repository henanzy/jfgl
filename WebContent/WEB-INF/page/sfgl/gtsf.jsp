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
						<input type="radio" name="SFFS" value="坐收" checked="checked" />坐收
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
						<input style="width:80px;" type="button" alt="" onclick="dy()" value="打印" />						
				</p>
				
			</div>
		</div>
		
	</div>

<script>
var  LODOP;
function dy() {	
	LODOP=getLodop(); 
	LODOP.SET_PRINT_PAGESIZE(1, 700,1000,"");
	LODOP.SET_PRINT_STYLE("FontSize",11);
	LODOP.ADD_PRINT_TEXT(10,10,100,25,"郭德强");
	LODOP.SET_PRINT_STYLEA(2,"FontName","隶书");
	LODOP.SET_PRINT_STYLEA(2,"FontSize",15);
	LODOP.ADD_PRINT_TEXT(10,10,100,25,"科学家");
	LODOP.ADD_PRINT_TEXT(10,10,100,25,"地址：中国北京社会科学院附近东大街西胡同");
	LODOP.ADD_PRINT_TEXT(10,10,100,25,"电话：010-88811888");
	      
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