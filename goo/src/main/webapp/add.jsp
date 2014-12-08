<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我要买</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.11.1.min.js"></script>
<script>
  $(document).ready(function(){    
    $("#add").click(function(){
		console.log("click");
		window.location.href="oow1.jsp";
        /*$.ajax({
          type: "post",
          url: "./shop/create.do",
          data: $("#createDealForm").serialize(),
          success: function(data) {  
            alert("添加成功！"); 
            window.navigate("look.jsp");    
          },  
          error: function(data) {  
            alert("error");  
          }  
        
      })
    })*/
  })
  });
    </script>
</head>
<body>
<div class="header">
        <ul class="nav nav-pills pull-right" role="tablist">
          <li role="presentation" class="active"><a href="#">Home</a></li>
          <li role="presentation"><a href="#">About</a></li>
          <li role="presentation"><a href="#">Contact</a></li>
        </ul>
        <h1 class="text-muted" align="center"><b>买买买</b></h1>
        <hr>
      </div>
    <div class="container">

<form name="createDealForm" id="createDealForm">
      <div class="page-header">        

        <h1>我要买</h1>
        <p class="lead">请填写相关信息.</p>
      </div>
      
      <input type="hidden" id="shopName" name="shopName" value="Louis Vuitton" disable="disable" />

      <h3>优惠信息</h3>
      <p>请填写您要满足的优惠信息.</p>
      <div class="input-group input-group-lg">
        <span class="input-group-addon">折</span>
        <input type="text" class="form-control" name="info" value="三件8折" placeholder="">
      </div>


      <h3>购买信息</h3>
      <p>请填写您已经满足的购买信息.例如，已经购买多少钱了？已经购买多少件了？</p>
      <div class="input-group input-group-lg">
        <span class="input-group-addon">已买</span>
        <input type="text" class="form-control" value="已买1件"placeholder="">
      </div>

      <h3>如何找到我</h3>
      <p>请填写一些标识性信息帮助他人找到您，例如我穿了红色上衣，背了个双肩包。</p>
      <div class="input-group input-group-lg">
        <span class="input-group-addon">找我</span>
        <input type="text" class="form-control" value="我穿着白绿条纹的衣服，在门口~"placeholder="">
      </div>

      <h3>停留时间</h3>
      <p>请填写您会在这里停留多久。例如我会在13：00到13：30在这里</p>
      <div class="input-group input-group-lg">
        <span class="input-group-addon">时间</span>
        <input id="time" type="text" class="form-control" name="minutes" value="20" placeholder="">
      </div>

      <h3>备注</h3>
      <p>请填写其他信息。</p>
      <div class="input-group input-group-lg">
        <span class="input-group-addon">其他</span>
        <input type="text" class="form-control" value="赶紧来人啊！！！" placeholder="">
      </div>
      <hr/>
      
</form>
<div class="inner cover">
        <p class="lead">
          <button name="add" id="add" class="btn btn-lg btn-default">我要买</button>
        </p>
      </div>
</body>
</html>