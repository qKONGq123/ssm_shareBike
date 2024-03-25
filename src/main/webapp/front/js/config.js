
var projectName = '电动车租赁网站';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '汽车租赁',
	url: './pages/qichezulin/list.jsp'
}, 

{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspma1do6/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除"],"menu":"车辆品牌","menuJump":"列表","tableName":"cheliangpinpai"}],"menu":"车辆品牌管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"汽车租赁","menuJump":"列表","tableName":"qichezulin"}],"menu":"汽车租赁管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","修改","删除","审核","每月营收统计"],"menu":"租赁记录","menuJump":"列表","tableName":"zulinjilu"}],"menu":"租赁记录管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","修改","删除","审核","支付"],"menu":"归还记录","menuJump":"列表","tableName":"guihaijilu"}],"menu":"归还记录管理"},{"child":[{"appFrontIcon":"cuIcon-shop","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","租赁"],"menu":"汽车租赁列表","menuJump":"列表","tableName":"qichezulin"}],"menu":"汽车租赁模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","支付","车辆归还"],"menu":"租赁记录","menuJump":"列表","tableName":"zulinjilu"}],"menu":"租赁记录管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"归还记录","menuJump":"列表","tableName":"guihaijilu"}],"menu":"归还记录管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","租赁"],"menu":"汽车租赁列表","menuJump":"列表","tableName":"qichezulin"}],"menu":"汽车租赁模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
