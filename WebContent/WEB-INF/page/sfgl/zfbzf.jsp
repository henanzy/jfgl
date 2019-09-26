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
<!-- <script type="text/javascript" src="../js/rwgl/rwdj.js"></script> -->

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
	
				<span class="mws-report-title" style="margin-left:10px;"> 客户编码:
					<input type="text" id="khbh"  />
					 &nbsp;&nbsp;&nbsp; 
					<input type="submit" class="mws-button black" id="search_btn" value="搜索" />
				</span>
				</span>
			</p>
			
		</div>
		
		
		
		<div class="mws-panel grid_8 "
			style="width: 98%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">支付宝支付信息</span>
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
							<th>应交金额</th>
							<th>实收金额</th>
							<th>流水单号</th>
							<th>缴费时间</th>
							<th>缴费方式</th>
					</thead>
					<tbody id="xinword_body">
						
				
					</tbody>
				</table>
			</div>
		</div>
		
	

	
	</div>
	<script>
	$(document).ready(function(){
		
		var xinList = [
			["金领小区","1号楼","1单元","101","董新召","123456001","987654001",1264.5,2000,2341001,"2018-12-16","支付宝支付"],
			["金领小区","1号楼","1单元","102","王丽丽","123456002","987654002",2513.2,2000,2341002,"2018-12-07","支付宝支付"],
			["金领小区","1号楼","1单元","302","苗琳","123456003","987654003",1654.2,2000,2341003,"2018-12-28","支付宝支付"],
			["金领小区","1号楼","2单元","204","崔静静","123456004","987654004",1368.2,2000,2341004,"2018-11-27","支付宝支付"],
			["金领小区","2号楼","1单元","101","南丽丹","123456005","987654005",2634.1,2000,2341005,"2018-11-02","支付宝支付"],
			["金领小区","2号楼","1单元","402","田雪","123456006","987654006",1654.2,2000,2341006,"2019-05-18","支付宝支付"],
			["天鹅堡","1号楼","1单元","101","刘雪琴","123456007","987654007",2513.2,2000,2341007,"2019-05-14","支付宝支付"],
			["天鹅堡","1号楼","1单元","102","秦蕊","123456008","987654008",1264.5,2000,2341008,"2019-05-28","支付宝支付"],
			["天鹅堡","1号楼","1单元","302","高燕","123456009","987654009",1264.5,2000,2341009,"2019-12-16","支付宝支付"],
			["天鹅堡","1号楼","2单元","204","黄棒棒","123456010","987654010",2513.2,2000,2341010,"2019-05-14","支付宝支付"],
			["天鹅堡","2号楼","1单元","101","候碎琴","123456011","987654011",1654.2,2000,2341011,"2018-11-02","支付宝支付"],
			["天鹅堡","2号楼","1单元","402","高松","123456012","987654012",2513.2,2000,2341012,"2018-12-07","支付宝支付"],
			["上村花苑","1号楼","1单元","101","孙江平","123456013","987654013",1654.2,2000,2341013,"2019-05-14","支付宝支付"],
			["上村花苑","1号楼","1单元","102","崔志强","123456014","987654014",1368.2,2000,2341014,"2018-12-16","支付宝支付"],
			["上村花苑","1号楼","1单元","302","付乾坤","123456015","987654015",2513.2,2000,2341015,"2018-12-16","支付宝支付"],
			["上村花苑","1号楼","2单元","204","王丽霞","123456016","987654016",1264.5,2000,2341016,"2018-11-02","支付宝支付"],
			["上村花苑","2号楼","1单元","101","傅焕","123456017","987654017",2513.2,2000,2341017,"2019-05-14","支付宝支付"],
			["上村花苑","2号楼","1单元","402","崔继斌","123456018","987654018",1368.2,2000,2341018,"2018-12-07","支付宝支付"],
		];
		
		var html = "";
		for(var i = 0; i < xinList.length; i++) {
				if(i%2 == 1){
					html += "<tr class='gradeX odd'>";
				}else if(i%2 == 0){
					html += "<tr class='gradeX even'>";
				}

				for (var j = 0 ; j <xinList[i].length; j ++) {
					
	              html += "<td>" + xinList[i][j] + "</td>"
				}
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
			var khbh = $("#khbh").val();
			if(khbh == ""){
				
				var xq = $('#xq').val();
				var ld = $('#ldh').val();
				var dy = $('#dyh').val();
				var hh = $('#hh').val();
				if(xq == ""){
					alert("请选择条件")
					return;
				}
				var compareWordList = [];
				for(var j = 0;j < xinList.length;j ++){
					compareWord(xq,ld,dy,hh,xinList,j,compareWordList);
				};
				
				$("#xinword_body").empty();
			
				var html = "";
				for(var i = 0; i < compareWordList.length; i++) {
						if(i%2 == 1){
							html += "<tr class='gradeX odd'>";
						}else if(i%2 == 0){
							html += "<tr class='gradeX even'>";
						}
						for (var j = 0 ; j <compareWordList[i].length; j ++) {
							
			              html += "<td>" + compareWordList[i][j] + "</td>"
						}
				}
				xinword_body.innerHTML = html;
			}else{
				for(var x = 0 ; x < xinList.length ; x ++){
					if(khbh == xinList[x][5]){
						var inp = $(".khxx_input");
						var html = "";
						for (var j = 0 ; j <xinList[x].length; j ++) {
			              html += "<td>" + xinList[x][j] + "</td>"
						}
						xinword_body.innerHTML = html;
					}
				}
			}
		});
		
	})



	//楼栋选择
	function ldselect(xinwordList){
		 // 获取被选中的option标签
		 var xq = $('#xq  option:selected').val();
		 $("#ldh").html("<option value='' disabled selected hidden>--选择楼栋号--</option>");
		 $("#dyh").html("<option value='' disabled selected hidden>--选择单元号--</option>");
		 $("#hh").html("<option value='' disabled selected hidden>--选择户号--</option>");

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
	
	

	function compareWord(xq,ld,dy,hh,wordList,j,compareWordList){

		if(xq==""){
			if(hh != ""){
				if(wordList[j][3] == hh){
					compareWordList.push(wordList[j]);
				}
				return;
			}
			compareWordList.push(wordList[j]);
		}
		if(xq != "" && ld == ""){
			if(hh != ""){
				if(wordList[j][0] == xq && wordList[j][3] == hh){
					compareWordList.push(wordList[j]);
				}
				return;
			}else{
				if(wordList[j][0] == xq){
					compareWordList.push(wordList[j]);
				}
			}
		}
		if(xq != "" && ld != "" && dy == "" ){
			if(hh != ""){
				if(wordList[j][0] == xq && wordList[j][1] == ld && wordList[j][3] == hh){
					compareWordList.push(wordList[j]);
				}
				return;
			}else{
				if(wordList[j][0] == xq && wordList[j][1] == ld){
				
					compareWordList.push(wordList[j]);
				}
			}
		}
		if(xq != "" && ld != "" && dy != "" && hh == "" ){
			if(wordList[j][0] == xq && wordList[j][1] == ld && wordList[j][2] == dy){
				
				compareWordList.push(wordList[j]);
			}
		}
		if(xq != "" && ld != "" && dy != "" && hh != "" ){
			if(wordList[j][0] == xq && wordList[j][1] == ld && wordList[j][2] == dy && wordList[j][3] == hh){
			
				compareWordList.push(wordList[j]);
			}
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