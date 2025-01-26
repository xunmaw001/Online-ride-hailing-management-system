package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiangfaxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiangfaxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiangfaxinxiView;


/**
 * 奖罚信息
 *
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
public interface JiangfaxinxiService extends IService<JiangfaxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiangfaxinxiVO> selectListVO(Wrapper<JiangfaxinxiEntity> wrapper);
   	
   	JiangfaxinxiVO selectVO(@Param("ew") Wrapper<JiangfaxinxiEntity> wrapper);
   	
   	List<JiangfaxinxiView> selectListView(Wrapper<JiangfaxinxiEntity> wrapper);
   	
   	JiangfaxinxiView selectView(@Param("ew") Wrapper<JiangfaxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiangfaxinxiEntity> wrapper);
   	

}

