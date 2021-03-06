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
	 dateStr = $("#startTime").val()
	   dateStr = dateStr.replace(/-/g,'/');
	   var timeTamp = new Date(dateStr).getTime();
	   var date = new Date();
	   $("#startTime").val(date.format('yyyy-MM-dd'));
	   date.setTime(timeTamp + 1000*60*60*24);
	 var xqList=[];
	 var dataList=[];
	 var dataList1=[];
		 $.ajax({
				url : getRootPath()+"/yhInfo/findXq.action", 
				async : false,
				dataType : "json",
				data : {
					
				},
				success : function(data) {
					
					var opt="";
					
					for(var i=0; i<data.Xq.length; i++){
						xqList.push(data.Xq[i].XqName)
					}
					
					 for(var i=0; i<xqList.length; i++){
						 $.ajax({
								url : getRootPath()+"/xxgl/grbzt.action", 
								async : false,
								dataType : "json",
								data : {
									"xqm":xqList[i],
								},
								success : function(data) {
							    var map= data.grbzt;
								var arr =[];
								arr[0]=xqList[i];
								arr[1]=map.grmj;
								arr[2]=map.wgrmj;
								dataList.push(arr);
								}
							});
						 $.ajax({
								url : getRootPath()+"/xxgl/grmjbzt.action", 
								async : false,
								dataType : "json",
								data : {
									"xqm":xqList[i],
								},
								success : function(data) {
							    var map= data.grbzt;
								var arr1 =[];
								arr1[0]=xqList[i];
								arr1[1]=map.grmj;
								arr1[2]=map.wgrmj;
								dataList1.push(arr1);
								}
							});
						}
				}

			});
		 var gryh=[];
		 var wgryh=[];
		 for(var i=0; i<dataList.length; i++){
			 var js=dataList[i][1];
			 var js1=dataList[i][2];
			 gryh.push(js);
			 wgryh.push(js1);
		 }
		 var grmj=[];
		 var wgrmj=[];
		 for(var i=0; i<dataList1.length; i++){
			 var js=dataList1[i][1];
			 var js1=dataList1[i][2];
			 grmj.push(js);
			 wgrmj.push(js1);
		 }
	//柱状图
		 $("#search_btn").click(function(){
			
			 twdbar(optbar1,"pie-2",0,$("#type").val());
			 
			 tgrbar(optbar,grbardata,"pie-1",0,$("#type").val());

		});
			  var chart = Highcharts.chart('container',{
				 	chart: {
				 		type: 'column'
				 	},
				 	title: {
				 		text: '缴费和未交费柱状图'
				 	},
				 	subtitle: {
				 		text: ''
				 	},
				 	xAxis: {

				 		categories: xqList,
				 		crosshair: true
				 	},
				 	yAxis: {
				 		min: 0,
				 		title: {
				 			text: '人数'
				 		}
				 	},
				 	tooltip: {
				 		// head + 每个 point + footer 拼接成完整的 table
				 		headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
				 		pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
				 		'<td style="padding:0"><b>{point.y:.1f} 人</b></td></tr>',
				 		footerFormat: '</table>',
				 		shared: true,
				 		useHTML: true
				 	},
//				 	plotOptions: {
//				 		column: {
//				 			borderWidth: 0
//				 		}
//				 	},
				 	plotOptions: {
						column: {
							// 关于柱状图数据标签的详细配置参考：https://api.hcharts.cn/highcharts#plotOptions.column.dataLabels
							dataLabels: {
								enabled: true,
								// verticalAlign: 'top', // 竖直对齐方式，默认是 center
								inside: true
							}
						}
					},

				 	series:  [{
				 		name: '供热用户',
				 		data: gryh
				 	}, {
				 		name: '未供热用户',
				 		data: wgryh
				 	}]
				 });
			  var chart = Highcharts.chart('container_mj',{
				 	chart: {
				 		type: 'column'
				 	},
				 	title: {
				 		text: '供热面积柱状图'
				 	},
				 	subtitle: {
				 		text: ''
				 	},
				 	xAxis: {

				 		categories: xqList,
				 		crosshair: true
				 	},
				 	yAxis: {
				 		min: 0,
				 		title: {
				 			text: '㎡'
				 		}
				 	},
				 	tooltip: {
				 		// head + 每个 point + footer 拼接成完整的 table
				 		headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
				 		pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
				 		'<td style="padding:0"><b>{point.y:.1f} ㎡</b></td></tr>',
				 		footerFormat: '</table>',
				 		shared: true,
				 		useHTML: true
				 	},
//				 	plotOptions: {
//				 		column: {
//				 			borderWidth: 0
//				 		}
//				 	},
				 	plotOptions: {
						column: {
							// 关于柱状图数据标签的详细配置参考：https://api.hcharts.cn/highcharts#plotOptions.column.dataLabels
							dataLabels: {
								enabled: true,
								// verticalAlign: 'top', // 竖直对齐方式，默认是 center
								inside: true
							}
						}
					},

				 	series:  [{
				 		name: '供热面积',
				 		data: grmj
				 	}, {
				 		name: '未供热面积',
				 		data: wgrmj
				 	}]
				 });
	

//				饼状图
				var optbar = {
						chart: {
								plotBackgroundColor: null,
								plotBorderWidth: null,
								plotShadow: false,
								type: 'pie'
						},
						title: {
								text: null
						},
						subtitle:{
							
						},
						tooltip: {
								pointFormat: ' <b>{point.y:.1f}元<br/>{point.percentage:.1f}%</b>'
						},
						plotOptions: {
								pie: {
										allowPointSelect: true,
										cursor: 'pointer',
										dataLabels: {
												enabled: false
										},
										showInLegend: true
								}
						}
						
				};
				var optbar1 = {
						chart: {
								plotBackgroundColor: null,
								plotBorderWidth: null,
								plotShadow: false,
								type: 'pie'
						},
						title: {
								text: null
						},
						subtitle:{
							
						},
						tooltip: {
								pointFormat: ' <b>{point.y}人<br/>{point.percentage:.1f}%</b>'
						},
						plotOptions: {
								pie: {
										allowPointSelect: true,
										cursor: 'pointer',
										dataLabels: {
												enabled: false
										},
										showInLegend: true
								}
						}
						
				};
				//欠费饼图
				var grbardata = [
					
				];
				
				tgrbar(optbar,grbardata,"pie-1",0);
				
				
				//新入网饼图
				
				
				twdbar(optbar1,"pie-2",0,"qb");
			 
			 
});



function twdbar(optbar1,pie,m,type){
	 var xqList=[];
	 var dataList=[];
	 var dateStr = $("#startTime").val()
	   dateStr = dateStr.replace(/-/g,'/');
	   var timeTamp = new Date(dateStr).getTime();
	   var date = new Date();
	  
	   date.setTime(timeTamp + 1000*60*60*24);
	   var str=""
	   var end=""
		  
	   if(type=="mr"){
		   str=$("#startTime").val();
		   end=date.format('yyyy-MM-dd');
	   }
		 $.ajax({
				url : getRootPath()+"/yhInfo/findXq.action", 
				async : false,
				dataType : "json",
				data : {
					
				},
				success : function(data) {
					
					var opt="";
					
					for(var i=0; i<data.Xq.length; i++){
						xqList.push(data.Xq[i].XqName)
					}
					
					 for(var i=0; i<xqList.length; i++){
						 $.ajax({
								url : getRootPath()+"/xxgl/grbzt.action", 
								async : false,
								dataType : "json",
								data : {
									"xqm":xqList[i],
									"startTime":str,
									"endTime":end,
								},
								success : function(data) {
							    var map= data.grbzt;
								var arr =[];
								arr[0]=xqList[i];
								arr[1]=map.grmj;
								arr[2]=map.wgrmj;
								
								dataList.push({name:xqList[i],y:parseInt(map.grmj)});
								}
							});
						}
				}

			});
		
		 optbar1.subtitle.text =  "缴费人数比例图";
		 optbar1.series = [{
						name: '',
						colorByPoint: true,
						data: dataList
					}];
					var chart = Highcharts.chart(pie, optbar1);
	
}



function tgrbar(optbar,grbardata,pie,m,type){
	var pieList=[];
	var	dateStr = $("#startTime").val()
	   dateStr = dateStr.replace(/-/g,'/');
	   var timeTamp = new Date(dateStr).getTime();
	   var date = new Date();
	  
	   date.setTime(timeTamp + 1000*60*60*24);
	   var str=""
	   var end=""
		   
	   if(type=="mr"){
		   str=$("#startTime").val();
		   end=date.format('yyyy-MM-dd');
	   }
	$.ajax({
		url : getRootPath()+"/jfxx/findJfze.action", 
		async : false,
		dataType : "json",
		data : {
			"startTime":str,
			"endTime":end,
		},
		success : function(data) {
	    var list= data.list;
	    for(var i=0; i<list.length; i++){
	    	pieList.push({name:list[i].XqName,y:list[i].je});
	    }
		}
	});
				 optbar.subtitle.text = "缴费金额比例图";
					optbar.series = [{
						name: '',
						colorByPoint: true,
						data: pieList
					}];
					var chart = Highcharts.chart(pie, optbar);
		
	
}


function fDateTime(num){
	var curDate = new Date();
	var nowTimeDay = new Date(curDate - 24*60*60*1000*num).getDate();
	var nowTimeMonth = new Date(curDate - 24*60*60*1000*num).getMonth()+1;
	var nowTime = nowTimeMonth + "-" + nowTimeDay;
return nowTime;
}