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
<link rel="stylesheet" type="text/css" href="../css/guojfg.css" media="screen" />
<script type="text/javascript" src="../js/release/wangEditor.js"></script>
<script type="text/javascript" src="../js/LodopFuncs.js"></script>
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />

	<link rel="stylesheet" type="text/css"
	href="../js/release/wangEditor.css" media="screen" />

 
 <style>
 *{
	margin:0;
	padding:0;
}
html,body{
	height:110%;
}
input{
border-width:2px;
border-color:black;
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

#subbtn{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
#dayin{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
#xg{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
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
#htsc{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
#htpz{
	border:none;
	background-color:rgb(60,61,61);
	width:60px;
	height:24px;
	margin-right:6px;
	color:#fff;
	border-radius:3px;
}
th, td {
	white-space: nowrap;
}
 </style>
  <script type="text/javascript">
 
 var type="<%=request.getSession().getAttribute("type")%>";
</script>

</head>
<body>

	<div id="increasedis" class="clearfix" style="overflow-x: hidden;">
		
		<div class="mws-report-container clearfix">
			
			<p class="mws-report" href="#" style="font-size: 14px;min-width:800px;height:90px;">
				<span class="mws-report-icon mws-ic ic-building"></span> 
				<span class="mws-report-content" style="margin-top: 10px;"> 
				</span>
				<span class="mws-report-title"> 选择小区 :
					<select id="xq" style="width: 150px" name="xqName">
                          <option value="" selected="selected">--选择小区--</option>
					</select>
				</span> <span>楼栋号： <select name="ldh" id="ldh" style="width: 70px">
							<option value="">--楼栋--</option>
					</select>
				</span> <span>单元号： <select name="dyh" id="dyh" style="width: 70px">
							<option value="">--单元--</option>
					</select>
				</span>
				<span>户号： <select name="houseNo" id="houseNo" style="width: 70px">
							<option value="">--户号--</option>
					</select>
				</span>
				<span class="mws-report-title" style="margin-left:10px;">
				
					 &nbsp;&nbsp;&nbsp; 
					<input type="submit" class="mws-button black" id="search_btn" value="搜索" />
				</span>
			</p>
			
		</div>
		<div class="mws-panel grid_8 "
			style="width: 98%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">入网登记</span>
			</div>
			
			<div id="khxx" class="mws-panel-body" style="height:330px; padding:10px;">
				<p class="khxx_p">
					<label><span>小区名称:</span><input type="text"  id="XqName" class="readonly_input" readonly="readonly" vlaue="" /></label>
					<label><span>楼栋号:</span><input type="text" id="BuildNO" class="readonly_input" readonly="readonly" vlaue="" /></label>
					<label><span>单元号:</span><input type="text" id="CellNO" class="readonly_input" readonly="readonly" vlaue="" /></label>
					<label><span>户号:</span><input type="text" id="HouseNO" class="readonly_input" readonly="readonly" vlaue="" /></label>
				</p>
				<p class="khxx_p">
					<label><span>用户名称:</span><input type="text" id="yhName"class="khxx_input"  vlaue="" /></label>
					<label><span>用户编码:</span><input type="text" id="YHBM" class="readonly_input" readonly="readonly" vlaue="" /></label>
					<label><span>入网编码:</span><input type="text" id="rwbm" class="khxx_input" vlaue="" /></label>
					<label><span>联系电话:</span><input type="text" id="TelePhone" class="khxx_input" vlaue="" /></label>
				</p>
				
				<p class="khxx_p">
                <label><span>入网日期:</span><input type="datetime" id="RWRQ" class="khxx_input" vlaue="" /></label> 
					<label>
						<span>是否入住:</span>
						<select class="khxx_input" id="sfrz">
							<option value="是">是</option>
							<option value="否">否</option>
						</select>
					</label>
					<label><span>是否低保:</span>
						<select class="khxx_input" id="sfdb">
							<option value="否">否</option>
							<option value="是">是</option>
							
						</select>
					</label>
					<label>
						<span>采暖设施:</span>
						<select class="khxx_input" id="cnss">
						    <option value="散热片">散热片</option>
							<option value="地暖">地暖</option>							
							<option value="风机盘管">风机盘管</option>
						</select>
					</label>
				</p>
				
				<p class="khxx_p">
				    <label><span>入网单价:</span><input type="text" id="dj" class="khxx_input" vlaue="" /></label>
					
					<label><span>合同起始:</span><input type="date" id="HTQSRQ" class="khxx_input" vlaue="" /></label>
					<label><span>入网结束:</span><input type="date" id="HTJSRQ" class="khxx_input" vlaue="" /></label>
				</p>
				<p class="khxx_p">
				<label><span>采暖面积:</span><input id="cnmj" type="text" class="khxx_input"  readonly="readonly"  /></label>
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
			<label>
						<span>采暖期:</span>
						<select id="CNQ" class="khxx_input">
							
							<option value="2019-2020">2019-2020</option>
							<option value="2018-2019">2018-2019</option>
						</select>
					</label>
				<label >
						<span>交款方式:</span>
						<input type="radio" name="JFTJ" value="扫码" checked="checked" />扫码	
						<input type="radio" name="JFTJ" value="POS机"  />POS机	
						<input type="radio" name="JFTJ" value="现金"  />现金						
						
						
						
					</label>
				     <label >
						<span>收费方式:</span>
						<input type="radio" id="gtsf"name="SFFS" value="柜台收费" checked="checked" />柜台收费
						<input type="radio" id="yhds" name="SFFS" value="中原银行卡缴费" />中原银行卡缴费
						<input type="radio" id="zs"name="SFFS" value="走收" />走收
						
						<input type="radio" id="wyds"name="SFFS" value="物业代收" />物业代收
					</label>
					<label><span>收款日期:</span><input type="datetime" vlaue="" class="khxx_input"   id="JFSJ"   /></label>
				</p>
				
				 
				<p class="khxx_p" style="text-align:center">
				
				    <input style="width:80px;" type="button" alt=""  id="xg" onclick="xgyh()" value="修改用户" />
				    <input style="width:80px;"  type="button" id="htsc" value="合同上传" />
					<input style="width:80px;" onclick="jt()" type="button" id="subbtn" value="确认" />
					<input style="width:80px;" type="button" alt=""  id="dayin" onclick="dy()" value="打印" />
				
				</p>
				<input id="lsdh"  type="text" style="display:none" />
			</div>
		</div>
		
		
		
		 
<div class="na_crea" style="min-width:1000px;overflow-x: hidden;">
			<div class="na_crea_body">
				<span class="close"></span>
				<h5> <input style="width:80px;"  type="button" id="htpz" onclick="bf()" value="合同拍照" /></h5>
				<br>
				<form action="addZsk.action"  method="post">
					
					<div id="E" style="height:600px"></div>
					
					<textarea name="contents" id="ueditorContent" style="width:100%; height:200px;display:none" ></textarea>
					
					
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
	<script type="text/javascript">
	var  LODOP;
	
	function dy() {	
		var xq=$("#XqName").val();
var LXDH= $("#TelePhone").val();
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
		LODOP.ADD_PRINT_TEXT(340,10,400,25,"缴费方式:  "+SFFS);
		LODOP.ADD_PRINT_TEXT(365,10,400,25,"收费员  :  "+UserName);
        LODOP.ADD_PRINT_TEXT(315,10,400,25,"客服电话:  0393 8509620");
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
		LODOP.ADD_PRINT_TEXT(985,10,400,25,"缴费方式:  "+SFFS);
		LODOP.ADD_PRINT_TEXT(935,10,400,25,"收费员  :  "+UserName);
        LODOP.ADD_PRINT_TEXT(960,10,400,25,"客服电话:  0393 8509620");
		LODOP.SET_PRINT_STYLE("FontSize",12);
		LODOP.ADD_PRINT_TEXT(1020,10,400,25,"客户签字 :____________");
		LODOP.SET_PRINT_STYLE("FontSize",7);
		LODOP.ADD_PRINT_TEXT(1070,90,400,25,"*本票据仅作为收费证明，不作为收据使用");
		
		
		
		
		
		      
		LODOP.PREVIEW();	       
	};
	
	
	function bf(){
		
		$.ajax({
				url:"<%=basePath%>rwxxCont/gpy.action",
				async:false,
				dataType:"json",
				data:{	
					
				},
				success:function(data){
					
				}
				
			});	
	}
	var YHBM=$("#YHBM").val();
	var E = window.wangEditor;
    var editor = new E('#E');
    var $ueditorContent = $('#ueditorContent');
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $ueditorContent.val(html);
    };
    editor.customConfig.uploadImgServer = '<%=basePath%>/rwxxCont/fileUp.action' ;
    editor.customConfig.uploadFileName = 'img';
    editor.customConfig.uploadImgHooks = {
            // （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
            customInsert: function (insertImg, result, editor) {
                // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果：
                var url = result.url;
                
                insertImg(url);
            },
          },
    editor.create();
    $ueditorContent.val(editor.txt.html());
    
    
	</script>
<script type="text/javascript">

  function jt(){
	  layer.confirm('是否缴费', function(index) {
	  layer.close(index);
	  var JFTJ=$("input[name='JFTJ']:checked").val();
		var SFFS=$("input[name='SFFS']:checked").val();
		var JFJE=$("#JFJE").val();
		if(isNaN(JFJE)){
			alert("缴费金额请输入数字")
			return;
		}
	  var IDNum=$("#IDNum").val();
	  var XqName=$("#XqName").val();
		var BuildNO=$("#BuildNO").val();
		var CellNO=$("#CellNO").val();
		var HouseNO=$("#HouseNO").val();
		var yhName=$("#yhName").val();
		var YHBM=$("#YHBM").val();
		var rwbm=$("#rwbm").val();
		var rwDate=$("#rwDate").val();
		var sfrz=$("#sfrz").val();
		var sfdb=$("#sfdb").val();
		var cnss=$("#cnss").val();
		var jzwmc=$("#jzwmc").val();
		var jzwyt=$("#jzwyt").val();
		var jzwcg=$("#jzwcg").val();
		var RWRQ=$("#RWRQ").val();
		var bz=$("#bz").val();
		var rwfy=$("#rwfy").val();
		var TelePhone=$("#TelePhone").val();
		var HTQSRQ=$("#HTQSRQ").val();
		var HTJSRQ=$("#HTJSRQ").val();
		var ht=$("#ueditorContent").val();
		
		var DJ=$("#dj").val();
		var UserName="<%=request.getSession().getAttribute("UserName")%>"
		$.ajax({
			url : getRootPath()+"/jfxx/InsertJfxx.action", 
			async : false,
			dataType : "json",
			data : {
				"YHBM":$("#YHBM").val(),
				"IDNum":$("#IDNum").val(),
				"JFSJ":$("#JFSJ").val(),
				"CNQ":$("#CNQ").val(),
				"JIFFS":$("#JIFFS").val(),
				"JFTJ":JFTJ,
				"SFFS":SFFS,
				
				"RWBM":$("#rwbm").val(),
				"JFJE":$("#JFJE").val(),
				"YSJE":$("#YSJE").val(),
				"SYJE":$("#SYJE").val(),
				"SKZH":UserName,
				"PJHM":$("#PJHM").val(),
				
				"LXDH":$("#TelePhone").val(),
			},
			success : function(data) {
				if(data.msg=="1"){
					alert("缴费成功！")
					$("#lsdh").val(data.lsdh)
					$.ajax({
						url : "<%=basePath%>rwxxCont/InsertrRw.action", 
						async : false,
						dataType : "json",
						data : {
							"IDNum":IDNum,
							"XqName":XqName,
							"BuildNO":BuildNO,
							"CellNO":CellNO,
							"HouseNO":HouseNO,
							"yhName":yhName,
							"YHBM":YHBM,
							"rwbm":rwbm,
							"rwDate":rwDate,
							"sfrz":sfrz,
							"sfdb":sfdb,
							"cnss":cnss,
							"jzwmc":jzwmc,
							"jzwyt":jzwyt,
							"jzwcg":jzwcg,
							"bz":bz,
							"rwfy":rwfy,
							"TelePhone":TelePhone,
							"HTQSRQ":HTQSRQ,
							"HTJSRQ":HTJSRQ,
							"DJ":DJ,
							"ht":ht,
						},
						success : function(data) {
						
						}

					});	
				}
				if(data.msg=="3"){
					alert("该用户已经缴费或者用户编码重复，请查询后操作")
					
				}
				if(data.msg=="4"){
					alert("该用户已被拉黑，如需缴费请先取消黑名单");
					return;
				}
				if(data.msg=="2"){
					alert("请登录后操作");
					return;
				}
				
			}

		});
		 
		 
	  });
  }
  function xgyh(){
	  $.ajax({
			url:"<%=basePath%>yhInfo/UpdateYhByBm.action",
			async:false,
			dataType:"json",
			data:{	
				"YhName":$("#yhName").val(),
				"Telephone":$("#TelePhone").val(),
				"YHBM":$("#YHBM").val(),
			},
			success:function(data){
				alert("用户信息修改成功")
			}
			
		});	
  }
</script>
<script type="text/javascript">
 
 


 
	
var xq;
var UserName="<%=request.getSession().getAttribute("UserName")%>"
if(UserName=="zyyh001"||UserName=="zyyh002"){
	$("#yhds").attr('checked','true');
	
}
if(UserName=="zdsy"){
	$("#wyds").attr('checked','true');
	
}

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
 $("#dyh").change(function(){
	 $.ajax({
			url : "<%=basePath%>yhInfo/findHh.action", 
			async : false,
			dataType : "json",
			data : {
				"xqm" : $("#xq").val(),
				"ldh" : $("#ldh").val(),
				"dyh" : $("#dyh").val(),
			},
			success : function(data) {
				
				$("#houseNo option:gt(0)").remove();
				var hh=data.Hh;
				for(var i=0; i<hh.length; i++){
					
					$("#houseNo").append("<option value='"+hh[i].name+"'>"+hh[i].name+"</option>");
				}	
			}

		});
		
		
	});
 </script>
	</div>
<script type="text/javascript" src="../js/rwgl/rwdj.js"></script>
</body>

</html>