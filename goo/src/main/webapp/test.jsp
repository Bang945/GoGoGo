<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form class="login">
			<input class="inputStyle" id="username" type="text" placeholder="用户名"/>
			<input class="inputStyle" id="password" type="password" placeholder="密码"/>
			<!-- input class="inputStyle" id="authencode" type="text" name="authencode" placeholder="验证码"/> -->
			<input class="buttonStyle" typee="button" value="登陆" onclick="login()"/>
		</form>
</body>
 <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
function login(){
	var searchParam = "username="+$("#username").val()+"&password="+$("#password").val();
	console.log(searchParam);
	$.ajax({    
        type:"POST",    
        url:"./auth/login.do",
        dataType: "json",//返回json格式的数据 
        data: searchParam,    
        success:function(data){
        	console.log("success");
        }
	});
	console.log("success");
}
function message(){
	var searchParam = "dealId=1";//js get dealId
	console.log(searchParam);
	$.ajax({    
        type:"POST",    
        url:"./shop/message.json",
        dataType: "json",//返回json格式的数据 
        data: searchParam,    
        success:function(data){
        	console.log(data);
        	console.log("success");
        }
	});
	console.log("success");
}
function shop(){
	var searchParam = "jd=31.236776799999998&wd=121.5027612";//js get location
	console.log(searchParam);
	$.ajax({    
        type:"POST",    
        url:"./shop/query.json",
        dataType: "json",//返回json格式的数据 
        data: searchParam,    
        success:function(data){
        	console.log(data);
        	console.log("success");
        }
	});
	console.log("success");
}
$(document).ready(function(){
	message();
});
</script>
</html>