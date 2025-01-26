package com.dao;

import com.entity.QianyuexinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QianyuexinxiVO;
import com.entity.view.QianyuexinxiView;


/**
 * 签约信息
 * 
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
public interface QianyuexinxiDao extends BaseMapper<QianyuexinxiEntity> {
	
	List<QianyuexinxiVO> selectListVO(@Param("ew") Wrapper<QianyuexinxiEntity> wrapper);
	
	QianyuexinxiVO selectVO(@Param("ew") Wrapper<QianyuexinxiEntity> wrapper);
	
	List<QianyuexinxiView> selectListView(@Param("ew") Wrapper<QianyuexinxiEntity> wrapper);

	List<QianyuexinxiView> selectListView(Pagination page,@Param("ew") Wrapper<QianyuexinxiEntity> wrapper);
	
	QianyuexinxiView selectView(@Param("ew") Wrapper<QianyuexinxiEntity> wrapper);
	

}
