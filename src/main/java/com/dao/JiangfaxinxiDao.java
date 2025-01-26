package com.dao;

import com.entity.JiangfaxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiangfaxinxiVO;
import com.entity.view.JiangfaxinxiView;


/**
 * 奖罚信息
 * 
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
public interface JiangfaxinxiDao extends BaseMapper<JiangfaxinxiEntity> {
	
	List<JiangfaxinxiVO> selectListVO(@Param("ew") Wrapper<JiangfaxinxiEntity> wrapper);
	
	JiangfaxinxiVO selectVO(@Param("ew") Wrapper<JiangfaxinxiEntity> wrapper);
	
	List<JiangfaxinxiView> selectListView(@Param("ew") Wrapper<JiangfaxinxiEntity> wrapper);

	List<JiangfaxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<JiangfaxinxiEntity> wrapper);
	
	JiangfaxinxiView selectView(@Param("ew") Wrapper<JiangfaxinxiEntity> wrapper);
	

}
