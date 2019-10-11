function getRootPath(){      
	var curWwwPath=window.document.location.href;      
    var pathName=window.document.location.pathname;      
    var pos=curWwwPath.indexOf(pathName); 
    var localhostPaht=curWwwPath.substring(0,pos);      
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);      
    return(localhostPaht+projectName);  
} 
$(function () {

	 var xqList=[];
	 var dataList=[];
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
	//柱状图
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
								pointFormat: ' <b>{point.y:.1f}<br/>{point.percentage:.1f}%</b>'
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
					{name:"金领小区",qf:13864.3},
					{name:"天鹅堡",qf:8617.8},
					{name:"上村花苑",qf:4386.2}
				];
				
				tgrbar(optbar,grbardata,"pie-1",0);
				
				
				//新入网饼图
				var wdbardata = [
					{name:"金领小区",rs:667},
					{name:"天鹅堡",rs:281},
					{name:"上村花苑",rs:497}
				];
				
				twdbar(optbar,wdbardata,"pie-2",0);
			 
			 
});


//新入网饼图
function twdbar(optbar,wdbardata,pie,m){

				 optbar.subtitle.text =  "新入网人数比例图";
					optbar.series = [{
						name: 'Brands',
						colorByPoint: true,
						data: [{
							name: '金领小区',
							y: wdbardata[m].rs
						},{
							name: '天鹅堡',
							y: wdbardata[m].rs
						},{
							name: '上村花苑',
							y: wdbardata[m].rs,
							sliced: true,
							selected: true
						}]
					}];
					var chart = Highcharts.chart(pie, optbar);
	
}


//欠费饼图
function tgrbar(optbar,grbardata,pie,m){
	var pieList=[];
	$.ajax({
		url : getRootPath()+"/jfxx/findJfze.action", 
		async : false,
		dataType : "json",
		data : {
			
		},
		success : function(data) {
	    var list= data.list;
	    for(var i=0; i<list.length; i++){
	    	pieList.push({name:list[i].XqName,y:list[i].je});
	    }
		}
	});
				 optbar.subtitle.text = "缴费比例图";
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