<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/header.css" type="text/css" />
    <link rel="stylesheet" href="css/style1.css" type="text/css" />
    <link rel="stylesheet" href="css/footer.css" type="text/css" />
    <link rel="stylesheet" href="css/modal.css" type="text/css" />
     <link rel="stylesheet" href="css/style.css" type="text/css" />
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
			<li class="active" id="current"><a href="#status" data-toggle="tab">当前数据状态</a></li>
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
				<!-- iframe id="report_frame" src="./status.jsp" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" width="100%" height="700px"></iframe> -->
				<%@ include file="./status.jsp" %>
			</div>
			<div id="create" class="tab-pane">
				<iframe id="report_frame" src="./deliver.jsp" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" width="100%" height="700px"></iframe>
			</div>
			<div id="manage" class="tab-pane">
				<iframe id="report_frame" src="./index_manage.jsp" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" width="100%" height="700px"></iframe>
			</div>
			<div id="t1" class="tab-pane">
				
			</div>
			<div id="t2" class="tab-pane">
				
			</div>
			<div id="t3" class="tab-pane">
				
			</div>
			<div id="tt1" class="tab-pane">
				
			</div>
			<div id="ttt1" class="tab-pane">
				
			</div>
			<div id="ttt2" class="tab-pane">
				
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
function reportDetail(id){alert();
	$("#report_frame").attr("src", "./report.jsp?user_report_id="+id);
}
</script>
</html>