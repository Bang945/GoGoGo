<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>状态</title>
<link rel="stylesheet" href="css/header.css" type="text/css" />
    <link rel="stylesheet" href="css/style1.css" type="text/css" />
    <link rel="stylesheet" href="css/table_status.css" type="text/css" />   
    <link rel="stylesheet" href="css/footer.css" type="text/css" />
    <link rel="stylesheet" href="css/modal.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
	<link rel="stylesheet" href="css/tabulous.css" type="text/css" />
	<link rel="stylesheet" href="css/processinfo.css" type="text/css" />
	<link rel="stylesheet" href="css/table_process.css" type="text/css" />

    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


	<script src="js/tabulous.js"></script>
	<script src="js/js.js"></script>
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
	
 <script>
	
	  $(document).ready(function(){
		
		// When a link is clicked
		$("a.tab").click(function () {
			
			
			// switch all tabs off
			$(".test .active").removeClass("active");
			
			// switch this tab on
			$(this).addClass("active");
			
			// slide all content up
			$(".content").hide();
			
			// slide this content up
			var content_show = $(this).attr("title");
			$("#"+content_show).show();
		  
		});
	
	  });
  </script>
</head>
<body>
<!-- 
<div class="header">
		<div class="text welcome" >
			欢迎您:&nbsp&nbsp&nbsp
			<a href="#">静安区</a>
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
              <li ><a href="#myData" data-toggle="tab">我的数据</a></li>
              <li id="2"><a href="#reportData" data-toggle="tab">报告数据</a></li>
              <li id="3"><a href="#analysis" data-toggle="tab">指标分析</a></li>
              <li id="4"><a href="#statistic" data-toggle="tab">数据共享</a></li>
            </ul>
        </div>
    </div>
	
	<div class="secondTab tab-content" >
		<ul class="nav nav-tabs tab-pane active" id="myData">
			<li><a href="#status" data-toggle="tab">当前数据状态</a></li>
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
	    <div class="tab-content">
			<div class="tab-pane " id="status">
			 -->
			    <div class="lytMap">
					<div class="map">我的数据 &gt; 当前数据状态</div>			
				</div>
				
				<ul class="main-tab clearfix tabs"> 
					<li class="selected test"> 
						<a href="#content_1" class="tab active" title="content_1">未填写</a> 
					</li> 
					<li class="test"> 
						<a href="#content_2" class="tab" title="content_2">已提交</a><em class="pk_icon"></em> 
					</li> 
					<li class="test"> 
						<a href="#content_3" class="tab" title="content_3">审核中</a> 
					</li> 
				</ul> 
			
				<div class="tabs_container">
				
					<div id="content_1"  class="content" style="display: block;">
						<div class ="panel panel-default" style="height: 78%; overflow:scroll;">
							<table id="content_table_1" class="table-bordered table table-striped" align="" >
							<thead>
								<tr>
									<td >序号</td>
									<td>统计时间</td>
									<td>报表名称</td>
									<td>发起人</td>
									<td>状态</td>
									<td>截止日期</td>
									<td>查看进度</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td valign="middle">1</td>
									<td>--</td>
									<td><a href="./report.jsp?user_report_id=0">房产交易</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
								<tr>
									<td valign="middle">2</td>
									<td>--</td>
									<td><a href="#">固定资产投资</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
								<tr>
									<td valign="middle">3</td>
									<td>--</td>
									<td><a href="#">绿地建设</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
							</tbody>
							</table>
						</div>
					</div>
				

					<div id="content_2"  class="content" style="display: none;">
						<div class ="panel panel-default" style="height: 78%; overflow:scroll;">
							<table id="content_table_2" class="table-bordered table table-striped">
							<thead>
								<tr>
									<td >序号</td>
									<td>统计时间</td>
									<td>报表名称</td>
									<td>发起人</td>
									<td>状态</td>
									<td>截止日期</td>
									<td>查看进度</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td valign="middle">1</td>
									<td>--</td>
									<td><a href="javascript:reportDetail(0)">房产交易</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
								<tr>
									<td valign="middle">2</td>
									<td>--</td>
									<td><a href="#">固定资产投资</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
								<tr>
									<td valign="middle">3</td>
									<td>--</td>
									<td><a href="#">绿地建设</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
								<tr>
									<td valign="middle">4</td>
									<td>--</td>
									<td><a href="#">房产交易</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
							</tbody>
							</table>
						</div>
					</div>
					
					<div id="content_3"  class="content" style="display: none;">
						<div class ="panel panel-default" style="height: 78%; overflow:scroll;">
							<table id="content_table_3" class="table-bordered table table-striped" align="" >
							<thead>
								<tr>
									<td >序号</td>
									<td>统计时间</td>
									<td>报表名称</td>
									<td>发起人</td>
									<td>状态</td>
									<td>截止日期</td>
									<td>查看进度</td>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td valign="middle">1</td>
									<td>--</td>
									<td><a href="javascript:reportDetail(0)">房产交易</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
								<tr>
									<td valign="middle">2</td>
									<td>--</td>
									<td><a href="#">固定资产投资</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
								<tr>
									<td valign="middle">3</td>
									<td>--</td>
									<td><a href="#">绿地建设</a></td>
									<td>静安区城建部门</td>
									<td>未填写</td>
									<td>2014年10月31日</td>
									<td><a href="#" data-toggle="modal" data-target="#ProcessInfo"><img src="images/process_info.png" width="28px" height="25px" ></a></td>
								</tr>
							</tbody>
							</table>
						</div>
					</div>
					
					<div class="box">
						<div class="modal fade" id="ProcessInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog" style="margin-left:30%">
								<div class="modal-content-processinfo">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
										<p class="modal-title">统计数据</p>
									</div>
									<div class="modal-body">
										<div class="status" style="display:inline-block">当前表状态</div>
										<div class="status-row">
											<div class="flow_steps"> 
												<ul style="list-style-type:none"> 
													<li class="done">创建中</li> 
													<li class="current_prev">等待下发</li> 
													<li class="current">填写中</li> 
													<li>审核中</li> 
													<li class="last">已归档</li> 
												</ul> 
											</div> 
										</div>
									<div class ="panelpc panel-default" style="height: 320px; overflow:scroll;">
										<table class="table-bordered table table-striped" align="" >
											<tr >
												<td >序号</td>
												<td>修改项目</td>
												<td>修改人</td>
												<td>操作</td>
												<td>修改时间</td>
											</tr>
											<tr>
												<td>1</td>
												<td>房产交易</td>
												<td>静安区城建部门</td>
												<td>创建</td>
												<td>2014年10月31日19：30：21</td>					
											</tr>
											<tr>
												<td>2</td>
												<td>固定资产投资、绿地建设</td>
												<td>静安区城建部门</td>
												<td>下发</td>
												<td>2014年10月31日19：30：21</td>		
											</tr>
											<tr>
												<td>3</td>
												<td>城市建设</td>
												<td>静安区城建部门</td>
												<td>填写</td>
												<td>2014年10月31日19：30：21</td>		
											</tr>
											<tr>
												<td>4</td>
												<td>环境空气质量情况</td>
												<td>静安区城建部门</td>
												<td>提交</td>
												<td>2014年10月31日19：30：21</td>		
											</tr>
											<tr>
												<td>5</td>
												<td>环境噪音情况</td>
												<td>静安区城建部门</td>
												<td>退回</td>
												<td>2014年10月31日19：30：21</td>		
											</tr>
											<tr>
												<td>6</td>
												<td>外贸情况</td>
												<td>静安区外贸部门</td>
												<td>修改</td>
												<td>2014年10月31日19：30：21</td>	
											</tr>
											<tr>
												<td>7</td>
												<td>利用外资情况</td>
												<td>静安区外贸部门</td>
												<td>退回</td>
												<td>2014年10月31日19：30：21</td>		
											</tr>
											<tr>
												<td>8</td>
												<td>外贸支出</td>
												<td>静安区城建部门</td>
												<td>创建</td>
												<td>2014年10月31日19：30：21</td>		
											</tr>		
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		    </div>	
		    <!-- 
			</div>
			<div id="create" class="tab-pane">
				2222222
			</div>
			<div id="manage" class="tab-pane">
				33333333
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
	 -->
</body>
<script type="text/javascript">
function reportDetail(id){
	window.parent.document.getElementById("report_frame").src = "./report.jsp?user_report_id="+id;
	//$("#report_frame").attr("src", "./report.jsp?user_report_id="+id);
}
function queryUserReport(id){
	var userid = "userid="+id;
	$.ajax({  
        type: "post", 
        dataType: "json", 
        url: "GetUserReportServlet", 
        data:userid, 
        success:function(data){
        	var data = data.report_list;
        	var i = 1;
        	var j = 1;
        	var k = 1;
        	$("#content_table_1").find("tbody").first().empty();
			$("#content_table_2").find("tbody").first().empty();
			$("#content_table_3").find("tbody").first().empty();
			$(data).each(function(){
				//alert(this.urReportid);			
				if(this.urState=="未填写"||this.urState=="已保存"){
					var tr = "<tr><td>"+i+"</td><td>"+"2014-11"+"</td><td><a href='./report.jsp?user_report_id="+this.id+"'>"
						+this.urReportname+"</a></td><td>"+"ADMIN"+"</td><td>"+this.urState+"</td><td>"
						+this.urDeadline+"</td><td><a href='#' data-toggle='modal' data-target='#ProcessInfo'><img src='images/process_info.png' width='28px' height='25px' ></a></td></tr>";
					$("#content_table_1").find("tbody").first().append(tr);
					i++;
				}
				else if(this.urState=="已提交"){
					var tr = "<tr><td>"+j+"</td><td>"+"2014-11"+"</td><td><a href='./report.jsp?user_report_id="+this.id+"'>"
						+this.urReportname+"</a></td><td>"+"ADMIN"+"</td><td>"+this.urState+"</td><td>"
						+this.urDeadline+"</td><td><a href='#' data-toggle='modal' data-target='#ProcessInfo'><img src='images/process_info.png' width='28px' height='25px' ></a></td></tr>";
					$("#content_table_2").find("tbody").first().append(tr);
					j++;
				}
				else {
					var tr = "<tr><td>"+k+"</td><td>"+"2014-11"+"</td><td><a href='./report.jsp?user_report_id="+this.id+"'>"
						+this.urReportname+"</a></td><td>"+"ADMIN"+"</td><td>"+this.urState+"</td><td>"
						+this.urDeadline+"</td><td><a href='#' data-toggle='modal' data-target='#ProcessInfo'><img src='images/process_info.png' width='28px' height='25px' ></a></td></tr>";
					$("#content_table_3").find("tbody").first().append(tr);
					k++;
				}
				
			});
        }
	});
}
queryUserReport(0);
</script>
</html>