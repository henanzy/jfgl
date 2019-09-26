$(document).ready(function(){
	
	var xinList = [
		["金领小区","1号楼","1单元","101","董新召","123456001","987654001","董新召",13548268415,"民用住宅","金领小区换热站","地暖","63.4","2.9","董新召",3602,"2018-04-16"],
		["金领小区","1号楼","1单元","102","王丽丽","123456002","987654002","董新召",13548268415,"民用住宅","金领小区换热站","地暖","48.7","2.9","王丽丽",3602,"2018-04-16"],
		["金领小区","1号楼","1单元","302","苗琳","123456003","987654003","苗琳",13548268415,"民用住宅","金领小区换热站","地暖","97.8","2.9","苗琳",3602,"2018-04-16"],
		["金领小区","1号楼","2单元","204","崔静静","123456004","987654004","董新召",13548268415,"民用住宅","金领小区换热站","地暖","132","2.9","崔静静",3602,"2018-04-16"],
		["金领小区","2号楼","1单元","101","南丽丹","123456005","987654005","董新召",13548268415,"民用住宅","金领小区换热站","地暖","63.4","2.9","南丽丹",3602,"2018-04-16"],
		["金领小区","2号楼","1单元","402","田雪","123456006","987654006","董新召",13548268415,"民用住宅","金领小区换热站","地暖","63.4","2.9","田雪",3602,"2018-04-16"],
		["天鹅堡","1号楼","1单元","101","刘雪琴","123456007","987654007","董新召",13548268415,"民用住宅","天鹅堡换热站","地暖","132","2.9","刘雪琴",3602,"2018-04-16"],
		["天鹅堡","1号楼","1单元","102","秦蕊","123456008","987654008","董新召",13548268415,"民用住宅","天鹅堡换热站","地暖","63.4","2.9","秦蕊",3602,"2018-04-16"],
		["天鹅堡","1号楼","1单元","302","高燕","123456009","987654009","董新召",13548268415,"民用住宅","天鹅堡换热站","地暖","63.4","2.9","高燕",3602,"2018-04-16"],
		["天鹅堡","1号楼","2单元","204","黄棒棒","123456010","987654010","董新召",13548268415,"民用住宅","天鹅堡换热站","地暖","63.4","2.9","黄棒棒",3602,"2018-04-16"],
		["天鹅堡","2号楼","1单元","101","候碎琴","123456011","987654011","董新召",13548268415,"民用住宅","天鹅堡换热站","地暖","132","2.9","候碎琴",3602,"2018-04-16"],
		["天鹅堡","2号楼","1单元","402","高松","123456012","987654012","董新召",13548268415,"民用住宅","天鹅堡换热站","地暖","63.4","2.9","高松",3602,"2018-04-16"],
		["上村花苑","1号楼","1单元","101","孙江平","123456013","987654013","董新召",13548268415,"民用住宅","上村花苑换热站","地暖","48.7","2.9","孙江平",3602,"2018-04-16"],
		["上村花苑","1号楼","1单元","102","崔志强","123456014","987654014","董新召",13548268415,"民用住宅","上村花苑换热站","地暖","97.8","2.9","崔志强",3602,"2018-04-16"],
		["上村花苑","1号楼","1单元","302","付乾坤","123456015","987654015","董新召",13548268415,"民用住宅","上村花苑换热站","地暖","63.4","2.9","付乾坤",3602,"2018-04-16"],
		["上村花苑","1号楼","2单元","204","王丽霞","123456016","987654016","董新召",13548268415,"民用住宅","上村花苑换热站","地暖","48.7","2.9","王丽霞",3602,"2018-04-16"],
		["上村花苑","2号楼","1单元","101","傅焕","123456017","987654017","董新召",13548268415,"民用住宅","上村花苑换热站","地暖","97.8","2.9","傅焕",3602,"2018-04-16"],
		["上村花苑","2号楼","1单元","402","崔继斌","123456018","987654018","董新召",13548268415,"民用住宅","上村花苑换热站","地暖","48.7","2.9","崔继斌",3602,"2018-04-16"],
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
		var rwbh = $("#rwbm").val();
		if(rwbh == ""){
				
			var xq = $('#xq').val();
			var ld = $('#ldh').val();
			var dy = $('#dyh').val();
			var hh = $('#hh').val();
			for(var i = 0 ; i < xinList.length ; i ++){
				 if( xq == xinList[i][0] && ld == xinList[i][1] && dy == xinList[i][2] && hh == xinList[i][3]){
					var inp = $(".khxx_input");
					for(var j = 0;j < inp.length; j ++){
						if(j == 18){
							inp[j].value = xinList[i][j] + "m³";
						}else if(j == 19){
							inp[j].value = xinList[i][j] + "m";
						}else{
							inp[j].value = xinList[i][j];
						}
					}
				
				 }
			 }
		}else{
			for(var x = 0 ; x < xinList.length ; x ++){
				if(rwbh == xinList[x][6]){
					var inp = $(".khxx_input");
					for(var j = 0;j < inp.length; j ++){
						inp[j].value = xinList[x][j];
					}
				}
			}
		}
	});
	
	
//	查看
	
	$(".checkinp").click(function(){
		var idnum = parseInt($(this).attr("alt"));
		var check = $(this);
		var inp = $(".khxx_input");
		for(var j = 0;j < inp.length; j ++){
			inp[j].value = xinList[idnum][j];
		}
		$("#subbtn").val("审核通过");
	});
	
})



//楼栋选择
function ldselect(xinwordList){
	 // 获取被选中的option标签
	 var xq = $('#xq  option:selected').val();
	 $("#ldh").html("<option value='' disabled selected hidden>--选择楼栋号--</option>");
	 $("#dyh").html("<option value='' disabled selected hidden>--选择单元号--</option>");
	 $("hh").html("<option value='' disabled selected hidden>--选择户号--</option>");

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
