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


import com.dao.QianyuexinxiDao;
import com.entity.QianyuexinxiEntity;
import com.service.QianyuexinxiService;
import com.entity.vo.QianyuexinxiVO;
import com.entity.view.QianyuexinxiView;

@Service("qianyuexinxiService")
public class QianyuexinxiServiceImpl extends ServiceImpl<QianyuexinxiDao, QianyuexinxiEntity> implements QianyuexinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QianyuexinxiEntity> page = this.selectPage(
                new Query<QianyuexinxiEntity>(params).getPage(),
                new EntityWrapper<QianyuexinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QianyuexinxiEntity> wrapper) {
		  Page<QianyuexinxiView> page =new Query<QianyuexinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QianyuexinxiVO> selectListVO(Wrapper<QianyuexinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QianyuexinxiVO selectVO(Wrapper<QianyuexinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QianyuexinxiView> selectListView(Wrapper<QianyuexinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QianyuexinxiView selectView(Wrapper<QianyuexinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
