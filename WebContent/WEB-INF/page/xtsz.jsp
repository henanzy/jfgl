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
 p{
 	width:80%;
 	height:30px;
 	line-height:30px;
 	margin-left:100px;
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
	
		<div class="mws-panel grid_8 "
			style="width: 48%; padding-left: 12px; float:left; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">超高管理</span>
			</div>
			
			<div  class="mws-panel-body" style="height:250px; padding:10px;">
				<p>标准高(H) = <input type="text" value="2.9" />米</p>
				<p>建筑高(h)</p>
				<p>建筑面积(s) </p>
				<p>每平米收费(p) </p>
				<p>所交金额 = (h-H)%H*s*p+(s*p)</p>
				
			</div>
		</div>
		
		<div class="mws-panel grid_8 "
			style="width: 48%; padding-left: 12px;float:left; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">违约金管理</span>
			</div>
			
			<div  class="mws-panel-body" style="height:250px; padding:10px;">
			
				<p>
					<input type="button" id="increase_wyj" value="新增" />
					<input type="button" value="修改" />
					<input type="button" value="删除" />
				</p>
				
				<table class="mws-table">
					<thead>
						<tr>
							<th>序号</th>
							<th>方案</th>
							<th>比例</th>
							<th>起止时间</th>
							<th>范围</th>
						</tr>
					</thead>
					<tbody id="xinword_body">
						<tr>
							<td>1</td>
							<td>方案一</td>
							<td>0.05%</td>
							<td>2018.11.15</td>
							<td>天鹅堡</td>
						</tr>
						<tr>
							<td>2</td>
							<td>方案二</td>
							<td>0.06%</td>
							<td>2018.11.25</td>
							<td>天鹅堡</td>
						</tr>
						<tr>
							<td>3</td>
							<td>方案三</td>
							<td>0.07%</td>
							<td>2018.12.01</td>
							<td>天鹅堡</td>
						</tr>
						<tr>
							<td>4</td>
							<td>方案四</td>
							<td>0.08%</td>
							<td>2018.12.10</td>
							<td>天鹅堡</td>
						</tr>
					</tbody>
				</table>
				
			</div>
		</div>
		
		<div class="mws-panel grid_8 "
			style="width: 48%; padding-left: 12px; float:left; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">供热单价设置及客户管理</span>
			</div>
			
			<div  class="mws-panel-body" style="height:250px; padding:10px;">
				<p>民用 &nbsp;&nbsp;&nbsp;<input type="text" value="20" />&nbsp;元/平方/月</p>
				<p>商用&nbsp;&nbsp;&nbsp; <input type="text" value="25" />&nbsp;元/平方/月</p>
				<p>公建 &nbsp;&nbsp;&nbsp;<input type="text" value="18" />&nbsp;元/平方/月</p>
				<p>其他 &nbsp;&nbsp;&nbsp;<input type="text" value="20" />&nbsp;元/平方/月</p>
				<hr></hr>
				<p>计量预交金额设置</p>
				<p> &nbsp;&nbsp;&nbsp;预交金额&nbsp;&nbsp;按面积计算的<input type="text" value="60" />%&nbsp;预交</p>
			</div>
		</div>
		
		<div class="mws-panel grid_8 "
			style="width: 48%; padding-left: 12px; float:left; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">减免折让</span>
			</div>
			
			<div  class="mws-panel-body" style="height:250px; padding:10px;">
				<p>
					<input type="button" id="" value="新增" />
					<input type="button" value="修改" />
					<input type="button" value="删除" />
				</p>
				
				<table class="mws-table">
					<thead>
						<tr>
							<th>序号</th>
							<th>优惠方式</th>
							<th>优惠幅度</th>
							<th>原因</th>
							<th>范围</th>
						</tr>
					</thead>
					<tbody id="xinword_body">
						<tr>
							<td>1</td>
							<td>减免</td>
							<td>200(元)</td>
							<td>延迟供暖</td>
							<td>天鹅堡，金领小区</td>
						</tr>
						<tr>
							<td>2</td>
							<td>折让</td>
							<td>5(元)</td>
							<td>补偿</td>
							<td>砥柱大厦</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
				
			</div>
		</div>
		
		
		<div class="mws-panel grid_8 "
			style="width: 48%; padding-left: 12px; float:left; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">交费优惠</span>
			</div>
			
			<div  class="mws-panel-body" style="height:250px; padding:10px;">
				<p>
					<input type="button" id="" value="新增" />
					<input type="button" value="修改" />
					<input type="button" value="删除" />
				</p>
				
				<table class="mws-table">
					<thead>
						<tr>
							<th>方案</th>
							<th>优惠幅度</th>
							<th>起止时间</th>
							<th>范围</th>
						</tr>
					</thead>
					<tbody id="xinword_body">
						<tr>
							<td>方案一</td>
							<td>5%</td>
							<td>2018.9.1-2018.10.1</td>
							<td>所有</td>
						</tr>
						<tr>
							<td>方案二</td>
							<td>3%</td>
							<td>2018.10.1-2018.11.1</td>
							<td>所有</td>
						</tr>
						<tr>
							<td>方案三</td>
							<td>0%</td>
							<td>2018.11.1-2019.3.15</td>
							<td>所有</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
				
			</div>
		</div>
		
		
		<div class="mws-panel grid_8 "
			style="width: 48%; padding-left: 12px; float:left; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">缴费通道设置</span>
			</div>
			
			<div  class="mws-panel-body" style="height:250px; padding:10px;">
				<p>银行代收</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;工商银行&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgopen" style="width:30px;heoght:10px;" src="../images/background/open.png" /></p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;中原银行&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgopen" style="width:30px;heoght:10px;" src="../images/background/open.png" /></p>
				<p>支付宝&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgopen" style="width:30px;heoght:10px;" src="../images/background/open.png" /></p>
				<p>微信&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgopen" style="width:30px;heoght:10px;" src="../images/background/open.png" /></p>
			
				<hr></hr>
				<p>票据管理</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;电子发票申请&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgopen" style="width:30px;heoght:10px;" src="../images/background/open.png" /></p>
				
			</div>
		</div>
		
		
		<div class="mws-panel grid_8 " id="wyj"
			style=" display:none;width: 48%; padding-left: 12px; float:left; margin: 0px 0px 30px 0px; min-width:500px; padding:10px;position:absolute;top:10px;left:20%;">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">缴费通道设置</span>
			</div>
			
			<div class="mws-panel-body" style="height:250px;">
					<p><span style="display:inline-block;width:80px;">序号：</span><input type="text" /></p>
					<p><span style="display:inline-block;width:80px;">比例：</span><input type="text" /></p>
					<p><span style="display:inline-block;width:80px;">起止时间：</span><input type="text" /></p>
					<p><span style="display:inline-block;width:80px;">范围：</span><input type="text" /></p>
					<p><input type="button" value="提交"  />
					<input type="button" value="取消" id="delbtn"  /></p>
			</div>
			
		</div>
		
		<!-- <nav style="width:100%;">
            <ul style="width:500px;display:flex;justify-content:space-between;margin:0 auto;" >
            	
                <li id="first">首页</li>
                <li id="last">上一页</li>
                <li id="next">下一页</li>
                <li id="end">尾页</li>   
                <li id="curpage">当前第<span id="currentNum" ></span>页 /共<span id='pages'></span>页</li>
                <li>共<span id="num"></span></li>
                
                    <select name="" id="select" >
                        <option value="10">10</option>
                        <option value="15"  selected = "selected">15</option>
                        <option value="20" >20</option>
                        <option value="25">25</option>
                        <option value="30">30</option>
                    </select>
                     
            </ul>
         </nav> -->

	
	</div>

	<script>
		var i = 0;
		$(".imgopen").click(function(){
			if(i == 0){
				$(this).attr("src","../images/background/close.png");
				i = 1;
			}else if(i == 1){
				$(this).attr("src","../images/background/open.png");
				i = 0;
			}
		});
		
		$("#delbtn").click(function(){
			$("#wyj").hide();
		});
		
		$("#increase_wyj").click(function(){
			$("#wyj").show();
		});
	</script>

</body>

</html>