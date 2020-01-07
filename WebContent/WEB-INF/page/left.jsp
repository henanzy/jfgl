<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<!-- <script type="text/javascript" src="../js/jquery-1.9.js"></script> -->

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>
<!-- <script type="text/javascript" src="../js/jquery.ztree.core.js"></script> -->

<script type="text/javascript" src="../js/demo.dashboard.js"></script>


<script type="text/javascript">
/* 稽查管理 */
function jcgl(){// 
	window.open("<%=basePath%>user/jcgl.action","Conframe");
}
/* 清欠中心*/
function qqzx(){// 
	window.open("<%=basePath%>user/qqzx.action","Conframe");
}
/* 采暖变更*/
function cnbg(){// 
	window.open("<%=basePath%>user/cnbg.action","Conframe");
}
/* 客户管理 */
function khgl(){// 
	window.open("<%=basePath%>user/khgl.action","Conframe");
}
/* 收费明细查询 */
function sfmxcx(){// 
	window.open("<%=basePath%>user/sfmxcx.action","Conframe");
}
/* 新入网 */
function xrwcx(){// 
	window.open("<%=basePath%>user/xrwcx.action","Conframe");
}
/* 日收费 */
function rsfhz(){// 
	window.open("<%=basePath%>user/rsfhz.action","Conframe");
}
/* 小区收费 */
function xqsfhz(){// 
	window.open("<%=basePath%>user/xqsfhz.action","Conframe");
}
/* 当前用户类别 */
function dqyhlb(){// 
	window.open("<%=basePath%>user/dqyhlb.action","Conframe");
}
/* 历史欠费查询 */
function lsndqf(){// 
	window.open("<%=basePath%>user/lsndqf.action","Conframe");
}
/* 面积变更 */
function mjbg(){// 
	window.open("<%=basePath%>user/mjbg.action","Conframe");
}
/* 统计图表 */
function tjtb(){// 
	window.open("<%=basePath%>user/tjtb.action","Conframe");
}
/* 系统设置 */
function xtsz(){// 
	window.open("<%=basePath%>user/xtsz.action","Conframe");
}
/* 柜台收费 */
function gtsf(){// 
	window.open("<%=basePath%>user/gtsf.action","Conframe");
}
/* 银行代收 */
function yhds(){// 
	window.open("<%=basePath%>user/yhds.action","Conframe");
}
/* 微信支付*/
function wxzf(){// 
	window.open("<%=basePath%>user/wxzf.action","Conframe");
}
/* 支付宝支付*/
function zfbzf(){// 
	window.open("<%=basePath%>user/zfbzf.action","Conframe");
}
/*退费 */
function tf(){// 
	window.open("<%=basePath%>user/tf.action","Conframe");
}
/*离线收费 */
function lxsf(){// 
	window.open("<%=basePath%>user/lxsf.action","Conframe");
}
/* 合同模板 */
function htmb(){// 
	window.open("<%=basePath%>user/htmb.action","Conframe");
}
/* 合同查询 */
function htcx(){// 
	window.open("<%=basePath%>user/htcx.action","Conframe");
}
/* 入网审核 */
function rwsh(){// 
	window.open("<%=basePath%>user/rwsh.action","Conframe");
} 
/* 批量录入 */
function pllr(){// 
	window.open("<%=basePath%>user/pllr.action","Conframe");
} 
/* 入网登记*/
function rwdj(){// 
	window.open("<%=basePath%>user/rwdj.action","Conframe");
} 
/* 知识库 */
function qiytl(){// 
    window.open("<%=basePath%>user/qiytl.action?type=企业条例", "Conframe");
} 
function guojfg(){// 
	window.open("<%=basePath%>user/guojfg.action?type=国家法规", "Conframe");
} 
function hangyzs(){// 
	window.open("<%=basePath%>user/hangyzs.action?type=行业知识", "Conframe");
} 
function xitsm(){// 
	window.open("<%=basePath%>user/xitsm.action?type=系统说明", "Conframe");
} 
function wentjd(){// 
	window.open("<%=basePath%>user/wentjd.action?type=问题解答", "Conframe");
} 
 	/* 员工定位 */
function shisdw(){// 
	window.open("<%=basePath%>user/shisdw.action","Conframe");
} 
function lisgj(){// 
	window.open("<%=basePath%>user/lisgj.action","Conframe");
} 
function tfcx(){// 
	window.open("<%=basePath%>user/tfcx.action","Conframe");
}
function czrz(){// 
	window.open("<%=basePath%>user/czrz.action","Conframe");
}
function rbb(){// 
	window.open("<%=basePath%>jfxx/rbb.action","Conframe");
}
function yezxx(){// 
	window.open("<%=basePath%>yhInfo/yezxx.action","Conframe");
} 
function findjc(){// 
	window.open("<%=basePath%>jc/findjc.action","Conframe");
} 
function jfst(){// 
	window.open("<%=basePath%>jc/jfst.action","Conframe");
} 
function gzfst(){// 
	window.open("<%=basePath%>jc/gzfst.action","Conframe");
} 

var UserName="<%=request.getSession().getAttribute("UserName")%>"
</script>



<style>
ul.ac_kf li a {
	border-radius: 6px;
	cursor: pointer;
}

ul.ac_kf li a:hover {
	background-color: rgba(197, 213, 43, 0.1);
}
</style>
<body>
	<div id="mws-wrapper">
		<!--  必要的标记，不要删除 -->
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>
		<!-- 左边侧栏包装器 -->
		<div id="mws-navigation">


			<ul>
				<li class="active"><a href="#" class="mws-i-24 i-users">入网管理</a>
					<ul class="ac_kf">
					 
						<li><a class="first-a" onclick="rwdj()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;入网缴费</a></li>
						<li><a onclick="sfmxcx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;缴费明细查询</a></li>
						<li><a onclick="rbb()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;缴费日报表</a></li>
						<li><a onclick="pllr()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;批量录入</a></li>
						<li><a onclick="yezxx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;用户信息</a></li>
					<!-- 	<li><a onclick="htcx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;入网审核</a></li> -->
						<!-- <li class="active"><a href="#"><nobr style="font-size: 20px;">+</nobr>&nbsp;入网合同</a>
							<ul>
								<li><a onclick="htmb()" target="Conframel">&nbsp;&nbsp;&nbsp;>&nbsp;合同模板</a></li>
								<li><a onclick="htcx()" target="Conframel">&nbsp;&nbsp;&nbsp;>&nbsp;合同查询</a></li>
							</ul></li> -->
					</ul>
				</li>
				<li class="active"><a href="#" class="mws-i-24 i-users">收费管理</a>
					<ul class="ac_kf">

						<!-- <li><a onclick="gtsf()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;柜台收费</a></li> -->
						<li><a onclick="yhds()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;银行代收查询</a></li>
						<li><a onclick="wxzf()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;微信支付查询</a></li>
						<li><a onclick="zfbzf()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;支付宝支付查询</a></li>
						<c:if test="${UserName=='phrl'}">
						<li><a onclick="tf()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;退费登记</a></li>
						<li><a onclick="tfcx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;退费记录</a></li>
						</c:if>
						<li><a onclick="lxsf()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;离线收费</a></li>
					</ul>
				</li>

				<li class="active"><a  href="#" class="mws-i-24 i-users">稽查管理</a>
				<ul class="ac_kf">

						
						<li><a onclick="jcgl()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;稽查视图</a></li>
						<li><a onclick="jfst()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;缴费视图</a></li>
						<li><a onclick="gzfst()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;缴费视图（公租房）</a></li>
						<li><a onclick="findjc()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;稽查报表</a></li>
					</ul>
				</li>
				<!-- <li class="active"><a onclick="qqzx()" href="#" class="mws-i-24 i-users">清欠中心</a></li> -->
				<!-- <li class="active"><a onclick="cnbg()" href="#" class="mws-i-24 i-users">采暖变更</a></li> -->
				<!-- <li class="active"><a onclick="khgl()" href="#" class="mws-i-24 i-users">客户管理</a></li>  -->
				<li class="active">
					<a href="#" class="mws-i-24 i-users">报表管理</a>
					<ul class="ac_kf">
						<li><a onclick="sfmxcx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;缴费明细查询</a></li>
						
						
						<li><a onclick="htcx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;新入网查询</a></li>
						
						<li><a onclick="lsndqf()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;欠缴费查询</a></li>
						<li><a onclick="czrz()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;日志查询</a></li>
					
					</ul>
				</li>
				 <li class="active"><a onclick="tjtb()" href="#" class="mws-i-24 i-users">统计图表</a></li>
				
				

				<!-- <li class="active"><a href="#" class="mws-i-24 i-cassette">员工定位</a>
					<ul class="ac_kf">
						<li><a onclick="shisdw()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;实时位置</a></li>
						<li><a onclick="lisgj()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;历史轨迹</a></li>
					</ul>
				</li> -->
			</ul>

		</div>

	</div>


	<script type="text/javascript">
		$(".ac_kf li a").click(function(){
			$(".ac_kf li a").css("cssText","color:#fff !important;");
			$(this).css("cssText","color:#C5D52B !important;");
		});
	
	
</script>

</body>
</html>