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


import com.dao.JiangfaxinxiDao;
import com.entity.JiangfaxinxiEntity;
import com.service.JiangfaxinxiService;
import com.entity.vo.JiangfaxinxiVO;
import com.entity.view.JiangfaxinxiView;

@Service("jiangfaxinxiService")
public class JiangfaxinxiServiceImpl extends ServiceImpl<JiangfaxinxiDao, JiangfaxinxiEntity> implements JiangfaxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiangfaxinxiEntity> page = this.selectPage(
                new Query<JiangfaxinxiEntity>(params).getPage(),
                new EntityWrapper<JiangfaxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiangfaxinxiEntity> wrapper) {
		  Page<JiangfaxinxiView> page =new Query<JiangfaxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiangfaxinxiVO> selectListVO(Wrapper<JiangfaxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiangfaxinxiVO selectVO(Wrapper<JiangfaxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiangfaxinxiView> selectListView(Wrapper<JiangfaxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiangfaxinxiView selectView(Wrapper<JiangfaxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
