function getRootPath(){      
	var curWwwPath=window.document.location.href;      
    var pathName=window.document.location.pathname;      
    var pos=curWwwPath.indexOf(pathName); 
    var localhostPaht=curWwwPath.substring(0,pos);      
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);      
    return(localhostPaht+projectName);  
} 

$(document).ready(function(){
	var shebList = [];
$("#close").click(function(){
		
		
		$.ajax({
			url : getRootPath()+"/rwxxCont/UpdateHt.action", 
			async : false,
			dataType : "json",
			data : {
				
				"ht":$("#ueditorContent").val(),
				"id":$("#htid").val(),
				
			},
			success : function(data) {
			if(data.msg=="0"){
				$(".na_crea").hide();
				$("#ueditorContent").val("");
				var page=$("#currentNum").html();
				search(page);
				return;
			}else{
				alert("请登录后操作")
				return;
			}
				
			}
		});
	});
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].id;
			arr1[1] = json[i].SHJG;
			arr1[2] = json[i].IDNum;
			arr1[3] = json[i].xqName;
			arr1[4] = json[i].BuildNo;
			arr1[5] = json[i].CellNO;
			arr1[6] = json[i].HouseNO;
			arr1[7] = json[i].YhName;
			arr1[8] = json[i].YHBM;
			arr1[9] = json[i].RWBM;
			arr1[10] = json[i].RWRQ;
			arr1[11] = json[i].SFRZ;
			arr1[12] = json[i].SFDB;
			arr1[13] = json[i].CNSS;
			arr1[14] = json[i].JZMC;
			
			arr1[15] = json[i].JZCG;
			arr1[16] = json[i].DJ;
			arr1[17] = json[i].RWFY;
			arr1[18] = json[i].HTQSRQ;
			arr1[19] = json[i].HTJSRQ;
			if(json[i].ht!=null){
				arr1[20] = json[i].ht;	
			}else{
				arr1[20] ="未上传合同"
			}
			shebList.push(arr1);
		};
	}
	$(".ht").unbind().click(function(){
		wz_look(this)
	});
	var YhList;
	$.ajax({
			url : getRootPath()+"/rwxxCont/rwxx.action", 
			async : false,
			dataType : "json",
			data : {
				
				
			},
			success : function(data) {
				
				YhList=data.rwxx;
				jsArrChange(YhList);
			}

		});

	tbodydis("",shebList,1)
	function search(page){
		var xq = $('#xq').val();
		var ld = $('#ldh').val();
		var dy = $('#dyh').val();
		var hh = $('#hh').val();
		var compareWordList = [];
		compareWord(xq,ld,dy,hh,compareWordList);
		shebList=compareWordList;		
		
	
		tbodydis(shebList,compareWordList,page);
	}
$("#search_btn").click(function(){
	search(1);
		

	});

	var tableObject = $('#sheb_table_body table'); //获取id为xincreate_table_body的table对象
	var tbHead = tableObject.children('thead'); //获取table对象下的thead
	var tbHeadTh = tbHead.find('tr th'); //获取thead下的tr下的th
	var tbBody = tableObject.children('tbody'); //获取table对象下的tbody
	var tbBodyTr = tbBody.find('tr'); //获取tbody下的tr

	var sortIndex = 1;

	tbHeadTh.each(function() { //遍历thead的tr下的th
		var thisIndex = tbHeadTh.index($(this))+1; //获取th所在的列号

		var type ="";
		$(this).click(function() { //给当前表头th增加点击事件
			tbHeadTh.find("span").show();
			if(sortIndex%2 == 1){//奇数偶数显示
				$(this).find(".span-up").show();
				$(this).find(".span-down").hide();
			}else{
				$(this).find(".span-up").hide();
				$(this).find(".span-down").show();
			}
			var table = $('#sheb_table_body table'); 
			var body = table.children('tbody'); 
			var bodytr = body.find('tr');
			checkColumnValue(thisIndex,table,bodytr);
		});
	});

	//对表格排序
	function checkColumnValue(index,table,bodytr) {
		var trsValue = new Array();
		
		bodytr.each(function() {
			var tds = $(this).find('td');
			//获取行号为index列的某一行的单元格内容与该单元格所在行的行内容添加到数组trsValue中
			var data = $(tds[index]).html();//parseFloat($(tds[index]).html()) || 
			if(isNaN(data)&&!isNaN(Date.parse(data))){
			type = "string";
			}else if (parseFloat(data)) {
				type = "number";
			}else{
				type = "string";
			}
			
			trsValue.push(type + ".separator" + $(tds[index]).html() + ".separator" + $(this).html());
			$(this).html("");
		});
		
		var len = trsValue.length;
		
		if(sortIndex%2 == 0) {
			//如果已经排序了则直接倒序
			trsValue.reverse();
		} else {
			for(var i = 0; i < len; i++) {
				//split() 方法用于把一个字符串分割成字符串数组
				//获取每行分割后数组的第一个值,即此列的数组类型,定义了字符串\数字\Ip
				type = trsValue[i].split(".separator")[0];
				for(var j = i + 1; j < len; j++) {
					//获取每行分割后数组的第二个值,即文本值
					value1 = trsValue[i].split(".separator")[1];
					//获取下一行分割后数组的第二个值,即文本值
					value2 = trsValue[j].split(".separator")[1];
					//接下来是数字\字符串等的比较
					if(type == "number") {
						value1 = value1 == "" ? 0 : value1;
						value2 = value2 == "" ? 0 : value2;
						if(parseFloat(value1) > parseFloat(value2)) {
							var temp = trsValue[j];
							trsValue[j] = trsValue[i];
							trsValue[i] = temp;
						}
					} else {
						if(value1.localeCompare(value2) > 0) { //该方法不兼容谷歌浏览器
							var temp = trsValue[j];
							trsValue[j] = trsValue[i];
							trsValue[i] = temp;
						}
					}
				}
			}
		}

		for(var i = 0; i < len; i++) {
			table.find("tbody tr:eq(" + i + ")").html(trsValue[i].split(".separator")[2]);
		}

		sortIndex += 1;
	}
});

//表格写入函数带分页
function tbodydis(oldlist,newlist,page){
	

	
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
				html += "<td><input class='ht' type='button' value='查看合同' /></td>";
				html += "<td><input class='shtg'  type='button' value='同意' /><input class='shtg' type='button' value='驳回' /></td>";
				
				for (var j = 0 ; j <newlist[i].length ; j ++) {
					if(j==20||j==0){
						 html += "<td style='display:none'>" + newlist[i][j] + "</td>"
					}else{
						html += "<td>" + newlist[i][j] + "</td>"
					}
                 
				}
				html += "</tr>"
			}
		}
		sheb_body.innerHTML = html;

	
		
	
		var classname = "";
		$("table tbody td").hover(function() {
			classname = $(this).parent().attr("class");
			$(this).parent().removeClass(classname).addClass("blue");
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').addClass('blue')
		}, function() {
			$(this).parent().removeClass("blue").addClass(classname);
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').removeClass('blue')
		});
		$(".ht").unbind().click(function(){
			wz_look(this)
		});
		$(".na_crea .close").click(function(){
			$(".wz_look").hide();
			$("#ueditorContent").val("")
		});
		
		$(".shtg").click(function(){
			shtg(this);
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
	pageInit(page, 15);
	$(".ht").unbind().click(function(){
		wz_look(this)
	});
	$(".na_crea .close").click(function(){
		$(".wz_look").hide();
		$("#ueditorContent").val("")
	});
	$(".shtg").click(function(){
		shtg(this);
	});
	
	
	function shtg(p){
		var xintr = $(p).parent().parent().children();
		var id=xintr[2].innerHTML
		
		 layer.confirm('是否审核', function(index) {
			                 $.ajax({
			                     type: "post",
			                    url:getRootPath()+"/rwxxCont/UpdateRwxx.action", 
			                      dataType:'json',
			                  	data:{	
			      					"id":id,
			      					"SHJG":$(p).val(),
			      				},
			                     dataType: "json",
			                      success: function (data) {
			                    	   layer.close(index);
			                    	   alert(data.msg);
			                          window.location.reload();
			                     },
			  
			                 })
			              });
	}
}

function compareWord(xq,ld,dy,hh,compareWordList){

	var json;
	compareWordList.length=0;
	$.ajax({
		url : getRootPath()+"/rwxxCont/rwxx.action", 
		async : false,
		dataType : "json",
		data : {
			
			"XqName":xq,
			"BuildNo":ld,
			"CellNO":dy,
			"HouseNo":hh,
			"startTime":$("#startTime").val(),
			"endTime":$("#endTime").val(),
		},
		success : function(data) {
		 json=data.rwxx;
		
		}
	});

	for (var i = 0 ; i < json.length ; i ++) {
		var arr1 = [];
		arr1[0] = json[i].id;
		arr1[1] = json[i].SHJG;
		arr1[2] = json[i].IDNum;
		arr1[3] = json[i].xqName;
		arr1[4] = json[i].BuildNo;
		arr1[5] = json[i].CellNO;
		arr1[6] = json[i].HouseNO;
		arr1[7] = json[i].YhName;
		arr1[8] = json[i].YHBM;
		arr1[9] = json[i].RWBM;
		arr1[10] = json[i].RWRQ;
		arr1[11] = json[i].SFRZ;
		arr1[12] = json[i].SFDB;
		arr1[13] = json[i].CNSS;
		arr1[14] = json[i].JZMC;
		
		arr1[15] = json[i].JZCG;
		arr1[16] = json[i].DJ;
		arr1[17] = json[i].RWFY;
		arr1[18] = json[i].HTQSRQ;
		arr1[19] = json[i].HTJSRQ;
		if(json[i].ht!=null){
			arr1[20] = json[i].ht;	
		}else{
			arr1[20] ="未上传合同"
		}
		compareWordList.push(arr1);
	};

}	
function wz_look(p){
	var xintd = $(p).parent().parent().children();
	$(".na_crea").show();
	
	$("#close1").click(function(){
		$(".na_crea").hide();
		$("#ueditorContent").val("")
	});
	var str=xintd[22].innerHTML;

	var str1= str.replace("http://192.168.254.3:8090/",ip).replace("http://120.194.242.219:8090/",ip)
	/*var str1= str.replace("http://192.168.254.3:8090/","http://120.194.242.219:8090/")*/
	
	console.log(str1)
	$("#ueditorContent").val(str1);
	
	$("#htid").val(xintd[2].innerHTML);
	
	var E = window.wangEditor;
	var editor = new E('#E');
	var $ueditorContent = $('#ueditorContent');
	editor.customConfig.onchange = function (html) {
	    // 监控变化，同步更新到 textarea
	    $ueditorContent.val(html);
	};
	editor.customConfig.uploadImgServer = getRootPath()+"/rwxxCont/fileUp.action" ;
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
	
	
	 editor.txt.html($ueditorContent.val());
	 
	
}