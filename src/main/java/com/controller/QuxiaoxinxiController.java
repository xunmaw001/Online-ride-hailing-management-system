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

import com.entity.QuxiaoxinxiEntity;
import com.entity.view.QuxiaoxinxiView;

import com.service.QuxiaoxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 取消信息
 * 后端接口
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
@RestController
@RequestMapping("/quxiaoxinxi")
public class QuxiaoxinxiController {
    @Autowired
    private QuxiaoxinxiService quxiaoxinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QuxiaoxinxiEntity quxiaoxinxi, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("siji")) {
			quxiaoxinxi.setSijizhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yonghu")) {
			quxiaoxinxi.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<QuxiaoxinxiEntity> ew = new EntityWrapper<QuxiaoxinxiEntity>();


		PageUtils page = quxiaoxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, quxiaoxinxi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,QuxiaoxinxiEntity quxiaoxinxi, 
		HttpServletRequest request){
        EntityWrapper<QuxiaoxinxiEntity> ew = new EntityWrapper<QuxiaoxinxiEntity>();

		PageUtils page = quxiaoxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, quxiaoxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QuxiaoxinxiEntity quxiaoxinxi){
       	EntityWrapper<QuxiaoxinxiEntity> ew = new EntityWrapper<QuxiaoxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( quxiaoxinxi, "quxiaoxinxi")); 
        return R.ok().put("data", quxiaoxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QuxiaoxinxiEntity quxiaoxinxi){
        EntityWrapper< QuxiaoxinxiEntity> ew = new EntityWrapper< QuxiaoxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( quxiaoxinxi, "quxiaoxinxi")); 
		QuxiaoxinxiView quxiaoxinxiView =  quxiaoxinxiService.selectView(ew);
		return R.ok("查询取消信息成功").put("data", quxiaoxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QuxiaoxinxiEntity quxiaoxinxi = quxiaoxinxiService.selectById(id);
        return R.ok().put("data", quxiaoxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QuxiaoxinxiEntity quxiaoxinxi = quxiaoxinxiService.selectById(id);
        return R.ok().put("data", quxiaoxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody QuxiaoxinxiEntity quxiaoxinxi, HttpServletRequest request){
    	quxiaoxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(quxiaoxinxi);

        quxiaoxinxiService.insert(quxiaoxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody QuxiaoxinxiEntity quxiaoxinxi, HttpServletRequest request){
    	quxiaoxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(quxiaoxinxi);

        quxiaoxinxiService.insert(quxiaoxinxi);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody QuxiaoxinxiEntity quxiaoxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(quxiaoxinxi);
        quxiaoxinxiService.updateById(quxiaoxinxi);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        quxiaoxinxiService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<QuxiaoxinxiEntity> wrapper = new EntityWrapper<QuxiaoxinxiEntity>();
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
		if(tableName.equals("yonghu")) {
			wrapper.eq("yonghuzhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = quxiaoxinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
