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
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>

<body>
    <div class="header">
        <form class="login">
			<input class="inputStyle" id="username" type="text" placeholder="用户名"/>
			<input class="inputStyle" id="password" type="password" placeholder="密码"/>
			<!-- input class="inputStyle" id="authencode" type="text" name="authencode" placeholder="验证码"/> -->
			<input class="buttonStyle" typee="button" value="登陆" onclick="login()"/>
		</form>
        <div class="text text1">
            静安区决策支持平台
        </div>

        <div class="text text2">
            JINGAN DECISION SUPPORT PLATFORM 
        </div>
    </div>

	<div class="black_text">
		系统时间：2014年11月10日
	</div>

	<div class="body">
	        <a href="#">
				<div id="firstImg">
					<img class="homeImg" src="images/insert.png" style="width:80px;height:72px;">
					<div class="imgText" style="font-size:20;margin-left:-70px">数据采集</div>
				</div>
			</a>
		<div class="images">			
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
<script src="js/jQuery.md5.js"></script> 
<script type="text/javascript">
function login(){
	var searchParam = "username="+$("#username").val()+"&password="+$.md5($("#password").val());
	$.ajax({    
        type:"POST",    
        url:"LoginServlet",
        dataType: "json",//返回json格式的数据 
        data: searchParam,    
        success:function(data){
        	window.location.href="home_page.jsp";
        }
	});
	window.location.href="home_page.jsp";
}
</script>
</html>