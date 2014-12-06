<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test page</title>

<script src="<%=request.getContextPath()%>/js/jquery-1.11.1.min.js"></script>
<!-- <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script> -->
<script type="text/javascript">
function login(){	
	$.ajax({    
        type:"POST",    
        url:"login2.do",
        dataType: "json",
        data: {"username":$("#username").val(),"password":$("#password").val()},    
        success:function(data){
        	console.info(data);
        	
        	renderTable();
        }
	});
	
}
function renderXXX(){
	var data=[111,222,3,4,6];
	for (var i=1;i<data.length;i++){
		$("table").append("<tr><td>"+data[i]+"</td></tr>");
	}
	
}
$(document).ready(function(){
	
	renderXXX();

  });

</script>
</head>
<body>
<p>scriptlet:<%=request.getContextPath()%> ,el: ${pageContext.request.contextPath}</p>

   <div id="test user">
        <form class="login">
			<input class="inputStyle" id="username" type="text" placeholder="用户名"/>
			<input class="inputStyle" id="password" type="password" placeholder="密码"/>	
			<input class="buttonStyle" type="button" value="登陆" onclick="login()"/>
		</form>
	</div>
	<table bordercolor="black" cellpadding="1" border="1">
		<tr>
			<td>11</td><td>221</td>
		</tr>
		<tr>
			<td>12</td><td>221</td>
		</tr>
		<tr>
			<td>31</td><td>221</td>
		</tr>
		
	</table>
</body>
</html>