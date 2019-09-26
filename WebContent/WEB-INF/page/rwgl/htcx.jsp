<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
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

 
 <style>
 *{
	margin:0;
	padding:0;
}
html,body{
	height:100%;
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


	/* 新增修改弹出框关闭按钮 */

	 .close{
		display:block;
		background-color:rgb(193,213,43);
		width:24px;
		height:24px;
		color: #fff;
    	border-radius: 13px;
		position:absolute;
		top:10px;
		right:30px; 
		line-height: 24px;
   		text-align: center;
   		font-size: 18px;
	}
	
	.close::before {
	    content: "\2716";
	}

#khxx p{
	display:block;
	width:100%;
	height:40px;
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

#subbtn{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
 </style>
 

</head>
<body>

	<div id="increasedis" class="clearfix" style="overflow-x: hidden;">
		
		<div class="mws-report-container clearfix">
			
			<p class="mws-report" href="#" style="font-size: 14px;min-width:800px;height:90px;">
				<span class="mws-report-icon mws-ic ic-building"></span> 
				<span class="mws-report-content" style="margin-top: 10px;"> 
				<span>选择公司：
     				<select id="ssgs" style="width:150px" name="ssgs">
    				 </select>
    				 </span>
				<span class="mws-report-title"> 选择小区 :
					<select id="xq" name="xqName">
						<option>--选择小区名称--</option>
					</select> &nbsp;&nbsp;&nbsp; 楼栋号:
					<select name="buildNo" id="ldh">
						<option value=0>--选择楼栋号--</option>
					</select> &nbsp;&nbsp;&nbsp; 单元号:
					<select name="cellNo" id="dyh">
						<option value=0>--选择单元号--</option>
					</select> &nbsp;&nbsp;&nbsp; 户号:
					<select name="hhNo" id="hh">
						<option value=0>--选择单元号--</option>
					</select>
				</span>
				</span>
	
				<span class="mws-report-title" style="margin-left:10px;"> 入网编码:
					<input type="text" id="rwbm"  />
					 &nbsp;&nbsp;&nbsp; 
					<input type="submit" class="mws-button black" id="search_btn" value="搜索" />
				</span>
			</p>
			
		</div>
	
		
		<div class="mws-panel grid_8 "
			style="width: 98%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">新增入网客户</span>
			</div>
			
			<div id="xincreate_table_body" class="mws-panel-body"
				style="overflow:scroll !important; height: 600px;">
				<table class="mws-table">
					<thead>
						<tr>
							<!-- <th class="table-th-css">操作人<span class="span-up"></span> <span class="span-down"></span></th> -->
							<th>小区名称</th>
							<th>楼号</th>
							<th>单元号</th>
							<th>户号</th>
							<th>客户名称</th>
							<th>客户编码</th>
							<th>入网编码</th>
							<th>联系方式</th>
							<th>用户类别</th>
							<th>所属换热站</th>
							<th>采暖设施</th>
							<th>建筑面积</th>
							<th>合同</th>
					</thead>
					<tbody id="xinword_body">
						
				
					</tbody>
				</table>
			</div>
		</div>
		
		<div class="htdiv" style="display:none;position:absolute;top:0px;left:0px;width:100%;height:100%;background-color:rgba(0,0,0,0.5);">
			<img style="display:block;margin:10px auto;position:relative;" src="../images/background/xyi.png" /> <span class="close"></span>
		</div>
		
		
	</div>

	<script>
	$(document).ready(function(){
		
		var xinList = [
			["金领小区","1号楼","1单元","101","董新召","123456001","987654001",13548639715,"民用住宅","金领小区换热站","地暖","63.4"],
			["金领小区","1号楼","1单元","102","王丽丽","123456002","987654002",17246823541,"民用住宅","金领小区换热站","地暖","48.7"],
			["金领小区","1号楼","1单元","302","苗琳","123456003","987654003",18236417589,"民用住宅","金领小区换热站","地暖","97.8"],
			["金领小区","1号楼","2单元","204","崔静静","123456004","987654004",13951063841,"民用住宅","金领小区换热站","地暖","132"],
			["金领小区","2号楼","1单元","101","南丽丹","123456005","987654005",18036481297,"民用住宅","金领小区换热站","地暖","63.4"],
			["金领小区","2号楼","1单元","402","田雪","123456006","987654006",12681023649,"民用住宅","金领小区换热站","地暖","63.4"],
			["天鹅堡","1号楼","1单元","101","刘雪琴","123456007","987654007",13548639715,"民用住宅","天鹅堡换热站","地暖","132"],
			["天鹅堡","1号楼","1单元","102","秦蕊","123456008","987654008",17246823541,"民用住宅","天鹅堡换热站","地暖","63.4"],
			["天鹅堡","1号楼","1单元","302","高燕","123456009","987654009",18236417589,"民用住宅","天鹅堡换热站","地暖","63.4"],
			["天鹅堡","1号楼","2单元","204","黄棒棒","123456010","987654010",13951063841,"民用住宅","天鹅堡换热站","地暖","63.4"],
			["天鹅堡","2号楼","1单元","101","候碎琴","123456011","987654011",18036481297,"民用住宅","天鹅堡换热站","地暖","132"],
			["天鹅堡","2号楼","1单元","402","高松","123456012","987654012",12681023649,"民用住宅","天鹅堡换热站","地暖","63.4"],
			["上村花苑","1号楼","1单元","101","孙江平","123456013","987654013",13548639715,"民用住宅","上村花苑换热站","地暖","48.7"],
			["上村花苑","1号楼","1单元","102","崔志强","123456014","987654014",17246823541,"民用住宅","上村花苑换热站","地暖","97.8"],
			["上村花苑","1号楼","1单元","302","付乾坤","123456015","987654015",18236417589,"民用住宅","上村花苑换热站","地暖","63.4"],
			["上村花苑","1号楼","2单元","204","王丽霞","123456016","987654016",13951063841,"民用住宅","上村花苑换热站","地暖","48.7"],
			["上村花苑","2号楼","1单元","101","傅焕","123456017","987654017",18036481297,"民用住宅","上村花苑换热站","地暖","97.8"],
			["上村花苑","2号楼","1单元","402","崔继斌","123456018","987654018",12681023649,"民用住宅","上村花苑换热站","地暖","48.7"],
		];
		
		var html = "";
		for(var i = 0; i < xinList.length; i++) {
				if(i%2 == 1){
					html += "<tr class='gradeX odd'>";
				}else if(i%2 == 0){
					html += "<tr class='gradeX even'>";
				}

				for (var j = 0 ; j < xinList[i].length; j ++) {
					
	              html += "<td>" + xinList[i][j] + "</td>"
				}
				 html += "<td><a class='hta' alt='i'>合同查询</a></td>"
		}
		xinword_body.innerHTML = html;

		//小区
		var xqb = [];
		for(var y = 0;y < xinList.length; y ++){
			if(xqb.indexOf(xinList[y][0]) == -1){
				xqb.push(xinList[y][0]);
			}
		}
		for(var i = 0; i < xqb.length; i++) {
			$("#xq").append("<option>"+xqb[i]+"</option>");
		}
		
		// 小区楼栋选择
		$("#xq").change(function(){
			ldselect(xinList);
		});
		$("#ldh").change(function(){
			dyselect(xinList);
		});
		$("#dyh").change(function(){
			hhselect(xinList);
		});
		$("#hh").click(function(){
			var xq = $('#xq  option:selected').val();
			if(xq == ""){
				alert("请先选择小区名称");
			}
		});
		$("#dyh").click(function(){
			var xq = $('#xq  option:selected').val();
			var ld = $('#ldh  option:selected').val();
			if(xq == ""){
				alert("请先选择小区名称");
				return;
			}
			if(ld == ""){
				alert("请先选择楼栋号");
			}
		});
		
		// 工单搜索
		$("#search_btn").click(function(){
			var rwbh = $("#rwbm").val();
			if(rwbh == ""){
					
				var xq = $('#xq').val();
				var ld = $('#ldh').val();
				var dy = $('#dyh').val();
				var hh = $('#hh').val();
				for(var i = 0 ; i < xinList.length ; i ++){
					 if( xq == xinList[i][0] && ld == xinList[i][1] && dy == xinList[i][2] && hh == xinList[i][3]){
						var inp = $(".khxx_input");
						for(var j = 0;j < inp.length; j ++){
							if(j == 18){
								inp[j].value = xinList[i][j] + "m³";
							}else if(j == 19){
								inp[j].value = xinList[i][j] + "m";
							}else{
								inp[j].value = xinList[i][j];
							}
						}
					
					 }
				 }
			}else{
				for(var x = 0 ; x < xinList.length ; x ++){
					if(rwbh == xinList[x][6]){
						var inp = $(".khxx_input");
						for(var j = 0;j < inp.length; j ++){
							inp[j].value = xinList[x][j];
						}
					}
				}
			}
		});
		
		
//		查看
		
		$(".hta").click(function(){
			$(".htdiv").show();
		});
		
		$(".close").click(function(){
			$(".htdiv").hide();
		});
		
	})



	//楼栋选择
	function ldselect(xinwordList){
		 // 获取被选中的option标签
		 var xq = $('#xq  option:selected').val();
		 $("#ldh").html("<option value='' disabled selected hidden>--选择楼栋号--</option>");
		 $("#dyh").html("<option value='' disabled selected hidden>--选择单元号--</option>");
		 $("hh").html("<option value='' disabled selected hidden>--选择户号--</option>");

		 var opt = [];
		 for(var i = 0 ; i < xinwordList.length ; i ++){
			 if( xq == xinwordList[i][0] && opt.indexOf(xinwordList[i][1]) == -1){
					opt.push(xinwordList[i][1]);
			 }
		 }
		
		 for(var j = 0; j < opt.length; j++) {
				$("#ldh").append("<option value="+opt[j]+">"+opt[j]+"</option>");
		}
		 
		 
	}


	function dyselect(xinwordList){
		 // 获取被选中的option标签
		 var xq = $('#xq  option:selected').val();
		 var ld = $('#ldh  option:selected').val();
		 $("#dyh").html("<option value='' disabled selected hidden>--选择单元号--</option>");
		 var opt = [];
		 for(var i = 0 ; i < xinwordList.length ; i ++){
			 if( xq == xinwordList[i][0] && ld == xinwordList[i][1] && opt.indexOf(xinwordList[i][2]) == -1){
					opt.push(xinwordList[i][2]);
			 }
		 }
		 for(var j = 0; j < opt.length; j++) {
				$("#dyh").append("<option>"+opt[j]+"</option>");
		}
		 
	}

	function hhselect(xinwordList){

		 // 获取被选中的option标签
		 var xq = $('#xq  option:selected').val();
		 var ld = $('#ldh  option:selected').val();
		 var dy = $('#dyh  option:selected').val();
		 $("#hh").html("<option value='' disabled selected hidden>--选择户号--</option>");
		 var hharr = [];
		 for(var i = 0 ; i < xinwordList.length ; i ++){
			 if( xq == xinwordList[i][0] && ld == xinwordList[i][1] && dy == xinwordList[i][2] && hharr.indexOf(xinwordList[i][3]) == -1){
				 hharr.push(xinwordList[i][3]);
			 }
		 }
		 for(var j = 0; j < hharr.length; j++) {
				$("#hh").append("<option>"+hharr[j]+"</option>");
		}
		 
	}

	
	</script>
<script type="text/javascript">
var ssgs="<%=request.getSession().getAttribute("gs")%>";
var strs= new Array(); //定义一数组 
  strs=ssgs.split(","); //字符分割 
for (i=0;i<strs.length ;i++ ) 
{ 
 var s=strs[i];
 
  $("#ssgs").append("<option value='"+s+"'>"+s+"</option>");

} 
</script>
</body>

</html>