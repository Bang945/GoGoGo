<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>拼单1</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="look.css" rel="stylesheet">


    <script src="js/jquery-1.11.1.min.js"></script>
    <script>

        var shopName="Louis Vuitton";
        var dealid = "dealId=1";

      // TODO: Set deal id
      $(document).ready(function() {
    	  $("#home").click(function(){
    			window.location.href="oow1.jsp";
    	  });
    	  $.ajax({
              type: "post",
              url: "./shop/message.json",
              data: dealid,
              success: function(data) { 
                // Fulfill shop list
                console.log(data.dealInfo.deadline.hours);
                //console.log(data.dealInfo.shop+","+data.dealInfo.info+","+ data.dealInfo.deadline.hours+":"+data.dealInfo.deadline.minutes);
                showDealInfo(data.dealInfo.shop, data.dealInfo.info, data.dealInfo.deadline.hours+":"+data.dealInfo.deadline.minutes);
                
                var messages = data.logs;
                
                for (var i = 0; i < messages.length; i ++) {
                	addMessage(messages[i].info, messages[i].user.usersName, messages[i].timeStamp.hours +":"+ messages[i].timeStamp.hours, i);
                }
              },  
              error: function(data) {  
                alert("Sorry! I don't know what to buy!");  
              }  
            })
      console.log( $("#addMessage").serialize());
      $("#addBtn").click(function(){
          console.log("button");
    	  $.ajax({
              type: "post",
              url: "./shop/send.do",
              data: $("#addMessage").serialize(),
              success: function(data) { 
                // Fulfill shop list
               
                
                /*for (var i = 0; i < messages.length; i ++) {
                	addMessage(messages[i].info, messages[i].user.usersName, messages[i].timeStamp.hours +":"+ messages[i].timeStamp.hours, i);
                }*/
              }
            });
      });

      });
      
      

     function addMessage(info, userName, time, i) {
      // TODO: Add html item
      var wrap = "<div id='message" + i + "'>";
      wrap += "<div>" + userName + ":" + info + "</div>";
      wrap += "<div>" + time + "</div>";
      wrap += "</div>" ;
      $("#dialog").append(wrap);
     }

     function showDealInfo(shop, info, deadline) {
       var wrap = "<div>";
       wrap += "<div>" + shop + "</div>";
       wrap += "<div>" + info + "</div>";
       wrap += "<div>" + deadline + "</div>";
       wrap += "</div>" ;
       $("#dealInfo").append(wrap);
     }

    </script>

  </head>

  <body>
  
    <form id="dealIdForm" name="dealIdForm" disable="disable" />
      <input type="hidden" id="dealId" name="dealId" value="1" disable="disable" />
    </form>

      <div class="header">
        
        <h1 class="text-muted" align="center"><b>买买买</b></h1>
        <hr>
      </div>

      


 
    <div class="container">
      <div class="article">
        <div class="topic-content">
          <div class="bg-img-green">
            <span style="font-size:25px">
            <div id="dealInfo" class="article">

            </div>
          </span>
            <hr/>
          </div> 
        </dir>
        <div class="reply-doc content" style="padding-left:50px;">
          <span style="font-size:20px">
            <div id="dialog" class="article">
            </div>
          </span>
        </div>
        
      </div>
    <hr/>
    <h4>你的回应</h4>
      <div class="txd">
        <form id="addMessage">
        
        <input type="hidden" id="dealId" name="dealId" value="1" disable="disable" />
            <textarea id="info" class="j a_show_login" name="info" rows="8" cols="54"></textarea><br/>
            <span class="bn-flat-hot rr">
            <button id="addBtn" name="submit_btn"  value="">添加回复</button>
            </span>

        </form>
        <button name="home" id="home" class="btn btn-lg btn-default">回到首页</button>
      </div>


    </div><!-- /.container -->

    

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
