<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/jQuery.md5.js"></script> 
<script type="text/javascript">
function checkHasLoginedAndRenderUserBar(){
	$.ajax({
		type : "GET",
		url : "auth/current.json",		
		success : function(data) {
			if (data && data.username){				
				$("#user-bar-login").hide();
				$("#user-bar-logined").show();				
				$("a#lbl_username").html(data.username);
			}else{
				$("#user-bar-login").show();
				$("#user-bar-logined").hide();
			}				
		}
	});	
}

$(document).ready(function() {
	$("#user-bar-login").hide();
	$("#user-bar-logined").hide();
	$("#user-bar-login input").css("color","black");
	var tryLogin=function(){
		$.ajax({
			type : "POST",
			url : "auth/login.do",
			data : {
					"username":$("#user-bar-login input[name='username']").val(),
					"password":$.md5($("#user-bar-login input[name='password']").val())
				},
			success : function(data) {
				console.info(data);
				if (data && data.username){						
					$("#user-bar-login").hide();
					$("#user-bar-logined").show();
					$("a#lbl_username").html(data.username);
				}else{
					if (data && data.error) alert(data.error);
				}				
			}
		});
	}
	$("#user-bar-login input[name='password']").pressEnter(tryLogin);
	$("#btnLogin").click(tryLogin);
	$("#btnLogoff").click(function(){
		$.ajax({
			type : "GET",
			url : "auth/logoff.do",			
			success : function(msg) {
				console.info(msg);				
				$("#user-bar-login").show();
				$("#user-bar-logined").hide();								
			}
		});
	});
	checkHasLoginedAndRenderUserBar();
	//$("#user-bar")
} );
</script>
<div class="dss-banner">
	<div id="user-bar-login" class="text welcome">		
			用户名:<input name="username" type="text" />
			密码:<input name="password" type="password" />
			<input id="btnLogin"  type="button" value="登录" />
			 
	</div>
	<div id="user-bar-logined" class="text welcome">
		欢迎您:&nbsp&nbsp&nbsp <a id="lbl_username" href="#"> <%=session.getAttribute("username")%></a>
		&nbsp&nbsp <a href="#" data-toggle="modal" data-target="#InfoChange">
			修改个人信息</a> &nbsp&nbsp <a id="btnLogoff" href="#"> 退出</a>
	</div>
	
<!-- 	<div id="user-bar" class="text welcome"></div> -->
	
	<div id="banner_title_r1">静安区决策支持平台</div>

	<div id="banner_title_r2">JINGAN DECISION SUPPORT PLATFORM</div>
 

	<div class="banner_navi_blocks">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#myData" data-toggle="tab">我的数据</a></li>
			<li id="2"><a href="#reportData" data-toggle="tab">报告数据</a></li>
			<li id="3"><a href="#analysis" data-toggle="tab">指标分析</a></li>
			<li id="4"><a href="#statistic" data-toggle="tab">数据共享</a></li>
		</ul>
	</div>

</div>


