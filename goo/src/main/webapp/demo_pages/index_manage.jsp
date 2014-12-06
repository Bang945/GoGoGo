<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>指标页</title> 

    <link rel="stylesheet" href="css/header.css" type="text/css" />
    <link rel="stylesheet" href="css/style1.css" type="text/css" />
    <link rel="stylesheet" href="css/table_newindex.css" type="text/css" />
    <link rel="stylesheet" href="css/footer.css" type="text/css" />
    <link rel="stylesheet" href="css/modal_index.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="css/style.css" type="text/css" />
	<link rel="stylesheet" href="css/tabulous.css" type="text/css" />
	<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
	<script src="js/tabulous.js"></script>
	<script src="js/js.js"></script>
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/dtree.js"></script>
	
 <script>
	
	  $(document).ready(function(){
		
		// When a link is clicked
		$("a.tab").click(function () {
			
			
			// switch all tabs off
			$(".aaa .active").removeClass("active");
			
			// switch this tab on
			$(this).addClass("active");
			
			// slide all content up
			$(".content").hide();
			
			// slide this content up
			var content_show = $(this).attr("title");
			$("#"+content_show).show();
		  
		});
	
	  });
  </script>
</head>

<body>
  <!--   <div class="header">
	
		<div class="text welcome">
			欢迎您:&nbsp;
			<a href="#">静安区</a>
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
		
        <div class="firstTab">
            <ul class="nav nav-tabs">
              <li ><a href="#myData" data-toggle="tab">我的数据</a></li>
              <li id="2"><a href="#reportData" data-toggle="tab">报告数据</a></li>
              <li id="3"><a href="#analysis" data-toggle="tab">指标分析</a></li>
              <li id="4"><a href="#statistic" data-toggle="tab">数据共享</a></li>
            </ul>
        </div>
       
    </div>

	<div class="secondTab tab-content" >
		<ul class="nav nav-tabs tab-pane active" id="myData">
			<li><a href="#status" data-toggle="tab">当前数据状态</a></li>
			<li><a href="#create" data-toggle="tab">创建表格</a></li>
			<li><a href="#manage" data-toggle="tab">指标管理</a></li>
		</ul>

		<ul class="nav nav-tabs tab-pane" id="reportData">
			<li><a href="#t1" data-toggle="tab">to do 1</a></li>
			<li><a href="#t2" data-toggle="tab">todo2</a></li>
			<li><a href="#t3" data-toggle="tab">todo3</a></li>
		</ul>

		<ul class="nav nav-tabs tab-pane" id="analysis">
			<li><a href="#tt1" data-toggle="tab">aa</a></li>
			<li><a href="#tt2" data-toggle="tab">bb</a></li>
		</ul>

		<ul class="nav nav-tabs tab-pane" id="statistic">
			<li><a href="#ttt1" data-toggle="tab">eee</a></li>
			<li><a href="#ttt2" data-toggle="tab">fff</a></li>
		</ul>
	</div>

	<div class="black_blank">
	</div>

	<div class="body">
		<div class="tab-content">
			<div class="tab-pane " id="status">
			</div>
			
			<div id="create" class="tab-pane">
			</div>
			
			<div id="manage" class="tab-pane">
			 -->
			    <div class="lytMap">
					<div class="map">我的数据 &gt; 指标管理</div>			
				</div>
				
			    <ul class="main-tab clearfix tabs"> 
					<li class="selected test"> 
						<a href="#content_1" class="tab active" title="content_1">我的区域分组管理</a> 
					</li> 
					<li class="test"> 
						<a href="#content_2" class="tab" title="content_2">我的派生指标管理</a><em class="pk_icon"></em> 
					</li> 
					
				</ul>
			
			    <div class="tabs_container">
				    <div id="content_1"  class="content" style="display: block;">
					    <div class="dtree">
							<p><a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭展开</a></p>

							<script type="text/javascript">
								<!--

								d = new dTree('d');

								d.add(0,-1,'填报单位分组');
								d.add(1,0,'上海八区[公共][所属人admin]','index_manage.jsp');
								d.add(2,1,'黄浦区[310101]','index_manage.jsp');
								d.add(3,1,'徐汇区[310104]','index_manage.jsp');
								d.add(4,1,'长宁区[310105]','index_manage.jsp');
								d.add(5,1,'静安区[310106]','index_manage.jsp');
								d.add(6,1,'普陀区[310107]','index_manage.jsp');
								d.add(7,1,'闸北区[310108]','index_manage.jsp');
								d.add(8,1,'虹口区[310109]','index_manage.jsp');
								d.add(8,1,'杨浦区[310110]','index_manage.jsp');
								document.write(d);

								//-->
							</script>
						</div>
					</div>
					
					<div id="content_2"  class="content" style="display: none;">
						<form class="above-table">
							指标名称&nbsp
							<input type="text" style="width:130px">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;指标别名&nbsp;
							<input type="text" style="width:130px">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所属人&nbsp;
							<input type="text" style="width:130px">
							<div class="bottom-right">
							<button style="width:80px;height:25px"><img src="images/lookup.png" width="15px" height="15px"></img>&nbsp;查询</button>&nbsp;
							<a href="#" data-toggle="modal" data-target="#NewIndex"><button style="width:80px;height:25px"><img src="images/add.ico" width="13px"></img>&nbsp;新增</button></a>
							</div>
						</form>
						<div class="box">
							<div class="modal fade" id="NewIndex" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog" style="margin-left:35%">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
											<p class="modal-title">编辑</p>
										</div>
										<div class="modal-body" style="height: 400px;overflow:scroll">
											<table width="100%" >
												<tr>
													<td>指标编码&nbsp;</td>
													<td><input type="text" width="80%"></td>
												</tr>
												
												<tr>
													<td>指标分类属性&nbsp;</td>
													<td><input type="text" value="派生指标" value style="width:126px" disabled>
														<select style="width:230px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">时期指标</option>
															<option value="2">时点指标</option>
															<option value="3">相对指标</option>
															<option value="4">平均指标</option>
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>计算类型&nbsp;</td>
													<td><input type="text" value="派生指标" value style="width:126px" disabled>
														<select style="width:230px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">八区月报</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>	
													</td>
												</tr>
												<tr>
													<td></td>
													<td><input type="text" value="同比、环比" disabled></td>
												</tr>
												<tr>
													<td>计量单位&nbsp;</td>
													<td><select style="width:126px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">八区月报</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>
														<select style="width:230px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">八区月报</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>												
													</td>
												</tr>
												<tr>
													<td>显示格式&nbsp;</td>
													<td>
														<select style="width:360px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">四舍五入-小数点后强制两位(如：5.00)</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>计算公式&nbsp;</td>
													<td rowspan="2"><input type="text" value style="height:50px" value="第一产业【0101001】*2" disabled></td>
												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td>是否有效&nbsp;</td>
													<td>
														<select style="width:126px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">八区月报</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>
														<input type="text" value="时期指标" value style="width:230px">	
												</tr>
												<tr>
													<td>指标说明&nbsp;</td>
													<td rowspan="2"><input type="text" value style="height:50px" value="asdfasdf"></td>
												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td>备注&nbsp;</td>
													<td rowspan="2"><input type="text" value style="height:50px" value=""></td>
												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td>所属人&nbsp;</td>
													<td><input type="text" value="静安区" disabled></td>
												</tr>
												<tr>
													<td></td>
													<td>最近更新 静安区[2014-10-20 15:13]</td>
												</tr>
											</table>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary">保存</button>
											<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					
						<div class ="panel panel-default" style="height: 78%; overflow:scroll;">
							<table class="table-bordered table table-striped" align="" >
								<tr>
									<td>序号</td>
									<td>指标名称</td>
									<td>指标别名</td>
									<td>指标编码</td>
									<td>计算类型</td>
									<td>计量单位</td>
									<td>计算公式</td>
									<td>所属人</td>
									<td>操作</td>

								</tr>
								<tr>
									<td valign="middle">1</td>
									<td>财政</td>
									<td>财政</td>
									<td>P71822</td>
									<td>时点指标</td>
									<td>万人</td>
									<td>第一产业【0101001】*2</td>
									<td>静安区</td>
									<td><a href="#" data-toggle="modal" data-target="#EditIndex"><img src="images/edit.ico" width="30px" height="25px" ></a>&nbsp;&nbsp;&nbsp;
										<a href="#"><img src="images/delete.ico" width="23px" height="22px" ></a>
									</td>							
								</tr>
								<tr>
									<td valign="middle">2</td>
									<td>财政</td>
									<td>财政</td>
									<td>P71822</td>
									<td>时点指标</td>
									<td>万人</td>
									<td>第一产业【0101001】*2</td>
									<td>静安区</td>
									<td><a href="#" data-toggle="modal" data-target="#EditIndex"><img src="images/edit.ico" width="30px" height="25px" ></a>&nbsp;&nbsp;&nbsp;
										<a href="#"><img src="images/delete.ico" width="23px" height="22px" ></a>
									
									</td>							
								</tr>
							</table>
						</div>
						<div class="box">
							<div class="modal fade" id="EditIndex" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog" style="margin-left:35%">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
											<p class="modal-title">编辑</p>
										</div>
										<div class="modal-body" style="height: 400px;overflow:scroll">
											<table width="100%" >
												<tr>
													<td>指标编码&nbsp;</td>
													<td><input type="text" width="80%" value="P71822" disabled></td>
												</tr>
												<tr>
													<td>指标名称&nbsp;</td>
													<td><input type="text" value="财政"></td>
												</tr>
												<tr>
													<td>指标别名&nbsp;</td>
													<td><input type="text" value="财政"></td>
												</tr>
												<tr>
													<td>指标分类属性&nbsp;</td>
													<td><input type="text" value="派生指标" value style="width:126px" disabled>
														<select style="width:230px; height:25px">
															<option value="0">--请选择--</option>
															<option value="1" selected="selected">时期指标</option>
															<option value="2">时点指标</option>
															<option value="3">相对指标</option>
															<option value="4">平均指标</option>
															</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>计算类型&nbsp;</td>
													<td><input type="text" value="派生指标" value style="width:126px" disabled>
														<select style="width:230px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">八区月报</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>	
													</td>
												</tr>
												<tr>
													<td></td>
													<td><input type="text" value="同比、环比" disabled></td>
												</tr>
												<tr>
													<td>计量单位&nbsp;</td>
													<td><select style="width:126px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">八区月报</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>
														<select style="width:230px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">八区月报</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>												
													</td>
												</tr>
												<tr>
													<td>显示格式&nbsp;</td>
													<td>
														<select style="width:360px; height:25px">
															<option value="0">--请选择--</option>
															<option value="1" selected="selected">四舍五入-小数点后强制两位(如：5.00)</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>
													</td>
												</tr>
												<tr>
													<td>计算公式&nbsp;</td>
													<td rowspan="2"><input type="text" value style="height:50px" value="第一产业【0101001】*2" disabled></td>
												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td>是否有效&nbsp;</td>
													<td>
														<select style="width:126px; height:25px">
															<option value="0" selected="selected">--请选择--</option>
															<option value="1">八区月报</option>
															<option value="2">季度指标体系（2014）</option>
															<option value="3">人口面积户数</option>
															<option value="4">月度指标体系</option>
															<option value="5">主要经济社会发展指标（2014）</option>
														</select>
														<input type="text" value="时期指标" value style="width:230px">	
												</tr>
												<tr>
													<td>指标说明&nbsp;</td>
													<td rowspan="2"><input type="text" value style="height:50px" value="asdfasdf"></td>
												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td>备注&nbsp;</td>
													<td rowspan="2"><input type="text" value style="height:50px" value=""></td>
												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td>所属人&nbsp;</td>
													<td><input type="text" value="静安区" disabled></td>
												</tr>
												<tr>
													<td></td>
													<td>最近更新 静安区[2014-10-20 15:13]</td>
												</tr>
											</table>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary">保存</button>
											<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 
			</div>
			
			<div id="t1" class="tab-pane">
				44444444
			</div>
			<div id="t2" class="tab-pane">
				55555555
			</div>
			<div id="t3" class="tab-pane">
				666666666
			</div>
			<div id="tt1" class="tab-pane">
				77777777
			</div>
			<div id="ttt1" class="tab-pane">
				888888888
			</div>
			<div id="ttt2" class="tab-pane">
				44444444
			</div>
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
 -->
</body>

</html>