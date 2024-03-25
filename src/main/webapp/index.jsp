<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="jsp/static/head.jsp"%>
</head>
<style>
	#home-container {
				padding: 30px;
				box-shadow: 0px 0px 0px rgba(100,100,100,.1);
				margin: 30px auto 0;
				background: none;
				width: 94%;
				min-height: 100vh;
				border-color: #eee;
				border-width: 0px;
				border-style: solid;
				height: 100%;
			}
	
	#home-container div.home-container-title {
				margin: 0px auto;
				transform: rotate(360deg);
				color: #17d1ce;
				background: url(http://codegen.caihongy.cn/20221206/76c25f7881054058a827fea6375c6c53.png) no-repeat center bottom;
				font-weight: bold;
				display: block;
				width: 640px;
				font-size: 32px;
				transition: all 0.3s ease-in-out 0s;
				text-align: center;
				height: 480px;
			}
	
	#home-container .cards {
				border: 1px solid #ddd;
				border-radius: 20%;
				margin: 0 auto 20px;
				background: rgba(255,255,255,.6);
				display: flex;
				width: 80%;
				justify-content: center;
				align-items: center;
			}
	
	#home-container .cards .item {
				border-radius: 4px;
				box-shadow: 0 0px 0px rgba(0,0,0,.3);
				margin: 0 10px;
				display: flex;
			}
	
	#home-container .cards .item .link {
				background: none;
				width: 80px;
				height: 80px;
			}
	
	#home-container .cards .item .item-body {
				flex-direction: column;
				display: flex;
				width: 160px;
				justify-content: center;
				align-items: center;
			}
	
	#home-container .cards .item .item-body .num {
				margin: 5px 0;
				color: #333;
				font-weight: bold;
				font-size: 20px;
				line-height: 24px;
				height: 24px;
			}
	
	#home-container .cards .item .item-body .name {
				margin: 5px 0;
				color: #666;
				font-size: 16px;
				line-height: 24px;
				height: 24px;
			}
	
    .homeCharts{
        display: flex;
        width: 100%;
        align-items: center;
        height: auto;
        box-shadow: 0 4px 10px rgba(0,0,0,.3);
        border-radius: 10px;
        margin-bottom: 20px;
    }
</style> 
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="jsp/static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->
			
		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">主页</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
			</ol>
		</div>
		<!-- /Breadcrumb -->
			
		<!-- Main Content -->
		<div id="home-container">
			<div class="home-container-title">欢迎使用&nbsp;电动车租赁网站</div>
			
			
		</div>
		<!-- /Main Content -->
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="jsp/static/foot.jsp"%>
    <script src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>

	<script>
		<%@ include file="jsp/utils/menu.jsp"%>
		<%@ include file="jsp/static/setMenu.js"%>
		<%@ include file="jsp/utils/baseUrl.jsp"%>
        <%@ include file="jsp/static/crossBtnControl.js"%>
		// 用户登出
        <%@ include file="jsp/static/logout.jsp"%>


		$(document).ready(function() {
		//我的后台,session信息转移
		if(window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null'){
			  if(window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") == 'null'){
				  window.sessionStorage.setItem("token",window.localStorage.getItem("Token"));
				  window.sessionStorage.setItem("role",window.localStorage.getItem("role"));
				  window.sessionStorage.setItem("accountTableName",window.localStorage.getItem("sessionTable"));
				  window.sessionStorage.setItem("username",window.localStorage.getItem("adminName"));
			  }
		  }			
          $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
		  $('.sidebar-header h3 a').html(projectName)
		  var token = window.sessionStorage.getItem("token");
		  if(token == "null" || token == null){
		  	alert("请登录后再操作");
		  	window.location.href = ("jsp/login.jsp");
		  }
			setMenu();
			<%@ include file="jsp/static/myInfo.js"%>
		});
	</script>
</body>

</html>
