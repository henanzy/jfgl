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
/*(function ($) {
    var printAreaCount = 0;
    $.fn.printArea = function () {
        var ele = $(this);
        var idPrefix = "printArea_";
        removePrintArea(idPrefix + printAreaCount);
        printAreaCount++;
        var iframeId = idPrefix + printAreaCount;
        var iframeStyle = 'position:absolute;width:0px;height:0px;left:-500px;top:-500px;';
        iframe = document.createElement('IFRAME');
        $(iframe).attr({
            style: iframeStyle,
            id: iframeId
        });
        document.body.appendChild(iframe);
        var doc = iframe.contentWindow.document;
        $(document).find("link").filter(function () {
            return $(this).attr("rel").toLowerCase() == "stylesheet";
        }).each(
                function () {
                    doc.write('<link type="text/css" rel="stylesheet" href="'
                            + $(this).attr("href") + '" >');
                });
        doc.write('<div class="' + $(ele).attr("class") + '">' + $(ele).html()
                + '</div>');
        doc.close();
        var frameWindow = iframe.contentWindow;
        frameWindow.close();
        frameWindow.focus();
        frameWindow.print();
    }
    var removePrintArea = function (id) {
        $("iframe#" + id).remove();
    };
})(jQuery);*/

$(document).ready(function(){
	
	
	function show(p){
		$(".jcfk").show();
		$("input[name='JCQK'][value='正常']").attr("checked",true); 
		$('#JCWT').val("");
		$('#JCRQ').val("");
		$('#JCR').val("");
		$('#JCBZ').val("");
		$('#CLQK').val("");
		$('#CLJG').val("");
		$('#CLRQ').val("");
		$('#CLBZ').val("");
		var xintr = $(p).children();
		
		var id=xintr[0].innerHTML;
		if(id==null||id==""||id=="undefined"){
			alert("该住户未登记用户编码")
			return;
		}
		$('#YHBM').val(id);
		var JcList;
		$.ajax({
				url : getRootPath()+"/jc/FindJcxx.action", 
				
				dataType : "json",
				data : {
					"YHBM":id,
					
				},
				success : function(data) {
					
					JcList=data.list;
					if(JcList.length>0){
						var map =JcList[0];
						$("input[name='JCQK'][value="+map.JCQK+"]").attr("checked",true); 
						$('#JCWT').val(map.JCWT);
						$('#JCRQ').val(map.JCRQ);
						$('#JCR').val(map.JCR);
						$('#JCBZ').val(map.JCBZ);
						$('#CLQK').val(map.CLQK);
						$('#CLJG').val(map.CLJG);
						$('#CLRQ').val(map.CLRQ);
						$('#CLBZ').val(map.CLBZ);
						
					}
				}

			});
		return false;
	}
	
	function search(){
		var xq = $('#xq').val();
		var ld = $('#ldh').val();
		var dy = $('#dyh').val();
		var hh = $('#hh').val();
		if(ld==""){
			alert("请选择楼栋")
			return;
		}
		 $.ajax({
				url : getRootPath()+"/yhInfo/findDy.action", 
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
						
						/*$("#dyh").append("<option value='"+dy[i].CellNo+"'>"+dy[i].CellNo+"</option>");*/
						$("#table_body").append("<table border='1' cellspacing='0' cellpadding='0'>" +
								"<tbody class='cellone' id='"+dy[i].CellNo+"'>" +
								
										"</tbody></table>");
						$.ajax({
							url : getRootPath()+"/yhInfo/findYh.action", 
							async : false,
							dataType : "json",
							data : {
								"xqm" : $("#xq").val(),
								"ldh" : $("#ldh").val(),
								"dyh" : dy[i].CellNo,
							},
							success : function(data) {
								var list=data.list;
								var size=0;
								
								for(var y=0; y<list.length; y=y+size){
									
									size=0;
									var s;
									if(y+size>=list.length){
										return;
										
									}else{
										s=y+size;
									}
									
									
									 $.ajax({
											url : getRootPath()+"/yhInfo/findTc.action", 
											async : false,
											dataType : "json",
											data : {
												"xqm" : $("#xq").val(),
												"ldh" : $("#ldh").val(),
												"dyh" : dy[i].CellNo,
												"hh" : list[s].HouseNO,
											},
											success : function(data) {
												var Clist=data.list;
												size=Clist.length;
											
												$("#"+dy[i].CellNo).append("<tr border='1' class='cellone-body' id='"+dy[i].CellNo+"_"+y+"'></tr>");
												for(var z=0; z<Clist.length; z++){
													/*$("#"+dy[i].CellNo+"_"+y).append("<td><div class='body-hh'>"+Clist[z].HouseNO+"</div><div class='body-mj'>"+Clist[z].HeatArea+"</div><div class='body-lb'>居民</div></td>")*/
													var hh="";
													
													if(Clist[z].JFBS=="是"){
														hh="<th colspan='2' style='font-weight:bold;background-color:#33FF33;'><font color='red'>"+Clist[z].HouseNO+"</font></th>"
													}else{
														hh="<th colspan='2' style='font-weight:bold;'>"+Clist[z].HouseNO+"</th>"
													}
													var wd=""
														if(Clist[z].JFBS=="是"){
															wd=" <th>已缴</th> <th>"+Clist[z].HeatArea+"㎡</th>"
														}else{
															wd=" <th>未缴</th> <th>"+Clist[z].HeatArea+"㎡</th>"
														}
													$("#"+dy[i].CellNo+"_"+y).append("<td border='1' class='jc'><span style='display:none'>"+Clist[z].YHBM+"</span><table  ><tr>" +
															hh +
															"</tr><tr>" +
															wd +
															" </tr>" +
															
															" </table></td>")
																	
												}
											}

										});
								}
							}

						});
						$("#"+dy[i].CellNo).prepend("<tr class='cellone-head'><td colspan='2'>"+dy[i].CellNo+"单元</td></tr>") 
					}	
				}

			});
		 
	}
	
	
$("#search_btn").click(function(){
	$("#table_body").empty();
	search();
	});
$("#dayin").click(function(){
	
	window.print();
	});
$("#dayin1").click(function(){
	
	window.print();
	});
search();
});
function search(){
	var xq = $('#xq').val();
	var ld = $('#ldh').val();
	var dy = $('#dyh').val();
	var hh = $('#hh').val();
	if(ld==""){
		alert("请选择楼栋")
		return;
	}
	 $.ajax({
			url : getRootPath()+"/yhInfo/findDy.action", 
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
					
					/*$("#dyh").append("<option value='"+dy[i].CellNo+"'>"+dy[i].CellNo+"</option>");*/
					$("#table_body").append("<table border='1' cellspacing='0' cellpadding='0'>" +
							"<tbody class='cellone' id='"+dy[i].CellNo+"'>" +
							
									"</tbody></table>");
					$.ajax({
						url : getRootPath()+"/yhInfo/findYh.action", 
						async : false,
						dataType : "json",
						data : {
							"xqm" : $("#xq").val(),
							"ldh" : $("#ldh").val(),
							"dyh" : dy[i].CellNo,
						},
						success : function(data) {
							var list=data.list;
							var size=0;
							
							for(var y=0; y<list.length; y=y+size){
							
								var s;
								if(y+size>=list.length){
									return;
									
								}else{
									s=y+size;
								}
								
								
								 $.ajax({
										url : getRootPath()+"/yhInfo/findTc.action", 
										async : false,
										dataType : "json",
										data : {
											"xqm" : $("#xq").val(),
											"ldh" : $("#ldh").val(),
											"dyh" : dy[i].CellNo,
											"hh" : list[s].HouseNO,
										},
										success : function(data) {
											var Clist=data.list;
											size=Clist.length;
											$("#"+dy[i].CellNo).prepend("<tr class='cellone-body' id='"+dy[i].CellNo+"_"+y+"'></tr>");
											for(var z=0; z<Clist.length; z++){
												/*$("#"+dy[i].CellNo+"_"+y).append("<td><div class='body-hh'>"+Clist[z].HouseNO+"</div><div class='body-mj'>"+Clist[z].HeatArea+"</div><div class='body-lb'>居民</div></td>")*/
												var hh="";
												
												if(Clist[z].JFBS=="是"){
													hh="<th colspan='2' style='font-weight:bold;background-color:#33FF33;'><font color='red'>"+Clist[z].HouseNO+"</font></th>"
												}else{
													hh="<th colspan='2' style='font-weight:bold;'>"+Clist[z].HouseNO+"</th>"
												}
												var wd=""
													if(Clist[z].JFBS=="是"){
														wd=" <th>已缴</th> <th>"+Clist[z].HeatArea+"㎡</th>"
													}else{
														wd=" <th>未缴</th> <th>"+Clist[z].HeatArea+"㎡</th>"
													}
												$("#"+dy[i].CellNo+"_"+y).append("<td class='jc'><span style='display:none'>"+Clist[z].YHBM+"</span><table  ><tr>" +
														hh +
														"</tr><tr>" +
														wd +
														" </tr>" +
														
														"</table></td>")
																
											}
										}

									});
							}
						}

					});
					$("#"+dy[i].CellNo).prepend("<tr class='cellone-head'><td colspan='2'>"+dy[i].CellNo+"单元</td></tr>") 
				}	
			}

		});
	/* $(".jc").click(function(){
			show(this);
		});	*/
}
function jc(){
	var JCQK=$("input[name='JCQK']:checked").val();
	
	$.ajax({
		url : getRootPath()+"/jc/InsertJcxx.action", 
		async : false,
		dataType : "json",
		data : {
			"JCRQ":$("#JCRQ").val(),
			"JCWT":$("#JCWT").val(),
			"YHBM":$("#YHBM").val(),
			"JCR":$("#JCR").val(),
			"JCBZ":$("#JCBZ").val(),
			"JCQK":JCQK,						
			"CLQK":$("#CLQK").val(),
			"CLRQ":$("#CLRQ").val(),
			"CLJG":$("#CLJG").val(),
			"CLBZ":$("#CLBZ").val(),
			
		},
		success : function(data) {
			if(data.msg=="1"){
				alert("登记成功！")
				$(".jcfk").hide();
				$("#table_body").empty();
				
				search();
			}
			else{
				alert("系统错误，请稍后再试")
			}
			
		}

	});
}





