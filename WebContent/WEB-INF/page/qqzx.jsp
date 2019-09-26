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
<!-- <script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" /> -->

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
<!-- <script type="text/javascript" src="../js/rwgl/rwsh.js"></script> -->

 
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

	/* 搜索DIV */
	.search{
		display:block;
		width:99.8%;
		height:40px;
		background-color:#ccc;
		margin:0px auto;
		font-size:12px;
	}
	
	.search p{
		height:40px;
		text-align:center;
	}
	
	
	.search p a{
		display:inline-block;
		width:150px;
		height:40px;
		text-decoration:none;
		line-height:40px;
		color:#333;
		font-size:14px;
		font-weight:bold;
	}
	
	.search p a.dxqf span{
		display:inline-block;
		width:14px;
		height:14px;
		background:url(../images/background/message.png) no-repeat left;
		background-size:14px 14px;
		margin:0 4px;
	}
	
	.search p a.dy span{
		display:inline-block;
		width:15px;
		height:14px;
		background:url(../images/background/print.png) no-repeat left;
		background-size:15px 14px;
		margin:0 4px;
	}


#subbtn,
#delbtn,
#tzddelbtn{
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

.qqfw{
	width:60%;
	margin:10px auto;
	text-align:center;
}
.qqfw span{
	display:inline-block;
	width:30%;
	font-size:14px;
}

.allnd{
	display:block;
}

.onend{
	display:none;
}

table{
	border:1px solid #333;
	 border-collapse: collapse;
	 width:100%;
	 
}
table th{
	 text-align:center;
}
table td{
	border-left:1px solid #333;
	height:30px;
	line-height:30px;
	 text-align:center;
	 padding:6px;
} 
table tr{border-top:1px solid #333;
}

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
	font-weight:bold;
	float:left;
}
.body-mj{
	float:right;
}
.body-lb{
	float:right;
	margin-top:30px;
}
.body-checked{
display:none;
	width:20px;
	height:20px;
	background:url(../images/background/checked.png) no-repeat right;
	background-size:20px 20px;
	position:absolute;
	bottom:10px;
	right:10px;
}

.warning{
	position:relative;
	background-color:rgb(255,150,150)
}

.normal{
	position:relative;
	background-color:rgb(185,210,241)
}

 </style>
 

</head>
<body>

	<div id="increasedis" class="clearfix" style="overflow-x: hidden;">
		
		<div class="mws-panel grid_8 "
			style="width: 98%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:1000px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">清欠中心</span>
			</div>
			<div class="search">
				<p>
					<a href="javascript:;" class="dxqf"><span></span>催缴短信群发</a>
					<a href="javascript:;" class="dy"><span></span>打印催缴单</a>
					
				</p>
			</div>
			<div id="khxx" class="mws-panel-body" style="height:640px; padding:10px;">
			 
				<div class="tablediv">
					
					<div class="qqfw"><span>清欠范围</span><span><input type="radio" name="range" value="全部年度" checked="checked" />【全部年度】</span><span><input type="radio" name="range" value="当前年度"  />【当前年度】</span></div>
				
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody>
							<tr>
								<td rowspan="2" style="line-height:60px">用热状态</td>
								<td>总户数</td>
								<td>正常</td>
								<td>报停</td>
								<td>强停</td>
								<td>未供</td>
								<td rowspan="2" style="line-height:60px">欠费状态</td>
								<td>欠费</td>
								<td>不欠费</td>
								<td>未生成年度暖费</td>
							</tr>
							<tr style="color:red;">
								<td>60</td>
								<td>59</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>50</td>
								<td>10</td>
								<td>0</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<!-- 全部年度 -->
				<div class="tablediv cell_div allnd">
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">1单元</td></tr>
							<tr class="cellone-body">
								<td id="jcfkclick" class="warning">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">2单元</td></tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="normal">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="normal">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">3单元</td></tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="normal">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">4单元</td></tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">5单元</td></tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
								<td class="warning">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
								</td>
							</tr>
						</tbody>
					</table>
					
				</div>
				
				
				<!-- 当前年度 -->
				<div class="tablediv cell_div onend">
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">1单元</td></tr>
							<tr class="cellone-body">
								<td id="jcfkclick" class="normal">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">2单元</td></tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">3单元</td></tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="warning">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">4单元</td></tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="warning">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="warning">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="warning">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table border="1" cellspacing="0" cellpadding="0">
						<thead></thead>
						<tbody class="cellone">
							<tr class="cellone-head"><td colspan="2">5单元</td></tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">601</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">602</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">501</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">502</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">401</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">402</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">301</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">302</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="warning">
									<div class="body-hh">201</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">202</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
							<tr class="cellone-body">
								<td class="normal">
									<div class="body-hh">101</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
								<td class="normal">
									<div class="body-hh">102</div>
									<div class="body-mj">127.6</div>
									<div class="body-lb">居民</div>
									<div class="body-checked"></div>
								</td>
							</tr>
						</tbody>
					</table>
					
				</div>
			
				
			</div>
		</div>
		
		<!-- 短信催缴 -->
		<div class="mws-panel grid_8 cjdx"
			style="width:500px;; padding-left: 12px; margin: 0px 0px 30px 0px;position:absolute;top:70px;left:30%;display:none;">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">催缴短信群发</span>
			</div>
			
			<div id="khxx" class="mws-panel-body" style="height:340px; padding:10px;">
				<p class="khxx_p" style="width:480px;text-align:center">
					<label style="width:480px;">
						<span style="display:inline-block;width:70px;position:relative;top:-50px;">短信内容：</span>
						<textarea style="display:inline-block;width:380px;height:100px;resize:none;"  class="khxx_input" rows="" cols="">
							【客户名称】尊敬的客户：截止目前，您累计欠费采暖费为【欠费总额】，请您及时缴费。
						</textarea>
					</label>
				</p>
				<p class="khxx_p" style="width:480px;">
					<label style="width:480px;">
						<span style="display:inline-block;width:70px;"></span>
						<input   class="khxx_input" type="checkbox" value="" />是否允许重复发送
					</label>
				</p>
				
				<hr></hr>
				
				<p class="khxx_p" style="width:480px;text-align:center">
					<label style="width:480px;">
						<span style="display:inline-block;width:70px;position:relative;top:-20px;">提示：</span>
						<span style="display:inline-block;width:380px;height:50px;text-align:left">
							<span style="display:block;width:370px;height:20px;">1.将对查询列表中的客户进行发送</span>
							<span style="display:block;width:370px;height:20px;">2.可在短信主题管理功能对短信内容模板进行更改</span>
						</span>
					</label>
				</p>
				<p class="khxx_p" style="text-align:center;margin-top:50px;">
					<input style="width:80px;" type="button" alt="" id="subbtn" value="发送" />
					<input style="width:80px;" type="button" alt="" id="delbtn" value="取消" />
				</p>
			</div>
		</div>
		
		<!-- 催缴通知单 -->
		<div class="mws-panel grid_8 cftzd"
			style="width:500px;; padding-left: 12px; margin: 0px 0px 30px 0px;position:absolute;top:70px;left:30%;display:none;">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">催费通知单</span>
			</div>
			
			<div id="khxx" class="mws-panel-body" style="height:500px; padding:10px;">
				<p class="khxx_p" style="text-align:center;font-size:16px;font-weight:bold;">
					催费通知单
				</p>
				<p class="khxx_p" style="">
					尊敬的客户：
				</p>
				<p class="khxx_p" style="margin-left:100px;">
					交费
				</p>
				<p class="khxx_p" style="text-align:center;">
						
					<table border="1" cellspacing="0" cellpadding="0">
						<thead>
						
						</thead>
						<tbody>
							<tr>
								<td>客户名称：</td>
								<td colspan="2">董嘉欣</td>
							</tr>
							<tr>
								<td>用热地址：</td>
								<td colspan="2">金领小区 1号楼 2单元 402户</td>
							</tr>
							<tr>
								<td>欠费项目：</td>
								<td>供热年度</td>
								<td>欠费金额(元)</td>
							</tr>
							<tr>
								<td>采暖费</td>
								<td>2018-2019</td>
								<td>4613.5</td>
							</tr>
							<tr>
								<td>采暖费</td>
								<td>2019-2020</td>
								<td>13.5</td>
							</tr>
							<tr>
								<td>违约金</td>
								<td>2018-2019</td>
								<td>1534.5</td>
							</tr>
							<tr>
								<td colspan="2">总计</td>
								<td>6161.5</td>
							</tr>
						</tbody>
					</table>
				</p>
				
				<p class="khxx_p" style="text-align:center;margin-top:30px;">
					<input style="width:80px;" type="button" alt="" id="subbtn" value="发送" />
					<input style="width:80px;" type="button" alt="" id="tzddelbtn" value="取消" />
				</p>
			</div>
		</div>

		
	</div>

<script>
$(document).ready(function(){
	
	$(".qqfw input[name='range']").change(function(){
		var rangev = $(this).val();
		if(rangev == "当前年度"){
			$(".onend").show();
			$(".allnd").hide();
		}else if(rangev == "全部年度"){
			$(".onend").hide();
			$(".allnd").show();
		}
	});
	
	$(".warning").click(function(){
		$(this).find("div.body-checked").toggle();
	});
	
	
	$(".dxqf").click(function(){
		$(".cjdx").show();
	});
	$("#delbtn").click(function(){
		$(".cjdx").hide();
	});
	
	$(".dy").click(function(){
		$(".cftzd").show();
	});
	
	$("#tzddelbtn").click(function(){
		$(".cftzd").hide();
	});
	
})
</script>

</body>

</html>