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
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].CNQ;
			arr1[1] = json[i].YhName;
			arr1[2] = json[i].YHBM;
			arr1[3] = json[i].XqName;
			arr1[4] = json[i].BuildNO;
			arr1[5] = json[i].CellNO;
			arr1[6] = json[i].HouseNO;
			
			arr1[7] = json[i].JFSJ;
			arr1[8] = json[i].IDNum;
			arr1[9] = json[i].YSJE;
			arr1[10] = json[i].JFJE;
			arr1[11] = json[i].SFFS;
			arr1[12] = json[i].JIFFS;
			
			arr1[13] = json[i].HeatArea;
			arr1[14] = json[i].PJHM;
			arr1[15] = json[i].LSDH;
			
			shebList.push(arr1);
		};
	}
	var YhList;
	$.ajax({
			url : getRootPath()+"/jfxx/findJfxx.action", 
			async : false,
			dataType : "json",
			data : {
				
				"JFTJ":"支付宝",
			},
			success : function(data) {
				
				YhList=data.list;
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
		
				
				for (var j = 0 ; j <newlist[i].length ; j ++) {
					/*if(j==0){

						html += "<td style='display:none;'>" + newlist[i][j] + "</td>";
    					
    				}else{*/
    					 html += "<td>" + newlist[i][j] + "</td>"
    				/*s*/
                 
				}
			
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

}

function compareWord(xq,ld,dy,hh,compareWordList){

	var json;
	compareWordList.length=0;
	$.ajax({
		url : getRootPath()+"/jfxx/findJfxx.action", 
		async : false,
		dataType : "json",
		data : {
			"CNQ":$("#CNQ").val(),
			"JFTJ":"支付宝",
			"YhName":$("#YhName").val(),
			"IDNum":$("#IDNum").val(),
			"YHBM":$("#YHBM").val(),
			"startTime":$("#startTime").val(),
			"endTime":$("#endTime").val(),
			"SFFS":$("#SFFS").val(),
			"XqName":xq,
			"BuildNo":ld,
			"CellNO":dy,
			"hh":hh,
		},
		success : function(data) {
		 json=data.list;
		
		}
	});

	for (var i = 0 ; i < json.length ; i ++) {
		var arr1 = [];
		arr1[0] = json[i].CNQ;
		arr1[1] = json[i].YhName;
		arr1[2] = json[i].YHBM;
		arr1[3] = json[i].XqName;
		arr1[4] = json[i].BuildNO;
		arr1[5] = json[i].CellNO;
		arr1[6] = json[i].HouseNO;
		
		arr1[7] = json[i].JFSJ;
		arr1[8] = json[i].IDNum;
		arr1[9] = json[i].YSJE;
		arr1[10] = json[i].JFJE;
		arr1[11] = json[i].SFFS;
		arr1[12] = json[i].JIFFS;
		
		arr1[13] = json[i].HeatArea;
		arr1[14] = json[i].PJHM;
		arr1[15] = json[i].LSDH;
		compareWordList.push(arr1);
	};

}	
