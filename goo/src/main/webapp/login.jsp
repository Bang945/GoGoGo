<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BuyBuyBuy</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- <script src="../../assets/js/ie-emulation-modes-warning.js"></script> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
      <form class="form-signin" role="form">
        <h2 class="form-signin-heading">Please sign in</h2>
        <br/>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="username" class="form-control" placeholder="Account Name" required autofocus>
        <br/>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="password" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <input class="btn btn-lg btn-primary btn-block" type="button" value="Sign in" onclick="login()"/>
      </form>

    </div> <!-- /container -->
</body>
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
function login(){
	var searchParam = "username="+$("#username").val()+"&password="+$("#password").val();
	//console.log(searchParam);
	$.ajax({    
        type:"POST",    
        url:"./auth/login.do",
        dataType: "json",//返回json格式的数据 
        data: searchParam,    
        success:function(data){
        	//console.log("success");
        	//window.location.href="test.jsp";
        }
	});
	//console.log("success");
	window.location.href="oow1.jsp";
}
</script>
</html>