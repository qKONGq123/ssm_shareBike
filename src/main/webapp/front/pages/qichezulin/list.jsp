<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 汽车租赁 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>电动车租赁</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border-radius: 0px;
						padding: 0 20px 0 10px;
						margin: 0;
						color: #666;
						width: 120px;
						font-size: 14px;
						border-color: #ddd;
						border-width: 1px;
						line-height: 40px;
						border-style: solid;
						height: 40px;
					}
		
		/* lists */
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">电动车租赁展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>

				<div class="category-2" :style='{"padding":"30px 10px","margin":"20px 0 0 7%","borderRadius":"0","flexDirection":"column","background":"linear-gradient(0deg, rgba(195,228,245,1) 0%, rgba(35,136,191,1) 100%)","display":"flex","width":"220px","height":"auto","order":"2"}'>
					<div class="category-search" :index="-1" :style='swiperIndex == -1 ? {"cursor":"pointer","border":"0px solid #FF4040","boxShadow":"0px 2px 4px #92b5c8","margin":"0 auto 12px","color":"#111","borderRadius":"30px","textAlign":"center","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(236,244,249,1) 40%, rgba(255,255,255,1) 100%)","width":"100%","lineHeight":"44px","fontSize":"15px","fontWeight":"500"} : {"cursor":"pointer","border":"0px solid #e6e6e6","margin":"0 auto 12px","color":"#333","borderRadius":"30px","textAlign":"center","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(236,244,249,1) 40%, rgba(255,255,255,1) 100%)","width":"96%","lineHeight":"44px","fontSize":"14px","transition":"width 1s ease 0s","height":"44px"}'>全部</div>
					<div class="category-search" :index="index" :style='swiperIndex == index ? {"cursor":"pointer","border":"0px solid #FF4040","boxShadow":"0px 2px 4px #92b5c8","margin":"0 auto 12px","color":"#111","borderRadius":"30px","textAlign":"center","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(236,244,249,1) 40%, rgba(255,255,255,1) 100%)","width":"100%","lineHeight":"44px","fontSize":"15px","fontWeight":"500"} : {"cursor":"pointer","border":"0px solid #e6e6e6","margin":"0 auto 12px","color":"#333","borderRadius":"30px","textAlign":"center","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(236,244,249,1) 40%, rgba(255,255,255,1) 100%)","width":"96%","lineHeight":"44px","fontSize":"14px","transition":"width 1s ease 0s","height":"44px"}' v-for="(item,index) in categoryList" :key="index">
						{{categoryList[index]}}
					</div>
				</div>
					
				<form class="layui-form filter" :style='{"padding":"0px","margin":"20px 7% 20px","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>车辆名称</div>
						<input type="text" :style='{"padding":"0 10px","margin":"0","outline":"none","borderColor":"#ddd","color":"#666","borderRadius":"0px","borderWidth":"1px","width":"140px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' name="cheliangmingcheng" id="cheliangmingcheng" placeholder="车辆名称" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>车辆品牌</div>
						<select name="cheliangpinpai" id="cheliangpinpai" lay-filter="cheliangpinpai">
							<option value="">请选择</option>
							<option v-for="(item,index) in cheliangpinpaiOptions" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>车辆状态</div>
						<select name="cheliangzhuangtai" id="cheliangzhuangtai" lay-filter="cheliangzhuangtai">
							<option value="">请选择</option>
							<option v-for="(item,index) in cheliangzhuangtaiOptions" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>

					<button :style='{"cursor":"pointer","padding":"0px 20px","boxShadow":"inset 0px 0px 0px 0px #7e5ffb","margin":"0 8px 0 4px","borderColor":"#8bb12f","color":"#fff","outline":"none","borderRadius":"30px","background":"#2186bd","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 20px","boxShadow":"inset 0px 0px 0px 0px #f2e013","margin":"0 4px 0 0","borderColor":"#ffaf03","color":"#fff","outline":"none","borderRadius":"30px","background":"#f4740c","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-if="isAuth('qichezulin','新增')" @click="jump('../qichezulin/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"width":"100%","margin":"20px 0 10px","minWidth":"1050px","background":"none","flex":"1","order":"3"}' class="lists">
					<!-- 样式一 -->
					<div :style='{"padding":"0px 7%","margin":"0","flexWrap":"wrap","background":"none","display":"block","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-1">
						<div :style='{"border":"0px solid #e6e6e6","padding":"0px","margin":"0 0 40px 2%","borderRadius":"0","flexWrap":"wrap","background":"rgba(245,245,245,.0)","display":"flex","width":"31%","position":"relative","float":"left","justifyContent":"space-between","height":"auto"}' @click="jump('../qichezulin/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"cursor":"pointer","border":"0px inset #98c6e2","padding":"45px 30px","boxShadow":"0px 0px 0px 0px #999","objectFit":"cover","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20230128/d927f93371f746899f81fd3ae78502d1.png) no-repeat center top / 100% 100%","display":"block","width":"100%","height":"275px"}' :src="item.cheliangtupian?baseurl+item.cheliangtupian.split(',')[0]:''">
							<div v-if="item.price" :style='{"padding":"4px 10px","color":"red","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">￥{{Number(item.price).toFixed(2)}}</div>
							<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"4px 10px","color":"red","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
							<div v-if="item.jf" :style='{"padding":"4px 10px","color":"red","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">{{Number(item.jf).toFixed(0)}}积分</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"center","background":"none","display":"inline-block","width":"100%","lineHeight":"30px","fontSize":"16px","textOverflow":"ellipsis"}' class="name">{{item.cheliangmingcheng}}</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"center","background":"none","display":"inline-block","width":"100%","lineHeight":"30px","fontSize":"16px","textOverflow":"ellipsis"}' class="name">{{item.cheliangzhuangtai}}</div>
						</div>
					</div>
					
				</div>
				
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					categoryList: [],

				        cheliangpinpaiOptions: [],
				        cheliangzhuangtaiOptions: [],
					baseurl: '',
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 12;
				vue.baseurl = http.baseurl;
				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
						  if (element.value != null) {
						    swiperList.push({
						      img: http.baseurl+element.value
						    });
						  }
						});
						vue.swiperList = swiperList;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '520px',
								anim: 'fade',
								autoplay: 'true',
								interval: '6000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});
        			http.request(`option/cheliangpinpai/cheliangpinpai`,'get',{},(res)=>{
                			vue.cheliangpinpaiOptions = res.data
							vue.$nextTick(() => {form.render()})
        			});
			        vue.cheliangzhuangtaiOptions = '已租赁,可租赁'.split(',')
					vue.$nextTick(() => {form.render()})

				//类型查询
			      categoryList();
				//类型搜索
			      $(document).on("click", ".category-search", function(e){
					  vue.swiperIndex = $(this).attr('index')
				  pageList(e.target.innerText);
			      });

			      function categoryList() {
				  // 获取列表数据
				  http.request('option/cheliangpinpai/cheliangpinpai', 'get', {}, function(res) {
				    vue.categoryList = res.data
				  })

				}
			      var vCategory = '';


				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList(category) {
					var param = {
						page: 1,
						limit: limit
					}
				if(category!=null && category!='全部') {
					vCategory = category;
					if (jquery('#cheliangmingcheng').val()) {
						param['cheliangmingcheng'] = '';
					}
					if (jquery('#cheliangpinpai').val()) {
						param['cheliangpinpai'] = '';
					}
					if (jquery('#cheliangzhuangtai').val()) {
						param['cheliangzhuangtai'] = '';
					}
				}
				if(vCategory!='' && category!='全部') {
					param['cheliangpinpai'] = category;
				}

			        if (jquery('#cheliangmingcheng').val()) {
			          param['cheliangmingcheng'] = jquery('#cheliangmingcheng').val() ? '%' + jquery('#cheliangmingcheng').val() + '%' : '';
			        }
			        if (jquery('#cheliangpinpai').val()) {
			          param['cheliangpinpai'] = jquery('#cheliangpinpai').val() ? jquery('#cheliangpinpai').val() : '';
			        }
			        if (jquery('#cheliangzhuangtai').val()) {
			          param['cheliangzhuangtai'] = jquery('#cheliangzhuangtai').val() ? jquery('#cheliangzhuangtai').val() : '';
			        }
			        param['sort'] = 'faburiqi';
			        param['order'] = 'desc';


				if (jquery('#cheliangmingcheng').val()) {
					param['cheliangmingcheng'] = jquery('#cheliangmingcheng').val() ? '%' + jquery('#cheliangmingcheng').val() + '%' : '';
				}  
				if (jquery('#cheliangpinpai').val()) {
					param['cheliangpinpai'] = jquery('#cheliangpinpai').val() ? '%' + jquery('#cheliangpinpai').val() + '%' : '';
				}  
				if (jquery('#cheliangzhuangtai').val()) {
					param['cheliangzhuangtai'] = jquery('#cheliangzhuangtai').val() ? '%' + jquery('#cheliangzhuangtai').val() + '%' : '';
				}  

				var indexQueryCondition = localStorage.getItem('indexQueryCondition');
				if (indexQueryCondition) {
					param['cheliangmingcheng'] = '%' + indexQueryCondition + '%';
					localStorage.removeItem('indexQueryCondition');
				}
					// 获取列表数据
					http.request('qichezulin/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('qichezulin/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
