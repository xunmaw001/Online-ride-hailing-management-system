package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QianyuexinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QianyuexinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QianyuexinxiView;


/**
 * 签约信息
 *
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
public interface QianyuexinxiService extends IService<QianyuexinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QianyuexinxiVO> selectListVO(Wrapper<QianyuexinxiEntity> wrapper);
   	
   	QianyuexinxiVO selectVO(@Param("ew") Wrapper<QianyuexinxiEntity> wrapper);
   	
   	List<QianyuexinxiView> selectListView(Wrapper<QianyuexinxiEntity> wrapper);
   	
   	QianyuexinxiView selectView(@Param("ew") Wrapper<QianyuexinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QianyuexinxiEntity> wrapper);
   	

}

