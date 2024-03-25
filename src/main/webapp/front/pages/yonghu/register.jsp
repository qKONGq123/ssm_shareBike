<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		
		#registerForm .form-item .layui-form-select .layui-input {
						border-radius: 8px;
						padding: 0 10px;
						outline: none;
						color: #333;
						background: none;
						width: 100%;
						font-size: 14px;
						border-color: #ddd;
						border-width: 2px;
						border-style: solid;
						height: 40px;
					}
	</style>
	<body>
		<div id="register" class="register" :style='{"minHeight":"100vh","padding":"0","alignItems":"flex-start","background":"url(http://codegen.caihongy.cn/20230128/effb535f5a6142daa256f40fb8542933.jpg) no-repeat center bottom / 100% 100%,#fff","display":"flex","width":"100%","justifyContent":"flex-start"}'>
			<form id="registerForm" class="layui-form login-form" :style='{"padding":"20px 0px 40px","boxShadow":"0 0px 0px rgba(0, 0, 0, .1)","margin":"20px 0 0 12%","borderColor":"#eee","display":"flex","justifyContent":"center","minHeight":"550px","outline":"0px solid #eee","borderRadius":"0","outlineOffset":"0px","flexWrap":"wrap","background":"rgba(255,255,255,1)","borderWidth":"0px","width":"44%","borderStyle":"solid","height":"100%"}' lay-filter="myForm">
				<div v-if="true" :style='{"margin":"0 0 4px","color":"#5fa6d0","textAlign":"center","display":"none","width":"100%","fontSize":"22px","lineHeight":"44px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / REGISTER</div>
				<div v-if="true" :style='{"boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"0 0 10px","margin":"20px auto 40px","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#888","textAlign":"center","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20230128/4cbad5a2e6f444188a2c08cb74dc8160.png) no-repeat center bottom","borderWidth":"0px","width":"700px","lineHeight":"50px","fontSize":"24px","borderStyle":"solid"}'>用户注册</p></div>
			

				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>用户名：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ddd","color":"#333","borderRadius":"8px","borderWidth":"2px","background":"none","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="yonghuming" name="yonghuming" placeholder="请输入用户名" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>密码：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ddd","color":"#333","borderRadius":"8px","borderWidth":"2px","background":"none","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="mima" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
                    <div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>确认密码：</div>
                    <input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ddd","color":"#333","borderRadius":"8px","borderWidth":"2px","background":"none","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="mima2" required lay-verify="required" placeholder="请再次输入密码" autocomplete="off" class="layui-input">
                </div>
				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>姓名：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ddd","color":"#333","borderRadius":"8px","borderWidth":"2px","background":"none","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="xingming" name="xingming" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>性别：</div>
                    <select name="xingbie" id="xingbie" >
                        <option value="">请选择性别</option>
                        <option v-for="(item,index) in xingbie" v-bind:key="index" :value="item">{{item}}</option>
                    </select>
                </div>
				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"40px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>头像：</div>
                    <div :style='{"alignItems":"center","display":"flex"}'>
						<img id="touxiangImg" :style='{"minHeight":"60px","width":"120px","margin":"0 10px 0 0","objectFit":"cover","borderRadius":"4px","height":"auto"}' src="../../img/avator.png">
						<input type="hidden" id="touxiang" name="touxiang" />
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","boxShadow":"inset 0px 0px 0px 0px #288bbf","margin":"0","borderColor":"#288bbf","color":"#288bbf","minWidth":"110px","outline":"none","borderRadius":"8px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="touxiangUpload">
							<i :style='{"margin":"0 10px 0 0","fontSize":"14px","color":"#288bbf","display":"inline-block"}' class="layui-icon">&#xe67c;</i>上传图片
						</button>
					</div>
                </div>
				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>手机：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ddd","color":"#333","borderRadius":"8px","borderWidth":"2px","background":"none","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="shouji" name="shouji" placeholder="请输入手机" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"60%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>身份证：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","outline":"none","borderColor":"#ddd","color":"#333","borderRadius":"8px","borderWidth":"2px","background":"none","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="shenfenzheng" name="shenfenzheng" placeholder="请输入身份证" autocomplete="off" class="layui-input">
				</div>

				<button :style='{"cursor":"pointer","padding":"0 10px","margin":"0px 0px 0px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#288bbf","display":"block","outline":"none","borderRadius":"0","left":"0","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","borderWidth":"0px","width":"10%","fontSize":"24px","position":"absolute","borderStyle":"solid","height":"100%"}' class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
				<button :style='{"cursor":"pointer","padding":"0 0 10px","margin":"20px 4% 0px","borderColor":"#98c6e2","color":"#333","display":"block","outline":"none","borderRadius":"8px","background":"url(http://codegen.caihongy.cn/20230128/a40a6371715e4ac89167c2b0af61c831.png) no-repeat center bottom","borderWidth":"0px","width":"42%","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
				<a :style='{"cursor":"pointer","padding":"0 0 10px","borderColor":"#98c6e2","margin":"20px 0 0","color":"#333","textAlign":"center","display":"inline-block","textDecoration":"none","borderRadius":"8px","background":"url(http://codegen.caihongy.cn/20230128/a40a6371715e4ac89167c2b0af61c831.png) no-repeat center bottom","borderWidth":"0px","width":"42%","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"44px"}' style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
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
                xingbie : '男,女'.split(','),
              },
              updated: function() {
                  layui.form.render(null, 'myForm');
              },
			  methods: {
				
			  }
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
				var tablename = http.getParam('tablename');


                // 上传图片
                var touxiangUpload = upload.render({
                    //绑定元素
                    elem: '#touxiangUpload',
                    //上传接口
                    url: http.baseurl + 'file/upload',
                    // 请求头
                    headers: {
                        Token: localStorage.getItem('Token')
                    },
                    // 允许上传时校验的文件类型
                    accept: 'images',
                    before: function() {
                        //loading层
                        var index = layer.load(1, {
                            shade: [0.1, '#fff'] //0.1透明度的白色背景
                        });
                    },
                    // 上传成功
                    done: function(res) {
                        console.log(res);
                        layer.closeAll();
                        if (res.code == 0) {
                            layer.msg("上传成功", {
                                time: 2000,
                                icon: 6
                            })
                            var url = 'upload/' + res.file;
                            jquery('#touxiang').val(url);
                            jquery('#touxiangImg').attr('src', http.baseurl+url)
                        } else {
                            layer.msg(res.msg, {
                                time: 2000,
                                icon: 5
                            })
                        }
                    },
                    //请求异常回调
                    error: function() {
                        layer.closeAll();
                        layer.msg("请求接口异常", {
                            time: 2000,
                            icon: 5
                        })
                    }
                });
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    if(!data.yonghuming){
                        layer.msg('用户名不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.mima){
                        layer.msg('密码不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.xingming){
                        layer.msg('姓名不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.shouji){
                        layer.msg('手机不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isMobile(data.shouji)){
                        layer.msg('手机应输入手机格式', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.shenfenzheng){
                        layer.msg('身份证不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIdentity(data.shenfenzheng)){
                        layer.msg('身份证应输入身份证格式', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

                    if(data.mima!=data.mima2) {
                        layer.msg('两次密码输入不一致', {
                                time: 2000,
                                icon: 5
                        });
                        return false
                    }

                    var url = tablename + '/register';
                    http.requestJson(url, 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
