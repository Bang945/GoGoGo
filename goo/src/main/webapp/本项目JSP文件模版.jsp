<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 
=================================
	JSP文件模版 V1.0 
	实际套用该模版时请去掉注释
=================================
-->
<title>某模块名称-某页面名称</title>
<!-- 第三方框架自带的CSS -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/jquery.dataTables.css">

<!-- 本项目的CSS: 应以dss为文件前缀，最好不要另外添加新的CSS，全站页面通用的样式应添加到下面的现有CSS文件中 -->
<link rel="stylesheet" href="css/dss-banner.css" type="text/css" /> 
<link rel="stylesheet" href="css/dss-main.css" type="text/css" />

<!-- 第三方框架JS -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>

<!-- 本项目的公用JS库 -->
<script src="js/common.js"></script>

<!-- 本页面的JS，与本页面紧密相关的业务逻辑可以写在这里 -->
<script type="text/javascript">
$(document).ready(function() {	
	//jQuery对页面元素进行预处理
	 
 
});
//与本页面紧密相关的各种自定义js方法...
</script>
</head>
<body>
<%@ include file="div-banner.jsp"%>		<!-- 包含页面的banner部分 -->

<div class="dss-navi-blocks">		<!-- 本页面的导航块  -->
<table>
	<tr>
	<td><a href="A.jsp" class="active">当前页面</a></td>
	<td><a href="B.jsp">B页面</a></td>
	<td><a href="C.jsp">C页面</a></td>
	</tr>
</table>
</div>
<div class="dss-navi-breadcrumb">	<!-- 本页面的面包屑导航条 -->
	<div  id="navi_menu">XXXXX &gt; <a href="mydata-status.jsp">YYYYYY</a></div>		
</div>
<div class="dss-content">			<!-- 本页面的主要内容 -->
	
</div>

<!-- TODO 可能还要添加本页面的页脚部分  -->
	

</body>
</html>