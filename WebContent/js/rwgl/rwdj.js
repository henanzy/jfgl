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
$(document).ready(function(){
//  表格
	var date = new Date();
	$("#RWRQ").val(date.format('yyyy-MM-dd'));
	
	$("#JFSJ").val(date.format('yyyy-MM-dd'));
	$("#search_btn").click(function(){
		$("#dj").val("19");
		var xq=$("#xq").val();
		var ldh=$("#ldh").val();
		var dyh=$("#dyh").val();
		var houseNo=$("#houseNo").val();
		
		 $.ajax({
				url : getRootPath()+"/rwxxCont/rwSer.action", 
				async : false,
				dataType : "json",
				data : {
					"XqName":xq,
					"BuildNo":ldh,
					"CellNo":dyh,
					"HouseNo":houseNo,
				},
				success : function(data) {
					
					var rwxx=data.rwxx;
					var YHBM=rwxx.YHBM;
					var TelePhone=rwxx.Telephone;
					var BuildNO=rwxx.BuildNO;
					var XqName=rwxx.XqName;
					var CellNO=rwxx.CellNO;
					var HouseNO=rwxx.HouseNO;
					var rwbm=rwxx.rwbm;
					var IDNum=rwxx.IDNum;
					var YhName=rwxx.YhName;
					var mj=rwxx.HeatArea;
					var dj= $("#dj").val();
					$("#YHBM").val(YHBM)
					$("#yhName").val(YhName)
					$("#TelePhone").val(TelePhone)
					$("#BuildNO").val(BuildNO)
					$("#XqName").val(XqName)
					$("#CellNO").val(CellNO)
					$("#HouseNO").val(HouseNO)
					$("#rwbm").val(rwbm)
					$("#IDNum").val(IDNum)
					$("#cnmj").val(mj)
					$("#YSJE").val((mj*dj).toFixed(2));
				}

			});	
		 
		 
		
	});
	
	
	
	
	
	$("#htsc").click(function(){
		$(".na_crea").show();
		$("#close").click(function(){
			$(".na_crea").hide();
		});
	});
	
	$(".na_crea .close").click(function(){
		$(".na_crea").hide();
	});
	
	$("#close").click(function(){
		$(".na_crea").hide();
	});
	$(".ht").click(function(){
		wz_look(this)
	});
});




