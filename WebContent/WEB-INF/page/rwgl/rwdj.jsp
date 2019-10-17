<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" type="text/css" href="../css/guojfg.css" media="screen" />
<script type="text/javascript" src="../js/release/wangEditor.js"></script>


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
	
				<span class="mws-report-title" style="margin-left:10px;">
				 户号:<input type="text" id="houseNo"  />
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
					<label><span>用户名称:</span><input type="text" id="yhName"class="readonly_input" readonly="readonly" vlaue="" /></label>
					<label><span>用户编码:</span><input type="text" id="YHBM" class="readonly_input" readonly="readonly" vlaue="" /></label>
					<label><span>入网编码:</span><input type="text" id="rwbm" class="khxx_input" vlaue="" /></label>
					<label><span>联系电话:</span><input type="text" id="TelePhone" class="khxx_input" vlaue="" /></label>
				</p>
				<!-- <p class="khxx_p">
					<label><span>联系电话:</span><input type="text" class="khxx_input" vlaue="" /></label>
					<label>
						<span>房屋类型:</span>
						<select class="khxx_input">
							<option value="民用住宅">民用住宅</option>
							<option value="商用">商用</option>
							<option value="公建">公建</option>
							<option value="其他">其他</option>
						</select>
					</label>
					<label>
						<span>所属换热站:</span>
						<select class="khxx_input">
							<option value="天鹅堡换热站">天鹅堡换热站</option>
							<option value="砥柱大厦换热站">砥柱大厦换热站</option>
							<option value="金领小区换热站">金领小区换热站</option>
						</select>
					</label>
					<label><span>竣工日期:</span><input type="date" class="khxx_input" vlaue="" /></label>
				</p> -->
				<p class="khxx_p">
                <label><span>入网日期:</span><input type="date" id="RWRQ" class="khxx_input" vlaue="" /></label> 
					<label>
						<span>是否入住:</span>
						<select class="khxx_input" id="sfrz">
							<option value="是">是</option>
							<option value="否">否</option>
						</select>
					</label>
					<label><span>是否低保:</span>
						<select class="khxx_input" id="sfdb">
							<option value="是">是</option>
							<option value="否">否</option>
						</select>
					</label>
					<label>
						<span>采暖设施:</span>
						<select class="khxx_input" id="cnss">
							<option value="地暖">地暖</option>
							<option value="散热器">散热器</option>
							<option value="风机盘管">风机盘管</option>
						</select>
					</label>
				</p>
				<p class="khxx_p">
					<label><span>建筑物名称:</span><input type="text" id="jzwmc" class="khxx_input" vlaue="" /></label>
					<label><span>建筑物用途:</span><input type="text" id="jzwyt" class="khxx_input" vlaue="" /></label>
					<label><span>建筑层高:</span><input type="text" id="jzwcg" class="khxx_input" vlaue="" /></label>
					<label><span>备注:</span><input type="text" id="bz" class="khxx_input" vlaue="" /></label>
				</p>
				<p class="khxx_p">
				    <label><span>入网单价:</span><input type="text" id="dj" class="khxx_input" vlaue="" /></label>
					<label><span>入网费用:</span><input type="text" id="rwfy" class="khxx_input" vlaue="" /></label>
					<label><span>合同起始:</span><input type="date" id="HTQSRQ" class="khxx_input" vlaue="" /></label>
					<label><span>入网结束:</span><input type="date" id="HTJSRQ" class="khxx_input" vlaue="" /></label>
				</p>
				<p class="khxx_p">
				    <label><span>用户卡号:</span><input type="text" id="IDNum" class="khxx_input" vlaue="" /></label>
				</p>
				
				 
				<p class="khxx_p" style="text-align:center">
				
				  
				    <input style="width:80px;"  type="button" id="htsc" value="合同上传" />
					<input style="width:80px;" onclick="jt()" type="button" id="subbtn" value="确认" />
				
				</p>
				
			</div>
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
							<th>用户卡号</th>
							<th>小区名称</th>
							<th>楼栋号</th>
							<th>单元号</th>
							<th>户号</th>
							
							<th>用户名称</th>
							
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
							<th>查看合同</th>
					</thead>
					<tbody id="xinword_body">
						
				
					</tbody>
				</table>
			</div>
		</div>
		
		 <nav style="width:100%;">
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
         </nav> 
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

var ssgs="<%=request.getSession().getAttribute("gs")%>";
var strs= new Array(); //定义一数组 
  strs=ssgs.split(","); //字符分割 
for (i=0;i<strs.length ;i++ ) 
{ 
 var s=strs[i];
 
  $("#ssgs").append("<option value='"+s+"'>"+s+"</option>");

} 
  function jt(){

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
					location.reload();
				}

			});	
  }
</script>
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
					
				 $("#xq").append("<option value='"+xq[i].XqName+"'>"+xq[i].XqName+"</option>");
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
	</div>
<script type="text/javascript" src="../js/rwgl/rwdj.js"></script>
</body>

</html>