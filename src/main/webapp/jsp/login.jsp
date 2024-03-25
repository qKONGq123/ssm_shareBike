<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>登陆</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>

<!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<!-- Fav and touch icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
	</head>
<style>
	html, body {
		width: 100%;
		height: 100%;
	}
	
	.content {
				background-repeat: no-repeat;
				background-size: 100% 100%;
				background: url(http://codegen.caihongy.cn/20221205/38ade91461b948868bfe954ebbb89310.jpg);
				display: flex;
				width: 100%;
				min-height: 100vh;
				justify-content: center;
				align-items: center;
				background-position: center center;
			}
	
	#loginForm {
				border-radius: 12px;
				padding: 30px 20px 30px;
				box-shadow: 0px 0px 0px #ddd;
				margin: 0;
				background-size: 100% 100%;
				/*这里没有任何问题url，只不过就是用不了*/
				background: url() no-repeat right bottom,rgba(255,255,255,.9);
				width: 600px;
				text-align: left;
				height: auto;
			}
	
	#loginForm .title {
				margin: 10px 0px 20px 0px;
				color: #333;
				width: 100%;
				font-size: 24px;
				line-height: 44px;
				text-align: center;
			}
	
	#loginForm .list-item {
				margin: 0 auto 16px;
				background: none;
				display: flex;
				width: 90%;
				align-items: center;
				flex-wrap: wrap;
			}
	
	#loginForm .list-item .item-label {
				color: #160f53;
				width: 64px;
				font-size: 14px;
				line-height: 44px;
			}
	
	#loginForm .list-item>input {
				border-radius: 4px;
				padding: 0 10px;
				color: #666;
				background: #fff;
				width: 100%;
				font-size: 14px;
				border-color: #d0cddb;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#loginForm .list-code {
				margin: 0 auto 0;
				background: none;
				display: flex;
				width: 90%;
				justify-content: space-between;
				flex-wrap: wrap;
				text-align: left;
			}
	
	#loginForm .list-code input {
				border-radius: 4px;
				padding: 0 10px;
				outline: none;
				margin: 0 10px 0 0px;
				color: #666;
				background: #fff;
				width: 400px;
				font-size: 14px;
				border-color: #d0cddb;
				border-width: 1px;
				border-style: solid;
				height: 40px;
			}
	
	#loginForm .list-code .nums {
				cursor: pointer;
				border-radius: 20px;
				background: #f5f5f5;
				display: flex;
				width: 80px;
				border-color: #d0cddb;
				border-width: 0 0 0px;
				justify-content: center;
				align-items: center;
				border-style: solid;
				height: 40px;
			}
	
	#loginForm .form-group-r {
				margin: 20px auto 0;
				width: 90%;
			}
	
	#loginForm .form-group-r .checkbox {
				display: inline-block;
			}
	
	#loginForm .form-group-r .checkbox input {
				margin: 0 4px 0;
			}
	
	#loginForm .form-group-r .checkbox.active input {
				margin: 0 4px 0;
				background: #17d1cd;
			}
	
	#loginForm .form-group-r .checkbox label {
				color: #333;
				font-size: 14px;
			}
	
	#loginForm .form-group-r .checkbox.active label {
				color: #17d1cd;
				font-size: 14px;
			}
	
	#loginForm .form-group-l-r {
				margin: 30px 0 0 0px;
				background: none;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				flex-wrap: wrap;
			}
	
	#loginForm .form-group-l-r .btn-login {
				border: 0;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 20px;
				box-shadow: 0px 0px 0px #dae3d5;
				margin: 0 4px;
				outline: none;
				color: #fff;
				background: #17d1cd;
				width: auto;
				font-size: 14px;
				height: 44px;
			}
	
	#loginForm .form-group-l-r .btn-register  {
				border: 1px solid #17d1cd;
				cursor: pointer;
				padding: 0 6px;
				margin: 0 4px;
				color: #17d1cd;
				font-size: 14px;
				line-height: 44px;
				border-radius: 4px;
				box-shadow: 0px 0px 0px #dae3d5;
				outline: none;
				background: #fff;
				width: auto;
				height: 44px;
			}
	
	#loginForm .form-group-l-r .btn-forget  {
				border: 0;
				cursor: pointer;
				padding: 0;
				margin: 20px auto 0;
				color: #17d1cd;
				font-size: 14px;
				border-color: #eee;
				line-height: 40px;
				border-radius: 0;
				outline: none;
				background: none;
				width: 90%;
				border-width: 0px 0 0px;
				border-style: dashed;
				text-align: right;
				height: 40px;
			}
</style>
<body>
		
	<div class="content">
		<div id="login-wrapper">
			<form id="loginForm" action="" method="post">
				<div class="title">电动车租赁</div>
				<div class="list-item">
					<input type="text" id="username" name="username" placeholder="用户名" class="form-control-i" required>
				</div>
				<div class="list-item">
					<input type="password" name="password" placeholder="密码" class="form-control-i" required>
				</div>
				
				
				<div class="form-group-l-r">
					<button class="btn btn btn-primary btn-login" type="submit" onclick="login()">登录</button>
				</div>	
			</form>
		</div>
	</div>

	<!-- MAIN EFFECT -->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/preloader.js"></script>-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/app.js"></script>-->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/load.js"></script>-->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/main.js"></script>-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
		<script type="text/javascript">
		
	<%@ include file="utils/menu.jsp"%>
		
	<%@ include file="utils/baseUrl.jsp"%>
		var role = "";
		var accountTableName = "";
		var codes = [{
			num: 1,
			color: '#000',
			rotate: '10deg',
			size: '16px'
		  }, {
			num: 2,
			color: '#000',
			rotate: '10deg',
			size: '16px'
		  }, {
			num: 3,
			color: '#000',
			rotate: '10deg',
			size: '16px'
		  }, {
			num: 4,
			color: '#000',
			rotate: '10deg',
			size: '16px'
		  }]
		
		//渲染角色选择
		function setRoleOption() {
			var box = document.createElement('div');
			box.setAttribute('class', 'form-group-r');
            var menuNum = 0;
			for (var i = 0; i < menus.length; i++) {
                if(menus[i].hasBackLogin=='是') {
                    if(menuNum==0) {
                        role = menus[i].roleName;
                        $('#loginForm').attr('action', baseUrl + menus[i].tableName + '/login');
                        accountTableName = menus[i].tableName;
                    }
                    menuNum++;
                }
			}
            if(menuNum>1) {
                role = '';
                $('#loginForm').attr('action', '');
                accountTableName = '';
                for (var i = 0; i < menus.length; i++) {
                    if(menus[i].hasBackLogin=='是') {
                        //console.log(menu[i].roleName)
                        var div = document.createElement('div');
                        div.setAttribute('class', 'checkbox');
                        var label = document.createElement('label');
                        //label.innerHTML = menus[i].roleName;
                        var checkbox = document.createElement('input');
                        checkbox.setAttribute('type', 'radio');
                        checkbox.setAttribute('name', 'chk');
                        checkbox.setAttribute('value', menus[i].roleName);
                        var attr = "checkRole(" + "\'" + menus[i].roleName + "\',\'"
                                + menus[i].tableName + "\')";
                        checkbox.setAttribute('onclick', attr);
                        //label.setAttribute('class','checkbox inline');
                        label.innerHTML = menus[i].roleName;
                        div.appendChild(checkbox);
                        div.appendChild(label);
                        box.appendChild(div);
                    }
                }
            }
            $('form .form-group-l-r').before(box);
		}
		function checkRole(roleName, tableName) {			
			role = roleName;
			$('#loginForm').attr('action', baseUrl + tableName + '/login');
			accountTableName = tableName;
		}
		
		$('#login-wrapper').on('change', 'input[type=radio]', function () {
		    $('#login-wrapper .form-group-r .checkbox').removeClass('active');
			$(this).parent().addClass('active');
		});
		
		function login() {
			
			$("#loginForm")
					.ajaxForm(
							function(res) {
								if (role == "" || role == null) {
									alert("请选择角色后再登录");
								} else {
									if (res.code == 0) {
										var username = $('#username').val();
										window.sessionStorage.setItem('accountTableName',accountTableName)
						 				window.sessionStorage.setItem('username',username);
										window.sessionStorage.setItem('token',
												res.token);
										window.sessionStorage.setItem('role',
												role);
										http(accountTableName+'/session','GET',{},(res2)=>{
											if(res2.code == 0){
												window.sessionStorage.setItem('userid',res2.data.id);
										        window.location.href = "${pageContext.request.contextPath}/index.jsp";
											}
										});
									} else {
										alert(res.msg);
									}
								}

							});
		}
		function ready() {
			setRoleOption();
			//$('form').attr('action',baseUrl + 'users/login');
		}
		document.addEventListener("DOMContentLoaded", ready);
		
		function randomString() {
			var len = 4;
			var chars = [
			  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
			  'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
			  'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
			  'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
			  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
			  '3', '4', '5', '6', '7', '8', '9'
			]
			var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
			var sizes = ['14', '15', '16', '17', '18']
			
			var output = []
			for (var i = 0; i < len; i++) {
			  // 随机验证码
			  var key = Math.floor(Math.random() * chars.length)
			  codes[i].num = chars[key]
			  // 随机验证码颜色
			  var code = '#'
			  for (var j = 0; j < 6; j++) {
			    var key = Math.floor(Math.random() * colors.length)
			    code += colors[key]
			  }
			  codes[i].color = code
			  // 随机验证码方向
			  var rotate = Math.floor(Math.random() * 30)
			  var plus = Math.floor(Math.random() * 2)
			  if (plus == 1) rotate = '-' + rotate
			  codes[i].rotate = 'rotate(' + rotate + 'deg)'
			  // 随机验证码字体大小
			  var size = Math.floor(Math.random() * sizes.length)
			  codes[i].size = sizes[size] + 'px'
			}
			
			var str = ''
			for(var i = 0;i<codes.length;i++) {
				str += '<span style="color:' + codes[i].color + ';transform:' + codes[i].rotate + ';fontSize:' + codes[i].size + ';padding: 0 3px;display:inline-block">'+codes[i].num+'</span>'
			}
			$('#nums').html('').append(str);
		}
		
		randomString();
	</script>

</body>

</html>
