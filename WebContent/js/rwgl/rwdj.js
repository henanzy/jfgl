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
	$("#search_btn").click(function(){
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
					$("#YHBM").val(YHBM)
					$("#TelePhone").val(TelePhone)
					$("#BuildNO").val(BuildNO)
					$("#XqName").val(XqName)
					$("#CellNO").val(CellNO)
					$("#HouseNO").val(HouseNO)
					$("#rwbm").val(rwbm)
					$("#IDNum").val(IDNum)
				}

			});	
		 var rwxx;
		 $.ajax({
				url : getRootPath()+"/rwxxCont/rwxx.action", 
				async : false,
				dataType : "json",
				data : {
					"XqName":xq,
					"BuildNo":ldh,
					"CellNo":dyh,
					"HouseNo":houseNo,
				},
				success : function(data) {
					
					var opt="";
					 rwxx=data.rwxx;
				}

			});
		 
		 jsArrChange(rwxx);
		 tbodydis("",qgxxList)
	});
	
	var qgxxList=[];
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].IDNum;
			arr1[1] = json[i].xqName;
			arr1[2] = json[i].BuildNo;
			arr1[3] = json[i].CellNO;
			arr1[4] = json[i].HouseNO;
			arr1[5] = json[i].YhName;
			arr1[6] = json[i].YHBM;
			arr1[7] = json[i].RWBM;
			arr1[8] = json[i].RWRQ;
			arr1[9] = json[i].SFRZ;
			arr1[10] = json[i].SFDB;
			arr1[11] = json[i].CNSS;
			arr1[12] = json[i].JZMC;
			
			arr1[13] = json[i].JZCG;
			arr1[14] = json[i].DJ;
			arr1[15] = json[i].RWFY;
			arr1[16] = json[i].HTQSRQ;
			arr1[17] = json[i].HTJSRQ;
			if(json[i].ht!=null){
				arr1[18] = json[i].ht;	
			}else{
				arr1[18] ="未上传合同"
			}
			
			qgxxList.push(arr1);
		};
	}
	
	
	
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




	
//表格写入函数带分页
function tbodydis(oldlist,newlist){
	
	$("#xinword_body").empty();
	var current = 1;
	function pageInit(currentPage, pagesize) {
		current = currentPage; // 将当前页存储全局变量
		pageCount = Math.ceil(newlist.length / pagesize); // 一共分多少页
		currentNum.innerHTML = currentPage;
		num.innerHTML = newlist.length + "条";
		pages.innerHTML = pageCount;
		var startRow = (currentPage - 1) * pagesize; // 开始显示的行
		var endRow = currentPage * pagesize - 1; // 结束显示的行
		var endRow = (endRow > newlist.length) ? newlist.length : endRow; // 如果结束行数大于总数目，显示总数目，否则结束行
		
		var html = "";
		for(var i = 0; i < newlist.length; i++) {
			if(i >= startRow && i <= endRow) { // 通过间隔分隔数组
				if(i%2 == 1){
					html += "<tr class='gradeX odd'>";
				}else if(i%2 == 0){
					html += "<tr class='gradeX even'>";
				}
				

				for (var j = 0 ; j <newlist[i].length ; j ++) {
					if(j==18){
						 html += "<td style='display:none'>" + newlist[i][j] + "</td>"
					}else{
						html += "<td>" + newlist[i][j] + "</td>"
					}
                  
				}
				
				html += "<td><input class='ht' type='button' value='查看合同' /></td>";
			}
		}
		
		xinword_body.innerHTML = html;

	
		
	
		var classname = "";
		$("table tbody td").hover(function() {
			classname = $(this).parent().attr("class");
			$(this).parent().removeClass(classname).addClass("blue");
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').addClass('blue')
		}, function() {
			$(this).parent().removeClass("blue").addClass(classname);
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').removeClass('blue')
		});
		
		$("#increase_btn").click(function(){

			$("#increase_word").show();
		});
		//修改按钮
		$(".xinjgd_change").click(function(){
			xin_change(this);
		});
		$(".xinjgd_del").click(function(){
			xin_del(this);
		});
		$(".ht").click(function(){
			wz_look(this)
		});
		$(".wz_look .close").click(function(){
			$(".wz_look").hide();
		});
	}
	
	select.onchange = function(ev) {
		pageInit(1, this.value)
	}
	first.onclick = function() {
		pageInit(1, select.value)
	}
	end.onclick = function() {
		pageInit(pageCount, select.value)
	}

	next.onclick = function() {
		var curr = current + 1;
		if(curr > pageCount) {
			return
		}
		pageInit(curr, select.value)
	}

	last.onclick = function() {
		var curr = current - 1;
		if(curr < 1) {
			return
		}
		pageInit(curr, select.value)
	}
	pageInit(1, 15);
	
	
	$(".ht").click(function(){
		wz_look(this)
	});
	//关闭新增
	$(".close").click(function(){
		$("#increase_word").hide();
		$("#change_word").hide();
	});
	$("#increase_btn").click(function(){

		$("#increase_word").show();
	});
	$(".wz_look .close").click(function(){
		$(".wz_look").hide();
	});
	//修改按钮
	$(".xinjgd_change").click(function(){
		xin_change(this);
	});
	$(".xinjgd_del").click(function(){
		xin_del(this);
	});

}
function wz_look(p){
	$(".wz_look").show();
	var xintd = $(p).parent().parent().children();
	//修改数据
	/*var changenewsList = [];
	for(var x = 1 ; x < 5 ; x ++){
		if(x == 1){
			changenewsList.push(xintd[x].childNodes[0].innerHTML);
			continue;
		}
		changenewsList.push(xintd[x].innerHTML);
	}*/
	
	$(".wz_look_content").html(xintd[18].innerHTML);
	
}