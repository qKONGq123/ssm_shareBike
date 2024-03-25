<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 忘记密码 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>忘记密码</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style type="text/css">
		html,
		body {
			height: 100%;
		}
	</style>
	<body>
        <div id="register" class="register" :style='{"minHeight":"100vh","padding":"0","alignItems":"flex-start","background":"url(http://codegen.caihongy.cn/20230128/effb535f5a6142daa256f40fb8542933.jpg) no-repeat center bottom / 100% 100%,#fff","display":"flex","width":"100%","justifyContent":"flex-start"}'>
            <form id="registerForm" class="layui-form login-form" :style='{"padding":"20px 0px 40px","boxShadow":"0 0px 0px rgba(0, 0, 0, .1)","margin":"20px 0 0 12%","borderColor":"#eee","display":"flex","justifyContent":"center","minHeight":"550px","outline":"0px solid #eee","borderRadius":"0","outlineOffset":"0px","flexWrap":"wrap","background":"rgba(255,255,255,1)","borderWidth":"0px","width":"44%","borderStyle":"solid","height":"100%"}' lay-filter="myForm">
                <div v-if="true" :style='{"margin":"0 0 4px","color":"#5fa6d0","textAlign":"center","display":"none","width":"100%","fontSize":"22px","lineHeight":"44px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / FORGET</div>
                <div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"0 0 10px","margin":"20px auto 40px","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#888","textAlign":"center","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20230128/4cbad5a2e6f444188a2c08cb74dc8160.png) no-repeat center bottom","borderWidth":"0px","width":"700px","lineHeight":"50px","fontSize":"24px","borderStyle":"solid"}'>忘记密码</p></div>

				<div v-if="tabIndex==1" :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#333","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"none","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" id="username" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
				</div>
                <div v-if="tabIndex==1" :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
                    <select name="roles" id="roles" lay-filter="roles">
                        <option value="">请选择角色</option>
                    </select>
                </div>
				<div v-if="tabIndex==2" :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#333","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"none","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" v-model="userinfo.pquestion" placeholder="请输入密保问题" autocomplete="off" class="layui-input" readonly>
				</div>
				<div v-if="tabIndex==2" :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#333","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"none","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" v-model="userinfo.panswer1" placeholder="请输入密保答案" autocomplete="off" class="layui-input">
				</div>
				<div v-if="tabIndex==3" :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#333","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"none","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="password" v-model="userinfo.mima" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
				<div v-if="tabIndex==3" :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#333","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"none","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="password" v-model="userinfo.mima1" placeholder="请输入确认密码" autocomplete="off" class="layui-input">
				</div>
				<button v-if="tabIndex==1" :style='{"cursor":"pointer","padding":"0 10px","margin":"0px 0px 0px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#288bbf","display":"block","outline":"none","borderRadius":"0","left":"0","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","borderWidth":"0px","width":"10%","fontSize":"24px","position":"absolute","borderStyle":"solid","height":"100%"}' class="layui-btn btn-submit" lay-submit lay-filter="getSecurity">获取密保</button>
				<button v-if="tabIndex==2" :style='{"cursor":"pointer","padding":"0 10px","margin":"0px 0px 0px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#288bbf","display":"block","outline":"none","borderRadius":"0","left":"0","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","borderWidth":"0px","width":"10%","fontSize":"24px","position":"absolute","borderStyle":"solid","height":"100%"}' class="layui-btn btn-submit" lay-submit lay-filter="validateSecurity">校验</button>
				<button v-if="tabIndex==3" :style='{"cursor":"pointer","padding":"0 10px","margin":"0px 0px 0px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#288bbf","display":"block","outline":"none","borderRadius":"0","left":"0","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","borderWidth":"0px","width":"10%","fontSize":"24px","position":"absolute","borderStyle":"solid","height":"100%"}' class="layui-btn btn-submit" lay-submit lay-filter="updatePassword">修改密码</button>
				<a v-if="tabIndex==1" :style='{"cursor":"pointer","padding":"0 0 10px","borderColor":"#98c6e2","margin":"20px 0 0","color":"#333","textAlign":"center","display":"inline-block","textDecoration":"none","borderRadius":"8px","background":"url(http://codegen.caihongy.cn/20230128/a40a6371715e4ac89167c2b0af61c831.png) no-repeat center bottom","borderWidth":"0px","width":"42%","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"44px"}' style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</form>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<script>
			var vue = new Vue({
				el: '#register',
				data: {
					tabIndex: 1,
					userinfo: {}
				},
				updated: function() {
					layui.form.render(null, 'myForm');
				},
				computed: {
					SecondToDate: function() {
						var time = this.count;
						time = parseInt(time) + "秒后重发";
						return time;
					}
				},
				methods: {}
			});

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
                var tableName = '';
				// 注册
				form.on('submit(getSecurity)', function(data) {
                    if(!tableName) {
                        layer.msg('请选择角色', {
                            time: 2000,
                            icon: 5
                        })
                        return false
                    }
					data = data.field;
					var url = tableName + '/security' + '?username=' + data.username
					http.request(url, 'get', {}, function(res) {
						if (res.code == 0 && res.data) {
								vue.tabIndex = 0
							layer.msg('获取成功', {
								time: 2000,
								icon: 6
							}, function() {
								vue.userinfo = res.data
								vue.userinfo.mima = ''
								vue.tabIndex = 2
							})

						} else {
							layer.msg('用户名不存在', {
								time: 2000,
								icon: 5
							})
						}
					});
					return false
				});
				form.on('submit(validateSecurity)', function(data) {
					if (vue.userinfo.panswer !== vue.userinfo.panswer1) {
						layer.msg('密保答案错误', {
							time: 2000,
							icon: 5
						})
						return false
					}
					layer.msg('答案正确', {
						time: 2000,
						icon: 6
					}, function() {
						vue.tabIndex = 3
					})
					return false
				});
				form.on('submit(updatePassword)', function(data) {
					if (vue.userinfo.mima == '') {
						layer.msg('请输入密码', {
							time: 2000,
							icon: 5
						})
						return false
					}
					if (vue.userinfo.mima !== vue.userinfo.mima1) {
						layer.msg('两次密码输入不一致', {
							time: 2000,
							icon: 5
						})
						return false
					}
					http.requestJson(tableName + '/update', 'post', vue.userinfo, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.href = '../login/login.jsp';
						});
					});

					return false
				});

			});
		</script>
	</body>
</html>
