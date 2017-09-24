<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()  + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的JSP页面</title>
<link href="css/main.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
<%@ include file="common_header.jsp" %>
<!--  轮播   -->
<div id="fwslider" style="height:554px;">
	<div class="slider_container">
		<div class="slide" style="opacity:1; z-index:0; display:none;">
			<!-- 第一张照片 -->
				<img id="img1" src="img/img1.jpg">
		</div>
		
		<div class="slide" style="opacity:1; z-index:1; display:block;">
			<!-- 第二张照片 -->
				<img id="img2" src="img/img2.jpg">
		</div>
		
		<div class="slide" style="opacity:1; z-index:1; display:block;">
			<!-- 第三张照片 -->
				<img id="img3" src="img/img3.jpg">
		</div>
		
		<div class="slide" style="opacity:1; z-index:0; display:block;">
			<!-- 第一张照片 -->
				<img id="img4" src="img/img5.jpg">
		</div>
		
		<div class="slide" style="opacity:1; z-index:0; display:block;">
			<!-- 第一张照片 -->
				<img id="img5" src="img/img5.jpg">
		</div>
		</div>
	<div class="timers" style="width:180px;">
	</div>
	<div class="slidePrev" style="left:0px; top:252px;">
	</div>
	<div class="slideNext" style="right:0px; top:252px; opacity:0.5;">
	<span></span>
	</div>
</div>
<!--  轮播   -->


<!-- 底部功能栏代码开始 -->
<div class="main_bg">
	
	<div class="business">
		业务领域  BUSINESS
	</div>
	
	<div class="wrap w_72">
		
		<div class="grids_1_of_3">
			<div class="grid_1_of_3 images_1_of_3">
				<img src="img/pic1.png">
			</div>
			
			<div class="grid_1_of_3 images_1_of_3">
				<img src="img/pic2.png">
			</div>
			
			<div class="grid_1_of_3 images_1_of_3">
				<img src="img/pic3.png">
			</div>
			
			<div class="grid_1_of_3 images_1_of_3">
				<img src="img/pic4.png">
			</div>
			
			<div class="grid_1_of_3 images_1_of_3" style="background:none">
				<img src="img/pic5.png">
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>

<!-- 底部功能栏代码结束 -->

<div class="address">
	Copyright 2016 明日科技有限公司 ALL Rights.
	<br>
	<a href="http://www.mingrisoft.com">吉林省明日科技有限公司</a>技术支持
	<a href="<%=basePath %>/admin/login.jsp">后台</a>
	<br> 吉ICP备10002740号-2 吉公网安备22010202000132号
</div>
<div class="clear"></div>
</body>

<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/fwslider.js"></script>
</html>