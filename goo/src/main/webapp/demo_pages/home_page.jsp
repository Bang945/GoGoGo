<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>首页</title> 

    <link rel="stylesheet" href="css/header.css" type="text/css" />
    <link rel="stylesheet" href="css/style1.css" type="text/css" />
    <link rel="stylesheet" href="css/table.css" type="text/css" />
    <link rel="stylesheet" href="css/footer.css" type="text/css" />
    <link rel="stylesheet" href="css/modal.css" type="text/css" />    
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>

<body>
    <div class="header">
		<div class="text welcome">
			欢迎您:&nbsp;
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
    </div>
	

	<div class="black_text">
	系统时间：2014年11月10日
		<!-- 系统时间：这里要用js获得当前时间，交给张骏写吧 -->
	</div>

	<div class="body">
		<div class="images">
			<a href="./layout.jsp">
				<div id="firstImg">
					<img class="homeImg" src="images/insert.png">
					<div class="imgText">数据采集</div>
				</div>
			</a>
			<a href="#">
				<div id="secondImg">
					<img class="homeImg" src="images/analyse.png">
					<div class="imgText">区业务数据查询分析</div>
				</div>
			</a>
			<a href="#">
				<div id="thirdImg">
					<img class="homeImg" src="images/theme_analyse.png">
					<div class="imgText">主题分析</div>
				</div>
			</a>
			<a href="#">
				<div id="fourthImg">
					<img class="homeImg" src="images/compre_analyse.png">
					<div class="imgText">综合决策分析</div>
				</div>
			</a>
			<a href="#">
				<div id="fifthImg">
					<img class="homeImg" src="images/table_sharing.png">
					<div class="imgText">中心城区数据共享</div>
				</div>
			</a>
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
</html>