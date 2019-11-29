<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String ip =request.getScheme()+ "://"+request.getServerName()+ ":" + request.getServerPort()+"/";
	          
%>

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
<link rel="stylesheet" type="text/css"
	href="../plugins/elrte/css/elrte.full.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/elfinder/css/elfinder.css" media="screen" />

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


<script type="text/javascript" src="../plugins/elrte/js/elrte.min.js"></script>
<script type="text/javascript"
	src="../plugins/elfinder/js/elfinder.min.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>

<script type="text/javascript" src="../js/demo.formelements.js"></script>
 <script type="text/javascript" src="../js/htcx.js"></script> 
 <link rel="stylesheet" type="text/css" href="../css/guojfg.css" media="screen" />
<script type="text/javascript" src="../js/release/wangEditor.js"></script>

<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<script type="text/javascript" src="../js/LodopFuncs.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />

	<link rel="stylesheet" type="text/css"
	href="../js/release/wangEditor.css" media="screen" />
<style type="text/css">
.span-up {
	border-style: solid;
	border-width: 0px 5px 5px 5px;
	border-color: transparent transparent black transparent;
	width: 0px;
	height: 0px;
	display: block;
	position: absolute;
	top: 14px;
	right: 6px;
}
input{
	border-radius:4px;
		background-color:rgba(43,45,49,0.8);
		color:#fff;
		cursor:pointer;
		text-align:center;
		padding:0 4px;
		height:25px;
	}
.ht{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
.shtg{
	border:none;
	background-color:rgb(60,61,61);
	width:40px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
#close{
	border:none;
	background-color:rgb(60,61,61);
	
	color:#fff;
	border-radius:3px;
}
.shbh{
	border:none;
	background-color:rgb(60,61,61);
	width:40px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
.span-down {
	border-style: solid;
	border-width: 5px 5px 0px 5px;
	border-color: black transparent transparent transparent;
	width: 0px;
	height: 0px;
	display: block;
	position: absolute;
	top: 20px;
	right: 6px;
}

* {
	margin: 0;
	padding: 0;
}

.table-th-css {
	position: relative !important;
	top: 0;
}

.mws-report {
	width: 98% !important;
	min-width: 170px;
	margin: 8px 1%;
	height: 70px;
	float: left;
	cursor: pointer;
	display: block;
	text-decoration: none;
	color: #323232;
	-webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
	-moz-box-sizing: border-box; /* Firefox, other Gecko */
	box-sizing: border-box; /* Opera/IE 8+ */
	background: #ffffff;
	border: 1px solid #cccccc;
	/* CSS 3 */
	-webkit-border-radius: 6px;
	-o-border-radius: 6px;
	-moz-border-radius: 6px;
	-khtml-border-radius: 6px;
	border-radius: 6px;
}

nav li, select {
	height: 24px;
	line-height: 24px;
	border-radius: 4px;
	background-color: rgba(43, 45, 49, 0.8);
	color: #fff;
	cursor: pointer;
	text-align: center;
	padding: 0 4px;
	list-style-type: none;
}

th, td {
	white-space: nowrap;
}
</style>

<script>
    $(document).ready(function(){
		var shebtableCont = $('#sheb_table_body table tr th'); //获取th
		var shebtableScroll = $('#sheb_table_body'); //获取滚动条同级
		shebtableScroll.on('scroll', scrollHandlesheb);
		
		function scrollHandlesheb() {
			var scrollTop = shebtableScroll.scrollTop();
			// 当滚动距离大于0时设置top及相应的样式
			if (scrollTop > 0) {
				shebtableCont.css({
					"top" : scrollTop + 'px',
					"marginTop" : "-1px",
					"backgroundColor" : "#EBEBEB"
				})
			} else { // 当滚动距离小于0时设置top及相应的样式 
				shebtableCont.css({
					"top" : scrollTop + 'px',
					"marginTop" : "0",
					"backgroundColor" : "#EBEBEB"
				})
			}
		}
		

	    
    }); 
</script>
<body>
	<div id="" class="clearfix">

		<div class="mws-report-container clearfix">

			<p class="mws-report" href="#" style="font-size: 14px;">
				<span class="mws-report-icon mws-ic ic-building"></span> <span
					class="mws-report-content" style="margin-top: 5px;"> <span>选择小区：
						<select id="xq" style="width: 150px" name="xqName">
                         
					</select>
				</span> <span>楼栋号： <select name="ldh" id="ldh" style="width: 70px">
							<option value="">楼栋</option>
					</select>
				</span> <span>单元号： <select name="dyh" id="dyh" style="width: 70px">
							<option value="">单元</option>
					</select>
				</span> 
				
				户号：<input type="text" name="hh" id="hh" size=6px value="" />
				
				<input type="date" id="startTime"  style="width:140px" value="" />-
                <input type="date" id="endTime" style="width:140px" value="" />		
				 <input type="submit" id="search_btn"
					 value="查询" />
				</span>




			</p>
		</div>


		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">数据显示</span>
			</div>


			<div id="sheb_table_body" class="mws-panel-body"
				style="width: 99.5%; height: 580px; overflow: auto;">

				<table class="mws-table">
					<thead>
						<tr>
						    <th>查看合同</th>
							<th>审核</th>
							<th>审核状态</th>
							<th>卡号</th>
							<th>小区名称</th>
							<th>楼栋</th>
							<th>单元</th>
							<th>户号</th>
							
							<th>用户名</th>
							
							<th>用户编码</th>
							<th>入网编码</th>
							<th>入网日期</th>
							<th>是否入住</th>
							<th>是否低保</th>
							<th>采暖设施</th>
							<th>建筑名称</th>
							
							<th>建筑层高</th>
							<th>入网单价</th>
							<th>入网费用</th>
							<th>合同起始</th>
							<th>合同结束</th>
							
						</tr>
					</thead>
					<tbody id="sheb_body">

					</tbody>
				</table>
			</div>
		</div>


		<nav style="width:100%;">
		<ul
			style="width: 550px; display: flex; justify-content: space-between; margin: 0 auto;">

			<li id="first">首页</li>
			<li id="last">上一页</li>
			<li id="next">下一页</li>
			<li id="end">尾页</li>
			<li id="curpage">当前第<span id="currentNum"></span>页 /共<span
				id='pages'></span>页
			</li>
			<li>共<span id="num"></span></li>

			<select name="" id="select">
				<option value="10">10</option>
				<option value="15" selected="selected">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
			</select>

		</ul>
		</nav>

	</div>
	<div class="na_crea" style="min-width:1000px;overflow-x: hidden;">
			<div class="na_crea_body">
				<span class="close" id="close1"></span>
				<h5> <input style="width:80px;"  type="button" id="htpz"  value="合同拍照" /></h5>
				<br>
				<form action="addZsk.action"  method="post">
					
					<div id="E" style="height:600px"></div>
					
					<textarea name="contents" id="ueditorContent" style="width:100%; height:200px;display:none" ></textarea>
					<input class="na_modify_input"  readonly="readonly" type="hidden" id="htid" value="" />
					
		            <p style="text-align:center"><input  type="button" id="close" value="确认" /></p>
				
				</form>
			</div>
	</div>      
	<div class="wz_look" style="min-width:1000px;overflow-x: hidden;">
			<div class="wz_look_body">
				<span class="close"></span>
					
				<div style=" overflow-y:auto; overflow-x:auto; " class="wz_look_content" readonly="readonly"></div>
					
	</div>
</div>
</body>
<script type="text/javascript">

var  LODOP;

function dy() {	
	var xq=$("#XqName").val();

	var ld=$("#BuildNO").val();
	var dy=$("#CellNO").val();
	var hh=$("#HouseNO").val();
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
var ip="<%=ip%>"
	
	var xq;
var UserName="<%=request.getSession().getAttribute("UserName")%>"
if(UserName=="zdsy"){
	 $("#xq").append("<option value='正大盛苑'>正大盛苑</option>");
}else{
 $.ajax({
		url : "<%=basePath%>yhInfo/findXq.action", 
		async : false,
		dataType : "json",
		data : {
			
		},
		success : function(data) {
			
			var opt="";
			 xq=data.Xq;
			
			 for(var i=0; i<xq.length; i++){
					
				 $("#xq").append("<option value='"+xq[i].XqName+"'>"+xq[i].XqName+"</option>");
				}
		}

	});
}
 
 $("#xq").change(function(){
	 $.ajax({
			url : "<%=basePath%>yhInfo/findLd.action", 
			async : false,
			dataType : "json",
			data : {
				"xqm" : $("#xq").val(),
			},
			success : function(data) {
				$("#ldh option:gt(0)").remove();
				$("#dyh option:gt(0)").remove();
				$("#hh option:gt(0)").remove();
				var ld=data.Ld;
				for(var i=0; i<ld.length; i++){
					
					$("#ldh").append("<option value='"+ld[i].BuildNo+"'>"+ld[i].BuildNo+"</option>");
				}	
			}

		});
		
		
	});
 
 $("#ldh").change(function(){
	 $.ajax({
			url : "<%=basePath%>yhInfo/findDy.action", 
			async : false,
			dataType : "json",
			data : {
				"xqm" : $("#xq").val(),
				"ldh" : $("#ldh").val(),
			},
			success : function(data) {
				$("#dyh option:gt(0)").remove();
				$("#hh option:gt(0)").remove();
				var dy=data.Dy;
				for(var i=0; i<dy.length; i++){
					
					$("#dyh").append("<option value='"+dy[i].CellNo+"'>"+dy[i].CellNo+"</option>");
				}	
			}

		});
		
		
	});

 </script>
</html>