package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.QuxiaoxinxiDao;
import com.entity.QuxiaoxinxiEntity;
import com.service.QuxiaoxinxiService;
import com.entity.vo.QuxiaoxinxiVO;
import com.entity.view.QuxiaoxinxiView;

@Service("quxiaoxinxiService")
public class QuxiaoxinxiServiceImpl extends ServiceImpl<QuxiaoxinxiDao, QuxiaoxinxiEntity> implements QuxiaoxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QuxiaoxinxiEntity> page = this.selectPage(
                new Query<QuxiaoxinxiEntity>(params).getPage(),
                new EntityWrapper<QuxiaoxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QuxiaoxinxiEntity> wrapper) {
		  Page<QuxiaoxinxiView> page =new Query<QuxiaoxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QuxiaoxinxiVO> selectListVO(Wrapper<QuxiaoxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QuxiaoxinxiVO selectVO(Wrapper<QuxiaoxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QuxiaoxinxiView> selectListView(Wrapper<QuxiaoxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QuxiaoxinxiView selectView(Wrapper<QuxiaoxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
