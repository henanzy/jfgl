Date.prototype.format = function foramate(fmt)   
	{ //author: meizz   
	  var o = {   
	    "M+" : this.getMonth()+1,                 //月份   
	    "d+" : this.getDate(),                    //日   
	    "h+" : this.getHours(),                   //小时   
	    "m+" : this.getMinutes(),                 //分   
	    "s+" : this.getSeconds(),                 //秒   
	    "q+" : Math.floor((this.getMonth()+3)/3), //季度   
	    "S"  : this.getMilliseconds()             //毫秒   
	  };   
	  if(/(y+)/.test(fmt))   
	    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
	  for(var k in o)   
	    if(new RegExp("("+ k +")").test(fmt))   
	  fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
	  return fmt;   
	} 

function getRootPath(){      
	var curWwwPath=window.document.location.href;      
    var pathName=window.document.location.pathname;      
    var pos=curWwwPath.indexOf(pathName); 
    var localhostPaht=curWwwPath.substring(0,pos);      
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);      
    return(localhostPaht+projectName);  
} 
$(function () {
	$("#YHBM").blur(function(){
		
		$.ajax({
			url : getRootPath()+"/jfxx/findYhByBm.action", 
			async : false,
			dataType : "json",
			data : {
				"YHBM":$("#YHBM").val(),
			},
			success : function(data) {
				if(data.map.length>0){
					var map=data.map[0];
					$("#xq").val(map.XqName);
					$("#ldh").val(map.BuildNO);
					$("#dyh").val(map.CellNO);
					$("#hh").val(map.HouseNO);
					$("#cnmj").val(map.HeatArea);
					$("#yhfl").val(map.Yhfl);
					$("#yhmc").val(map.YhName);
					$("#IDNum").val(map.IDNum);
					$("#RWBM").val(map.RWBM);
					$("#LXDH").val(map.Telephone);
					$("#yhbl").val("5");
					$("#dj").val("12");
					var mj = parseInt(map.HeatArea);
					var dj = parseFloat($("#dj").val());
					var yhbl = parseFloat($("#yhbl").val());
					$("#cnf").val((mj*dj).toFixed(2));
					
					$("#yhje").val((mj*dj*yhbl*0.01).toFixed(2));
					$("#YSJE").val((mj*dj-mj*dj*yhbl*0.01).toFixed(2));
				}
				else{
					alert("用户编码不存在请重新输入")
				}
				
			}

		});
	});
	$("#JFJE").blur(function(){
		$("#SYJE").val(($("#JFJE").val()-$("#YSJE").val()).toFixed(2));
	});
	
});
function jf(){
	var JFTJ=$("input[name='JFTJ']:checked").val();
	var SFFS=$("input[name='SFFS']:checked").val();
	if(isNaN(JFJE)){
		alert("缴费金额请输入数字")
		return;
	}
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
			
			"RWBM":$("#RWBM").val(),
			"JFJE":$("#JFJE").val(),
			"YSJE":$("#YSJE").val(),
			"SYJE":$("#SYJE").val(),
			"SKZH":$("#SKZH").val(),
			"PJHM":$("#PJHM").val(),
			"LSDH":$("#LSDH").val(),
			"LXDH":$("#LXDH").val(),
		},
		success : function(data) {
			if(data.msg=="1"){
				alert("缴费成功！")
				location.reload();
			}
			else{
				alert("系统错误，请稍后再试")
			}
			
		}

	});
}



function fDateTime(num){
	var curDate = new Date();
	var nowTimeDay = new Date(curDate - 24*60*60*1000*num).getDate();
	var nowTimeMonth = new Date(curDate - 24*60*60*1000*num).getMonth()+1;
	var nowTime = nowTimeMonth + "-" + nowTimeDay;
return nowTime;
}