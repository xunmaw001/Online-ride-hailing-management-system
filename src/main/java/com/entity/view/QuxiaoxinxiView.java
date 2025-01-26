package com.entity.view;

import com.entity.QuxiaoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 取消信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
@TableName("quxiaoxinxi")
public class QuxiaoxinxiView  extends QuxiaoxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QuxiaoxinxiView(){
	}
 
 	public QuxiaoxinxiView(QuxiaoxinxiEntity quxiaoxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, quxiaoxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
