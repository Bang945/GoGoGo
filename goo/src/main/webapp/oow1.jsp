<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="icon" href="image/favicon.ico">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/carousel.css" rel="stylesheet">

<script src="js/ie-emulation-modes-warning.js"></script>

    <script src="js/jquery-1.11.1.min.js"></script>
    
<script>
    $(document).ready(function(){
    // getLocation();
    var form=$("#localGeometryForm").serialize();
    console.log(form);
        $.ajax({
          type: "post",
          url: "./shop/query.json",
          data: $("#localGeometryForm").serialize(),
          success: function(data) {  
            // Fulfill shop list
            for (var i = 0; i < data.shops.length; i ++) {
              getShop(data.shops[i].shopName, Math.round(data.shops[i].distance*10)/10, data.shops[i].deals.length, data.shops[i].id);
              // TODO: For each deal
              var deals = data.shops[i].deals;
              for (var j = 0; j < deals.length; j ++) {
                addDeal(deals[j].user.usersName, deals[j].info, i, data.shops[i].id, deals[j].id);
              }
            }

          },  
          error: function(data) {  
            alert("Sorry! I don't know what to buy!");  
          }  
        });
  });

  // TODO: 
  function addDeal(user, info, i, shopId, dealId) {
    var requestID = "<h2>"+info.split("/")[0]+"</h2>";
    console.log(user);
    var message = "<p>"+user+":<br/>"+info.split("/")[1]+"</p>";
    $("#deals"+shopId).append("<div id=request"+i+">"+requestID + message+"<p><a class='btn' href='look.jsp'>联系TA &raquo;</a></p></div>");
    
  }

  function getShop(name, x, n, id){
    var pic = "<img class='img-circle' src='images/"+ id +".jpg' alt='Generic placeholder image' style='width: 140px; height: 140px;'>";
    var name1 = "<h2>"+name+"</h2>";
    var info = "<p> 距您" + x + "米  已有" + n + "个拼单</p>";
    var btn = "<p><a class='btn btn-default' href='add.jsp' role='button'>我要拼！ &raquo;</a></p>";
    var link = "<p><a class='btn btn-default' href='javascript:change(\""+ id +"\")' role='button'>Joe 你要吗？！ &raquo;</a></p>";

    // Add collapse link or button
    //var collps = "<button class='btn btn-default' data-toggle='collapse' data-target='#deals" + id + "' >View details &raquo;</button>";
    var deals = "<div id='deals"+id+"'></div>" ;  
    $("#shops").append("<div class='col-lg-4' id='shop"+id+"'>"+pic + name1 + info + btn + link + deals + "</div>");
    $("#deals"+id).toggle();
  }
  
  function change(id){
	  $("#deals"+id).toggle();
  }


</script>

</head>


<body>
<form id="localGeometryForm" name="localGeometryForm" disable="disable" />
      <input type="hidden" id="lat" name="wd" value="31.236774299999997" disable="disable" />
      <input type="hidden" id="lng" name="jd" value="121.50273569999999" disable="disable" />

    </form>

    <!-- div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>-->
 <!--     <div class="header">
        <ul class="nav nav-pills pull-right" role="tablist">
          <li role="presentation" class="active"><a href="#">Home</a></li>
          <li role="presentation"><a href="#">About</a></li>
          <li role="presentation"><a href="#">Contact</a></li>
        </ul>
        <h1 class="text-muted" align="center"><b>买买买</b></h1>
        <hr>
      </div>
    
-->

    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="images/woo.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>woo</h1>
              <p>满两件打八折</p>
              
             
            </div>
          </div>
        </div>
        <div class="item">
          <img src="images/initial.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
             <h1>initial </h1>
              <p>满800减100</p>
              
            </div>
          </div>
        </div>
        <div class="item">
          <img src="images/dizzit.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>d'zzit</h1>
              <p>满三件打五折</p>
              
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing" >

      <!-- Three columns of text below the carousel -->
      <div class="row" id="shops">
      </div><!-- /.row -->



      <div class="row row-offcanvas row-offcanvas-right">
        <div class="row" id="request0">
        </div>
      </div>

      <p><a class="btn btn-lg btn-primary" id="return" role="button" onclick="rechange()">返回</a></p>
      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">


      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.min.js"></script>
<script src="js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    
</body>
</html>