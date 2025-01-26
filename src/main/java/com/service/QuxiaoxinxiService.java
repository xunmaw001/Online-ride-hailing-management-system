package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QuxiaoxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QuxiaoxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QuxiaoxinxiView;


/**
 * 取消信息
 *
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
public interface QuxiaoxinxiService extends IService<QuxiaoxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QuxiaoxinxiVO> selectListVO(Wrapper<QuxiaoxinxiEntity> wrapper);
   	
   	QuxiaoxinxiVO selectVO(@Param("ew") Wrapper<QuxiaoxinxiEntity> wrapper);
   	
   	List<QuxiaoxinxiView> selectListView(Wrapper<QuxiaoxinxiEntity> wrapper);
   	
   	QuxiaoxinxiView selectView(@Param("ew") Wrapper<QuxiaoxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QuxiaoxinxiEntity> wrapper);
   	

}

