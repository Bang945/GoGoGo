<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
    <title>数据录入页</title> 

    <link rel="stylesheet" href="css/header.css" type="text/css" />
    <link rel="stylesheet" href="css/style1.css" type="text/css" />
    <link rel="stylesheet" href="css/table.css" type="text/css" />
    <link rel="stylesheet" href="css/footer.css" type="text/css" />
    <link rel="stylesheet" href="css/modal.css" type="text/css" />
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script>
	
	  $(document).ready(function(){
		
		$("#current").addClass("active");
		$("#status").addClass("active");
	
	  });
  </script>
</head>

<body>
    <div class="header">
		<div class="text welcome">
			欢迎您:&nbsp&nbsp&nbsp
			<a href="#"> <%=session.getAttribute("username") %></a>
			&nbsp&nbsp
			<a href="#" data-toggle="modal" data-target="#InfoChange"> 修改个人信息</a>
			&nbsp&nbsp
			<a href="#"> 退出</a>
		</div>
		 <div class="text text1">
            静安区决策支持平台
        </div>

        <div class="text text2">
            JINGAN DECISION SUPPORT PLATFORM 
        </div>

		<div class="box">
			<div class="modal fade" id="InfoChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			    <div class="modal-dialog">
			        <div class="modal-content-pwd">
			            <div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
			                <p class="modal-title">统计数据</p>
			            </div>
			            <div class="modal-body">
			                <div class="pwdstyle">
								<div style="width: 65px; text-align: right; display: inline-block">新密码&nbsp;</div>
								<input id="pwd" name="password" type="text">
							</div>
							<div class="pwdstyle">
								<div style="width: 65px; text-align: right; display: inline-block">密码确认&nbsp;</div>
								<input id="pwdcf" name="password-confirm" type="text">
							</div>
							<div class="pwdstyle">
								<div style="width: 65px; text-align: right; display: inline-block">手机&nbsp;</div>
								<input id="phone" name="mobilephone" type="text">
							</div>
							<div class="pwdstyle">
								<div style="width: 65px; text-align: right; display: inline-block">邮箱&nbsp;</div>
								<input id="mail" name="mail" type="text">
							</div>
			            </div>
			            <div class="modal-footer-pwd">
				            <button type="button" class="btn btn-primary">保存</button>&nbsp;&nbsp;
							<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>  
			            </div>
			        </div>
			    </div>
			</div>
		</div>
		
        <div class="firstTab">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#myData" data-toggle="tab">我的数据</a></li>
              <li id="2"><a href="#reportData" data-toggle="tab">报告数据</a></li>
              <li id="3"><a href="#analysis" data-toggle="tab">指标分析</a></li>
              <li id="4"><a href="#statistic" data-toggle="tab">数据共享</a></li>
            </ul>
        </div>
       
    </div>

	<div class="secondTab tab-content" >
		<ul class="nav nav-tabs tab-pane active" id="myData">
			<li id="current" class="active"><a href="#status" data-toggle="tab">当前数据状态</a></li>
			<li><a href="#create" data-toggle="tab">创建表格</a></li>
			<li><a href="#manage" data-toggle="tab">指标管理</a></li>
		</ul>

		<ul class="nav nav-tabs tab-pane" id="reportData">
			<li><a href="#t1" data-toggle="tab">to do 1</a></li>
			<li><a href="#t2" data-toggle="tab">todo2</a></li>
			<li><a href="#t3" data-toggle="tab">todo3</a></li>
		</ul>

		<ul class="nav nav-tabs tab-pane" id="analysis">
			<li><a href="#tt1" data-toggle="tab">aa</a></li>
			<li><a href="#tt2" data-toggle="tab">bb</a></li>
		</ul>

		<ul class="nav nav-tabs tab-pane" id="statistic">
			<li><a href="#ttt1" data-toggle="tab">eee</a></li>
			<li><a href="#ttt2" data-toggle="tab">fff</a></li>
		</ul>
	</div>

	<div class="black_blank">
	</div>

	<div class="body">
		<div class="tab-content"  >
			<div class="tab-pane " id="status">
			   <div class="lytMap">
					<div class="map" id="navi_menu">我的数据 &gt; <a href="./layout.jsp">当前数据状态</a></div>			
				</div>
				<br/>
				<form class="above-table">
					填报单位&nbsp
					<input type="text" style="width:80px" value="静安区" disabled/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;指标
					<select>
						<option value="0" selected="selected">2014主要经济指标</option>
						<option value="1">八区月报</option>
						<option value="2">季度指标体系（2014）</option>
						<option value="3">人口面积户数</option>
						<option value="4">月度指标体系</option>
						<option value="5">主要经济社会发展指标（2014）</option>
					</select>
					&nbsp;
					<select>
						<option value="0" selected="selected">--全部--</option>
						<option value="1">财政总收入</option>
						<option value="2">税收收入</option>
						<option value="3">规模以上工业总产值</option>
						<option value="4">社会消费品零售总额</option>
						<option value="5">现代服装业营业收入</option>
						<option value="6">外贸出口</option>
					</select>
					&nbsp;
					<select>
						<option value="0" selected="selected">--全部--</option>
						<option value="1">区级财政收入</option>
					</select>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时间点
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
					&nbsp;
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
					<input type="submit" value="确定" id="table_submit"/>
				</form>
				<div class ="panel panel-default" style="height: 78%; overflow:scroll;">
						<table class="table-bordered table table-striped" id="main_report">
						</table>
				</div>
				<div class="below-table">
					<hr class="dotted"/>
					<div class="bottom-right">
						<a href="#">下载导入模板</a> &nbsp 
						<a href="#">数据导入</a>&nbsp 
						<button class="bottom-right-btn" id="submit"><img src="images/save.ico" width="13px"></img>&nbsp;保存</button>&nbsp;
						<button class="bottom-right-btn"><img src="images/cal.ico" width="13px"></img>&nbsp;自动计算</button>&nbsp;
						<button class="bottom-right-btn"><img src="images/reset.ico" width="13px"></img>&nbsp;重置</button>&nbsp;
						<button class="bottom-right-btn"><img src="images/reset.ico" width="13px"></img>&nbsp;打回</button>
					</div>
				</div>
			</div>
			<div id="create" class="tab-pane">
				<iframe id="report_frame" src="./deliver.jsp" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" width="100%" height="700px"></iframe>
			</div>
			<div id="manage" class="tab-pane">
				<iframe id="report_frame" src="./index_manage.jsp" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" width="100%" height="700px"></iframe>
			</div>
			<div id="t1" class="tab-pane">
				44444444
			</div>
			<div id="t2" class="tab-pane">
				55555555
			</div>
			<div id="t3" class="tab-pane">
				666666666
			</div>
			<div id="tt1" class="tab-pane">
				77777777
			</div>
			<div id="ttt1" class="tab-pane">
				888888888
			</div>
			<div id="ttt2" class="tab-pane">
				44444444
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="copyright">
			©&nbsp&nbsp2014统&nbsp&nbsp静安区统计局&nbsp&nbsp上海市信息中心
		</div>
		<div class="footer_blank">
			<a href="#">关于我们</a>&nbsp&nbsp
			<a href="#">常见问题</a>&nbsp&nbsp
			<a href="#">联系方式</a>
		</div>
	</div>
</body>
<script type="text/javascript">
function getData(){
	var user_report_id = window.location.href.split("=")[1];
	user_report_id.replace("#","");
	var serachParam = "user_report_id="+user_report_id;
	$.ajax({  
        type: "post", 
        dataType: "json", 
        url: "GenerateReportServlet", 
        data:serachParam, 
        success:function(data){
        	refreshTable(data);
        	if(data.hasOwnProperty("report_data")){
        		refreshData(data.report_data);
        	}
        }
	});
}
function refreshTable(data){
	
	$("#navi_menu").html($("#navi_menu").html()+"&gt;"+data.report.reportName);
	$("#main_report").empty();
	var tab = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
	var blank;
	var report = data.report;
	var relaindi = report.relaindiToReports;
	var geneindi = report.genindiToReports;
	var tr = "<td>序号</td><td>指标名称</td><td>单位</td>";
	$(relaindi).each(function(){
		tr += "<td>"+this.relativeIndicator.relaindiName+"</td>";
	});
	tr = "<tr>"+tr+"<td>操作</td></tr>";
	$("#main_report").append(tr);
	var i = 1;
	$(geneindi).each(function(){
		tr = "<td>"+i+"</td>";
		i++;
		blank = "";
		for(var j=0; j<this.genindiIdentation-1; j++)blank += tab;
		tr += "<td title='"+"指标名称："+this.genindiName+"&#10指标别名："+this.genindiAlias+"&#10指标属性："+this.genindiAttribute+
		       "&#10所属类别："+this.indicatorToClasses+"&#10计量单位："+this.genindiUnit+"&#10其他信息："+split_str(this.genindiInfo)+"'>"+blank+this.genindiName+"</td>";
		tr += "<td>"+this.genindiUnit+"</td>";
		var geni = this.id;
		$(relaindi).each(function(){
			tr += "<td><input type='text' style='width: 98%' id='"+geni+"/"+this.relativeIndicator.id+"'/></td>"
		});
		tr = "<tr>"+tr+"<td><a href='#'><img src='images/edit.ico' width='30px' height='25px' ></a></td></tr>";
		$("#main_report").append(tr);
	});
	
}
function split_str(string) {	
	var words_per_line = 20;
	var output_string = string.substring(0,1);	//取出i=0时的字，避免for循环里换行时多次判断i是否为0	
	for(var i=1;i<string.length;i++) {		
		if(i%words_per_line == 0) {			
			output_string += "&#10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";		
		}		
		output_string += string.substring(i,i+1);	
	}	
	return output_string;
}
function refreshData(data){
//	$(data).each(function(){
//		var val = this.dataVal;
		var i = 0;
		var j;
		var k = 0;
		$("#main_report").find("tr").each(function(){
			if(i!=0){
				j = 0;
				$(this).find("td").each(function(){
					var input = $(this).find("input");
					if(input.size()!=0){
						j++;
						input.first().val(data[k].dataVal);
						k++;
						/*$(data).each(function(){
							alert(k+"; "+(i + j - 2));
							if(k = i + j - 2){
								input.first().val(this.dataVal);
								//break;
							}
							else k++;
						});*/
					}
				});
			}
			i++;
		});
//	});
}
function getReportData(){
	var user_report_id = window.location.href.split("=")[1];
	user_report_id.replace("#","");
	var serachParam = "";
	var input;
	var id;
	var i = 0;
	var j = 0;
	$("#main_report").find("tr").each(function(){
		if(i!=0){
			j = 0;
			$(this).find("td").each(function(){
				input = $(this).find("input");
				if(input.size()!=0){
					id = input.first().attr("id");
					if(i!=1||j!=0)serachParam += ",";
					j++;
					var dataVal = input.first().val();
					if(dataVal=="")dataVal = 0;
					serachParam += '{"userReportId":'+user_report_id+',"dataGenindiId":'+id.split("/")[0]+',"dataRelaindiId":'+id.split("/")[1]+',"dataVal":'+dataVal+'}';
				}
			});
		}
		i++;
	});
	return serachParam;
}
$("#submit").click(function(){
	var serachParam = 'data=['+getReportData()+']&action=save';
	alert(serachParam);
	$.ajax({  
        type: "post", 
        dataType: "json", 
        url: "SaveReportDataServlet", 
        data:serachParam, 
        success:function(data){
        	alert("已保存");
        }
	});
});
getData();
</script>
</html>