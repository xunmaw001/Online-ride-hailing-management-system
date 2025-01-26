import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import sijiList from '../pages/siji/list'
import sijiDetail from '../pages/siji/detail'
import sijiAdd from '../pages/siji/add'
import cheliangxinxiList from '../pages/cheliangxinxi/list'
import cheliangxinxiDetail from '../pages/cheliangxinxi/detail'
import cheliangxinxiAdd from '../pages/cheliangxinxi/add'
import yuyuexinxiList from '../pages/yuyuexinxi/list'
import yuyuexinxiDetail from '../pages/yuyuexinxi/detail'
import yuyuexinxiAdd from '../pages/yuyuexinxi/add'
import quxiaoxinxiList from '../pages/quxiaoxinxi/list'
import quxiaoxinxiDetail from '../pages/quxiaoxinxi/detail'
import quxiaoxinxiAdd from '../pages/quxiaoxinxi/add'
import dingdanxinxiList from '../pages/dingdanxinxi/list'
import dingdanxinxiDetail from '../pages/dingdanxinxi/detail'
import dingdanxinxiAdd from '../pages/dingdanxinxi/add'
import tousuxinxiList from '../pages/tousuxinxi/list'
import tousuxinxiDetail from '../pages/tousuxinxi/detail'
import tousuxinxiAdd from '../pages/tousuxinxi/add'
import jiangfaxinxiList from '../pages/jiangfaxinxi/list'
import jiangfaxinxiDetail from '../pages/jiangfaxinxi/detail'
import jiangfaxinxiAdd from '../pages/jiangfaxinxi/add'
import qianyuexinxiList from '../pages/qianyuexinxi/list'
import qianyuexinxiDetail from '../pages/qianyuexinxi/detail'
import qianyuexinxiAdd from '../pages/qianyuexinxi/add'
import gongzixinxiList from '../pages/gongzixinxi/list'
import gongzixinxiDetail from '../pages/gongzixinxi/detail'
import gongzixinxiAdd from '../pages/gongzixinxi/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'siji',
					component: sijiList
				},
				{
					path: 'sijiDetail',
					component: sijiDetail
				},
				{
					path: 'sijiAdd',
					component: sijiAdd
				},
				{
					path: 'cheliangxinxi',
					component: cheliangxinxiList
				},
				{
					path: 'cheliangxinxiDetail',
					component: cheliangxinxiDetail
				},
				{
					path: 'cheliangxinxiAdd',
					component: cheliangxinxiAdd
				},
				{
					path: 'yuyuexinxi',
					component: yuyuexinxiList
				},
				{
					path: 'yuyuexinxiDetail',
					component: yuyuexinxiDetail
				},
				{
					path: 'yuyuexinxiAdd',
					component: yuyuexinxiAdd
				},
				{
					path: 'quxiaoxinxi',
					component: quxiaoxinxiList
				},
				{
					path: 'quxiaoxinxiDetail',
					component: quxiaoxinxiDetail
				},
				{
					path: 'quxiaoxinxiAdd',
					component: quxiaoxinxiAdd
				},
				{
					path: 'dingdanxinxi',
					component: dingdanxinxiList
				},
				{
					path: 'dingdanxinxiDetail',
					component: dingdanxinxiDetail
				},
				{
					path: 'dingdanxinxiAdd',
					component: dingdanxinxiAdd
				},
				{
					path: 'tousuxinxi',
					component: tousuxinxiList
				},
				{
					path: 'tousuxinxiDetail',
					component: tousuxinxiDetail
				},
				{
					path: 'tousuxinxiAdd',
					component: tousuxinxiAdd
				},
				{
					path: 'jiangfaxinxi',
					component: jiangfaxinxiList
				},
				{
					path: 'jiangfaxinxiDetail',
					component: jiangfaxinxiDetail
				},
				{
					path: 'jiangfaxinxiAdd',
					component: jiangfaxinxiAdd
				},
				{
					path: 'qianyuexinxi',
					component: qianyuexinxiList
				},
				{
					path: 'qianyuexinxiDetail',
					component: qianyuexinxiDetail
				},
				{
					path: 'qianyuexinxiAdd',
					component: qianyuexinxiAdd
				},
				{
					path: 'gongzixinxi',
					component: gongzixinxiList
				},
				{
					path: 'gongzixinxiDetail',
					component: gongzixinxiDetail
				},
				{
					path: 'gongzixinxiAdd',
					component: gongzixinxiAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
