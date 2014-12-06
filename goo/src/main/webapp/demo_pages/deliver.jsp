<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>下发表格</title> 

    <link rel="stylesheet" href="css/header.css" type="text/css" />
    <link rel="stylesheet" href="css/style1.css" type="text/css" />
    <link rel="stylesheet" href="css/table_assign.css" type="text/css" />
    <link rel="stylesheet" href="css/footer.css" type="text/css" />
    <link rel="stylesheet" href="css/modal.css" type="text/css" /> 
    <link rel="stylesheet" href="css/searchbox_style.css" type="text/css" />    

    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>
<body>
<form class="above-table" style="margin-top:50px;margin-left:22px;font-size:15px;font-family:"微软雅黑"">
					填报单位&nbsp&nbsp&nbsp
					<input type="text" style="width:80px" value="静安区" disabled/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp截止日期
					<select>						
						<option value="1">2030年</option>
						<option value="2">2029年</option>
						<option value="3">2027年</option>
						<option value="4">2026年</option>
						<option value="5">2025年</option>
						<option value="6">2024年</option>
						<option value="7">2023年</option>
						<option value="8">2022年</option>
						<option value="9">2021年</option>
						<option value="11">2020年</option>
						<option value="12">2019年</option>
						<option value="13">2018年</option>
						<option value="14">2017年</option>
						<option value="15">2016年</option>
						<option value="16">2015年</option>
						<option value="17" selected="selected">2014年</option>
						<option value="18">2013年</option>
						<option value="19">2012年</option>
						<option value="20">2011年</option>
						<option value="21">2009年</option>
						<option value="22">2008年</option>
						<option value="23">2007年</option>
						<option value="24">2006年</option>
						<option value="25">2005年</option>
						<option value="26">2004年</option>
						<option value="27">2003年</option>
						<option value="28">2002年</option>
						<option value="29">2001年</option>
						<option value="30">2000年</option>
						<option value="31">1999年</option>
						
					</select>
					&nbsp&nbsp&nbsp&nbsp;
					<select>
						<option value="1">1月份</option>
						<option value="2">2月份</option>
						<option value="3">3月份</option>
						<option value="4">4月份</option>
						<option value="5">5月份</option>
						<option value="6">6月份</option>
						<option value="7">7月份</option>
						<option value="8">8月份</option>
						<option value="9">9月份</option>
						<option value="10" selected="selected">10月份</option>
						<option value="11">11月份</option>
						<option value="12">12月份</option>
					</select>
					&nbsp&nbsp&nbsp&nbsp;
					<select>						
						<option value="1" selected="selected">1日</option>
						<option value="2">2日</option>
						<option value="3">3日</option>
						<option value="4">4日</option>
						<option value="5">5日</option>
						<option value="6">6日</option>
						<option value="7">7日</option>
						<option value="8">8日</option>
						<option value="9">9日</option>
						<option value="10">10日</option>
						<option value="11">11日</option>
						<option value="12">12日</option>
						<option value="13">13日</option>
						<option value="14">14日</option>
						<option value="15">15日</option>
						<option value="16">16日</option>
						<option value="17">17日</option>
						<option value="18">18日</option>
						<option value="19">19日</option>
						<option value="20">20日</option>
						<option value="21">21日</option>
						<option value="22">22日</option>
						<option value="23">23日</option>
						<option value="24">24日</option>
						<option value="25">25日</option>
						<option value="26">26日</option>
						<option value="27">27日</option>
						<option value="28">28日</option>
						<option value="29">29日</option>
						<option value="30">30日</option>
						<option value="31">31日</option>						
					</select>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp时间点
					<select>
						
						<option value="1">2030年</option>
						<option value="2">2029年</option>
						<option value="3">2027年</option>
						<option value="4">2026年</option>
						<option value="5">2025年</option>
						<option value="6">2024年</option>
						<option value="7">2023年</option>
						<option value="8">2022年</option>
						<option value="9">2021年</option>
						<option value="11">2020年</option>
						<option value="12">2019年</option>
						<option value="13">2018年</option>
						<option value="14">2017年</option>
						<option value="15">2016年</option>
						<option value="16">2015年</option>
						<option value="17" selected="selected">2014年</option>
						<option value="18">2013年</option>
						<option value="19">2012年</option>
						<option value="20">2011年</option>
						<option value="21">2009年</option>
						<option value="22">2008年</option>
						<option value="23">2007年</option>
						<option value="24">2006年</option>
						<option value="25">2005年</option>
						<option value="26">2004年</option>
						<option value="27">2003年</option>
						<option value="28">2002年</option>
						<option value="29">2001年</option>
						<option value="30">2000年</option>
						<option value="31">1999年</option>
						
					</select>
					&nbsp&nbsp&nbsp;
					<select>
						<option value="1">1月份</option>
						<option value="2">2月份</option>
						<option value="3">3月份</option>
						<option value="4">4月份</option>
						<option value="5">5月份</option>
						<option value="6">6月份</option>
						<option value="7">7月份</option>
						<option value="8">8月份</option>
						<option value="9">9月份</option>
						<option value="10" selected="selected">10月份</option>
						<option value="11">11月份</option>
						<option value="12">12月份</option>
					</select>					
				</form>				
				<div class="container">				  
				  <div id="search"> 
				    <span style="font-size:15px;font-family:"微软雅黑"">搜索表名&nbsp&nbsp&nbsp </span>  
				    <input type="text" name="q">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				    <a href="#" data-toggle="modal" data-target="#ProcessInfo"><input class="button" type="submit" value="添加"></a>
				  </div>
				</div>
				<div class ="panel panel-default" style="height: 500px; overflow:scroll;">
					<table id="report_table_content" class="table-bordered table table-striped">
						<tr>
							<td></td>
							<td>序号</td>
							<td>表名</td>
						</tr>
						<tr>
							<td valign="middle"><input type="radio" name="radiobutton" value="1"></td>
							<td>1</td>
							<td>first table</td>							
						</tr>
						<tr>
							<td valign="middle"><input type="radio" name="radiobutton" value="2"></td>
							<td>2</td>
							<td>second one</td>												
						</tr>
					</table>
				</div>
				
		<div class="box" id="chooseUser">
			<div class="modal fade" id="ProcessInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content-processinfo">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
							<p class="modal-title">下发表格</p>
						</div>
						<div class="container">				  
						  <div id="search"> 
						    <span style="font-size:18px;font-family:"微软雅黑"">填写者&nbsp&nbsp&nbsp </span>  
						    <input type="text" name="q" style="width:500px;height:10px;">&nbsp&nbsp&nbsp&nbsp&nbsp
						    <input class="button" type="submit" value="添加" onclick="adduser()">
						  </div>
						</div>
						<div class ="panel panel-default" style="height: 30%;overflow:scroll;"> 
							<table class="table-bordered table table-striped" align="">
								<tr>
									<td></td>
									<td>序号</td>
									<td>填表人姓名</td>
								</tr>
								<tr>
									<td valign="middle"><input name="userName" type="checkbox" value="1"/></td>
									<td>1</td>
									<td>单位1</td>							
								</tr>
								<tr>
									<td valign="middle"><input name="userName" type="checkbox" value="2"/></td>
									<td>2</td>
									<td>单位2</td>												
								</tr>
							</table>
						</div>
						<h3 style="font-size:18px;font-family:"微软雅黑"">&nbsp&nbsp&nbsp&nbsp已选择名单</h3>
						<input type="text" name="namelist" id="namelist" style="width:98%;height:100px;margin-left:10px;border:white;input[type=password]:focus{border-color:white;box-shadow: inset 0 1px 2px white, 0 0 5px white}">
						<div class="modal-footer">
						    <button type="button" class="btn btn-primary" id="deliver_submit">下发</button>							
					        <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>					        
					    </div>
					</div>
				</div>
			</div>
		</div>
</body>
<script type="text/javascript">
function queryReport(){
	$.ajax({  
        type: "post", 
        dataType: "json", 
        url: "GetReportServlet", 
        data:"", 
        success:function(data){
        	var data = data.report_list;
        	var i = 1;
        	$("#report_table_content").empty();
        	$("#report_table_content").append("<tr><td></td><td>序号</td><td>表名</td></tr>");
			$(data).each(function(){
				
					var tr = "<tr><td valign='middle'><input type='radio' name='radiobutton' value='"+this.id
						+"-"+this.reportName+"'></td><td>"+i+"</td><td>"
						+this.reportName+"</td></tr>";
					$("#report_table_content").append(tr);
					i++;
			});
        }
	});
}
$("#deliver_submit").click(function(){
	var serachParam = "";
	var namelist = $("#namelist").val().split("; ");
	for(var i = 0; i < namelist.length; i++){
		if(namelist[i].indexOf("-")==-1)continue;
		if(i!=0)serachParam += ",";
		serachParam += '{"urReportid":"'+$("input[name='radiobutton']:checked").val().split("-")[0]+'","urReportname":"'+$("input[name='radiobutton']:checked").val().split("-")[1]
			+'","urUsersid":'+namelist[i].split("-")[0]+',"urState":"'+'未填写'+'"}';
	}
	serachParam = 'data=['+serachParam+']';
	alert(serachParam);
	$.ajax({  
        type: "post", 
        dataType: "json", 
        url: "DeliverReportServlet", 
        data:serachParam, 
        success:function(data){
        	//alert("已下发");
        	//$("#chooseUser").attr("style", "display:none;")
        	 window.location.href= "layout.jsp";
        }
	});
	window.location.href= "layout.jsp";
});
queryReport();
function adduser(){
	var test = $("input[name='userName']");
	test.each(function(){
		if($(this).prop("checked"))$("#namelist").val($("#namelist").val()+$(this).val()+"-"+$(this).parent().parent().find("td").eq(2).html()+"; ");
		$(this).attr("checked", false);
	});
}
</script>
</html>