package com.dao;

import com.entity.QuxiaoxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QuxiaoxinxiVO;
import com.entity.view.QuxiaoxinxiView;


/**
 * 取消信息
 * 
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
public interface QuxiaoxinxiDao extends BaseMapper<QuxiaoxinxiEntity> {
	
	List<QuxiaoxinxiVO> selectListVO(@Param("ew") Wrapper<QuxiaoxinxiEntity> wrapper);
	
	QuxiaoxinxiVO selectVO(@Param("ew") Wrapper<QuxiaoxinxiEntity> wrapper);
	
	List<QuxiaoxinxiView> selectListView(@Param("ew") Wrapper<QuxiaoxinxiEntity> wrapper);

	List<QuxiaoxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<QuxiaoxinxiEntity> wrapper);
	
	QuxiaoxinxiView selectView(@Param("ew") Wrapper<QuxiaoxinxiEntity> wrapper);
	

}
