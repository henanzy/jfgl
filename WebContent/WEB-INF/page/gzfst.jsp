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
<script type="text/javascript" src="../js/gzfst.js"></script>

 
 <style>
 select{
		height:24px;
		line-height:24px;
		border-radius:4px;
		background-color:rgba(43,45,49,0.8);
		color:#c5d52b;
		cursor:pointer;
		text-align:center;
		padding:0 4px;
		list-style-type:none;
	}
 *{
	margin:0;
	padding:0;
}
.bg{

background-size:contain;

background:url('../images/green.jpg') no-repeat ;

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
#delbtn{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
.tablediv{
	width:100%;
}
table{
	border:1px solid #333;
	 /* border-collapse: collapse; */
	 width:100%;
	 
}
table th{
	 text-align:center;
	border:1px solid #333;
}
		tr{  
  
  white-space: nowrap;
} 
table td{
	border:1px solid #333;
	height:30px;
	line-height:30px;
	 text-align:center;
	 padding:6px;
	
} 
/* table tr{border-top:1px solid #333;
} */

.cell_div table{
	float:left;
	margin-left:10px;
	width:19%;
}
.cellone .cellone-head{
	height:30px;
	background-color:rgb(224,234,245)
}
.cellone .cellone-body{
	height:50px;
}
.body-hh{
border:1px;
	font-weight:bold;
	float:left;
}
.body-mj{
width:51px;
	float:right;
}
.body-lb{
	float:right;
	margin-top:10px;
}
.warning{
	background-color:rgb(255,150,150)
}

.normal{
	background-color:rgb(185,210,241)
}

 </style>
 

</head>
<body style="overflow:scroll;">

	<div id="increasedis" class="clearfix" style="width:1700px">
		
		
		
		<div class="mws-panel grid_8 " 
			style=" overflow:scroll; padding-left: 12px; margin: 0px 0px 30px 0px;">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">稽查管理 &nbsp;&nbsp; 选择小区：
						<select id="xq" style="width:150px"
						name="xqName">
						
					</select>楼栋号：
						<select name="ldh" id="ldh" style="width:70px">
							<option value="" >楼栋</option>
					</select>&nbsp;&nbsp; 
					<input type="submit" class="mws-button black" id="search_btn" value="搜索" />
					<input type="submit" class="mws-button black" id="dayin" value="打印" />
					</span>
				
			</div>
			
			<div id="khxx"  style=" width:1600px;padding:10px;">

				
				<div  class="tablediv cell_div" id="table_body">
					
		
					
					
					
				</div>
			
				
			</div>
		</div>
		<input type="submit" class="mws-button black" id="dayin1" value="打印" />
		
		<div class="mws-panel grid_8 jcfk"
			style="width:70%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:500px;position:absolute;top:50px;left:10%;display:none;">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">稽查反馈</span>
			</div>
			<input type="text" style="display:none" id="YHBM"   />
			<div id="khxx" class="mws-panel-body" style="height:600px; padding:10px;">
				<p class="khxx_p">
					<label></label>
					<label><input type="radio" value="正常" name="JCQK" />正常</label>
					<label><input type="radio"  value="存在问题" name="JCQK"/>存在问题</label>
					<label></label>
				</p>
				<p class="khxx_p">
				<label></label>
					<label>
						<span>稽查问题:</span>
						<select  class="khxx_input" id="JCWT">
							<option value="私改暖气设备">私改暖气设备</option>
							<option value="其他">其他</option>
						</select>
					</label>
					
					<label></label>
					<label></label>
					
				</p>
				<p class="khxx_p">
				<label></label>
					<label><span>稽查日期:</span><input type="date" class="khxx_input" id="JCRQ" value=""  /></label>
					<label><span>稽查人:</span><select class="khxx_input" id="JCR">
							<option value="张婷婷">张婷婷</option>
							<option value="李璇">李璇</option>
						</select></label>
						<label></label>
				</p>
				<p class="khxx_p">
					<label></label>
					<label style="width:50%;"><span>备注：</span>
						<textarea id="JCBZ" style="width:100%;height:60px;"  class="khxx_input" rows="" cols=""></textarea>
					</label>
					<label></label>
					<label></label>
				</p>
				
				<hr style="margin-top:60px;"></hr>
				
				<!-- <p class="khxx_p">
					<label></label>
					<label id="CLJG" style="width:50%;">处理结果登记</label>
					<label></label>
				</p> -->
				<p class="khxx_p">
				<label></label>
					<label>
						<span>处理情况:</span>
						<select  id="CLQK" class="khxx_input">
							<option value="处理完成">处理完成</option>
							<option value="未完成">未完成</option>
						</select>
					</label>
					
					<label></label>
					<label></label>
					
				</p>
				<p class="khxx_p">
				<label></label>
				<label><span>处理结果:</span><select id="CLJG" class="khxx_input">
							<option value="封条">封条</option>
							<option value="其他">其他</option>
						</select></label>
					<label><span>处理日期:</span><input type="date" class="khxx_input" id="CLRQ" value=""  /></label>
					
						<label></label>
				</p>
				<p class="khxx_p">
					<label></label>
					<label style="width:50%;"><span>备注：</span>
						<textarea id="CLBZ" style="width:100%;height:60px;"  class="khxx_input" rows="" cols=""></textarea>
					</label>
					<label></label>
					<label></label>
				</p>
				<p class="khxx_p" style="text-align:center;margin-top:50px;">
					<input style="width:80px;" type="button" alt="" id="subbtn" onclick="jc()" value="确认" />
					<input style="width:80px;" type="button" alt="" id="delbtn" value="取消" />
				</p>
			</div>
		</div>
		
	</div>
<script type="text/javascript">

	
var xq;

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
					
				 if(xq[i].XqName.indexOf("公租房")>-1)
					{
					$("#xq").append("<option value='"+xq[i].XqName+"' selected	>"+xq[i].XqName+"</option>");
					}else{
						$("#xq").append("<option value='"+xq[i].XqName+"'>"+xq[i].XqName+"</option>");
					}
					
				}
		}

	});
 
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
				 if(ld[i].BuildNo=="1"){
					 $("#ldh").append("<option value='"+ld[i].BuildNo+"' selected>"+ld[i].BuildNo+"</option>");
				 }else{
				$("#ldh").append("<option value='"+ld[i].BuildNo+"'>"+ld[i].BuildNo+"</option>");
				 }
			}	
		}

	});

 </script>
<script>
$(document).ready(function(){
	
	$("#delbtn").click(function(){
		$(".jcfk").hide();
	});
	
		var time = getTIME();
		$("#jcrq").val(time);
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

</body>

</html>