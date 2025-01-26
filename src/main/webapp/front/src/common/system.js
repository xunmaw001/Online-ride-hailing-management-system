export function isAuth(tableName, key) {
  let role = localStorage.getItem("UserTableName");
  let menus = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除"],"menu":"司机","menuJump":"列表","tableName":"siji"}],"menu":"司机管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除"],"menu":"车辆信息","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","修改","删除"],"menu":"取消信息","menuJump":"列表","tableName":"quxiaoxinxi"}],"menu":"取消信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","修改","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改","删除"],"menu":"投诉信息","menuJump":"列表","tableName":"tousuxinxi"}],"menu":"投诉信息管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除"],"menu":"奖罚信息","menuJump":"列表","tableName":"jiangfaxinxi"}],"menu":"奖罚信息管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"签约信息","menuJump":"列表","tableName":"qianyuexinxi"}],"menu":"签约信息管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"工资信息","menuJump":"列表","tableName":"gongzixinxi"}],"menu":"工资信息管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-medal","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-pic","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","预约"],"menu":"车辆信息列表","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除","取消"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","删除"],"menu":"取消信息","menuJump":"列表","tableName":"quxiaoxinxi"}],"menu":"取消信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","支付","投诉"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","删除"],"menu":"投诉信息","menuJump":"列表","tableName":"tousuxinxi"}],"menu":"投诉信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","预约"],"menu":"车辆信息列表","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["新增","查看","修改","删除"],"menu":"车辆信息","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","审核","订单"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","审核","订单"],"menu":"取消信息","menuJump":"列表","tableName":"quxiaoxinxi"}],"menu":"取消信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","审核"],"menu":"投诉信息","menuJump":"列表","tableName":"tousuxinxi"}],"menu":"投诉信息管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看"],"menu":"奖罚信息","menuJump":"列表","tableName":"jiangfaxinxi"}],"menu":"奖罚信息管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看"],"menu":"签约信息","menuJump":"列表","tableName":"qianyuexinxi"}],"menu":"签约信息管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看"],"menu":"工资信息","menuJump":"列表","tableName":"gongzixinxi"}],"menu":"工资信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","预约"],"menu":"车辆信息列表","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"司机","tableName":"siji"}];
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

/**
 *  * 获取当前时间（yyyy-MM-dd hh:mm:ss）
 *   */
export function getCurDateTime() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
    hour = currentTime.getHours(),
    minute = currentTime.getMinutes(),
    second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
 *  * 获取当前日期（yyyy-MM-dd）
 *   */
export function getCurDate() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
