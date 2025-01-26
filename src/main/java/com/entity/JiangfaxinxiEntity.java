package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 奖罚信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-02-11 12:18:29
 */
@TableName("jiangfaxinxi")
public class JiangfaxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiangfaxinxiEntity() {
		
	}
	
	public JiangfaxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 奖罚编号
	 */
					
	private String jiangfabianhao;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jiangfashijian;
	
	/**
	 * 奖罚详情
	 */
					
	private String jiangfaxiangqing;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：奖罚编号
	 */
	public void setJiangfabianhao(String jiangfabianhao) {
		this.jiangfabianhao = jiangfabianhao;
	}
	/**
	 * 获取：奖罚编号
	 */
	public String getJiangfabianhao() {
		return jiangfabianhao;
	}
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
