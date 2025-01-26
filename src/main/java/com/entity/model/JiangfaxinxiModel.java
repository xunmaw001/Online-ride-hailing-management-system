package com.entity.model;

import com.entity.JiangfaxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 奖罚信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
public class JiangfaxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 标题
	 */
	
	private String biaoti;
		
	/**
	 * 司机账号
	 */
	
	private String sijizhanghao;
		
	/**
	 * 司机姓名
	 */
	
	private String sijixingming;
		
	/**
	 * 奖罚类型
	 */
	
	private String jiangfaleixing;
		
	/**
	 * 奖罚时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jiangfashijian;
		
	/**
	 * 奖罚详情
	 */
	
	private String jiangfaxiangqing;
				
	
	/**
	 * 设置：标题
	 */
	 
	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}
	
	/**
	 * 获取：标题
	 */
	public String getBiaoti() {
		return biaoti;
	}
				
	
	/**
	 * 设置：司机账号
	 */
	 
	public void setSijizhanghao(String sijizhanghao) {
		this.sijizhanghao = sijizhanghao;
	}
	
	/**
	 * 获取：司机账号
	 */
	public String getSijizhanghao() {
		return sijizhanghao;
	}
				
	
	/**
	 * 设置：司机姓名
	 */
	 
	public void setSijixingming(String sijixingming) {
		this.sijixingming = sijixingming;
	}
	
	/**
	 * 获取：司机姓名
	 */
	public String getSijixingming() {
		return sijixingming;
	}
				
	
	/**
	 * 设置：奖罚类型
	 */
	 
	public void setJiangfaleixing(String jiangfaleixing) {
		this.jiangfaleixing = jiangfaleixing;
	}
	
	/**
	 * 获取：奖罚类型
	 */
	public String getJiangfaleixing() {
		return jiangfaleixing;
	}
				
	
	/**
	 * 设置：奖罚时间
	 */
	 
	public void setJiangfashijian(Date jiangfashijian) {
		this.jiangfashijian = jiangfashijian;
	}
	
	/**
	 * 获取：奖罚时间
	 */
	public Date getJiangfashijian() {
		return jiangfashijian;
	}
				
	
	/**
	 * 设置：奖罚详情
	 */
	 
	public void setJiangfaxiangqing(String jiangfaxiangqing) {
		this.jiangfaxiangqing = jiangfaxiangqing;
	}
	
	/**
	 * 获取：奖罚详情
	 */
	public String getJiangfaxiangqing() {
		return jiangfaxiangqing;
	}
			
}
