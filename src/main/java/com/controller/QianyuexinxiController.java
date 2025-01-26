package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.QianyuexinxiEntity;
import com.entity.view.QianyuexinxiView;

import com.service.QianyuexinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 签约信息
 * 后端接口
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
@RestController
@RequestMapping("/qianyuexinxi")
public class QianyuexinxiController {
    @Autowired
    private QianyuexinxiService qianyuexinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QianyuexinxiEntity qianyuexinxi, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("siji")) {
			qianyuexinxi.setSijizhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<QianyuexinxiEntity> ew = new EntityWrapper<QianyuexinxiEntity>();


		PageUtils page = qianyuexinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qianyuexinxi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,QianyuexinxiEntity qianyuexinxi, 
		HttpServletRequest request){
        EntityWrapper<QianyuexinxiEntity> ew = new EntityWrapper<QianyuexinxiEntity>();

		PageUtils page = qianyuexinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qianyuexinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QianyuexinxiEntity qianyuexinxi){
       	EntityWrapper<QianyuexinxiEntity> ew = new EntityWrapper<QianyuexinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( qianyuexinxi, "qianyuexinxi")); 
        return R.ok().put("data", qianyuexinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QianyuexinxiEntity qianyuexinxi){
        EntityWrapper< QianyuexinxiEntity> ew = new EntityWrapper< QianyuexinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( qianyuexinxi, "qianyuexinxi")); 
		QianyuexinxiView qianyuexinxiView =  qianyuexinxiService.selectView(ew);
		return R.ok("查询签约信息成功").put("data", qianyuexinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QianyuexinxiEntity qianyuexinxi = qianyuexinxiService.selectById(id);
        return R.ok().put("data", qianyuexinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QianyuexinxiEntity qianyuexinxi = qianyuexinxiService.selectById(id);
        return R.ok().put("data", qianyuexinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody QianyuexinxiEntity qianyuexinxi, HttpServletRequest request){
    	qianyuexinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qianyuexinxi);

        qianyuexinxiService.insert(qianyuexinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody QianyuexinxiEntity qianyuexinxi, HttpServletRequest request){
    	qianyuexinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qianyuexinxi);

        qianyuexinxiService.insert(qianyuexinxi);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody QianyuexinxiEntity qianyuexinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qianyuexinxi);
        qianyuexinxiService.updateById(qianyuexinxi);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        qianyuexinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<QianyuexinxiEntity> wrapper = new EntityWrapper<QianyuexinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("siji")) {
			wrapper.eq("sijizhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = qianyuexinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
