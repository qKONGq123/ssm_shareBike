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
 * 租赁记录
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-02-14 16:45:10
 */
@TableName("zulinjilu")
public class ZulinjiluEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ZulinjiluEntity() {
		
	}
	
	public ZulinjiluEntity(T t) {
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
	 * 租赁订单
	 */
					
	private String zulindingdan;
	
	/**
	 * 车辆名称
	 */
					
	private String cheliangmingcheng;
	
	/**
	 * 车辆品牌
	 */
					
	private String cheliangpinpai;
	
	/**
	 * 车辆图片
	 */
					
	private String cheliangtupian;
	
	/**
	 * 车牌号码
	 */
					
	private String chepaihaoma;
	
	/**
	 * 租赁价格
	 */
					
	private Integer zulinjiage;
	
	/**
	 * 租赁天数
	 */
					
	private Integer zulintianshu;
	
	/**
	 * 租赁押金
	 */
					
	private Integer zulinyajin;
	
	/**
	 * 订单金额
	 */
					
	private Integer dingdanjine;
	
	/**
	 * 租赁备注
	 */
					
	private String zulinbeizhu;
	
	/**
	 * 车身颜色
	 */
					
	private String cheshenyanse;
	
	/**
	 * 租赁状态
	 */
					
	private String zulinzhuangtai;
	
	/**
	 * 租赁时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date zulinshijian;
	
	/**
	 * 用户名
	 */
					
	private String yonghuming;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 手机
	 */
					
	private String shouji;
	
	/**
	 * 身份证
	 */
					
	private String shenfenzheng;
	
	/**
	 * 回复内容
	 */
					
	private String shhf;
	
	/**
	 * 是否支付
	 */
					
	private String ispay;
	
	
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
	 * 设置：租赁订单
	 */
	public void setZulindingdan(String zulindingdan) {
		this.zulindingdan = zulindingdan;
	}
	/**
	 * 获取：租赁订单
	 */
	public String getZulindingdan() {
		return zulindingdan;
	}
	/**
	 * 设置：车辆名称
	 */
	public void setCheliangmingcheng(String cheliangmingcheng) {
		this.cheliangmingcheng = cheliangmingcheng;
	}
	/**
	 * 获取：车辆名称
	 */
	public String getCheliangmingcheng() {
		return cheliangmingcheng;
	}
	/**
	 * 设置：车辆品牌
	 */
	public void setCheliangpinpai(String cheliangpinpai) {
		this.cheliangpinpai = cheliangpinpai;
	}
	/**
	 * 获取：车辆品牌
	 */
	public String getCheliangpinpai() {
		return cheliangpinpai;
	}
	/**
	 * 设置：车辆图片
	 */
	public void setCheliangtupian(String cheliangtupian) {
		this.cheliangtupian = cheliangtupian;
	}
	/**
	 * 获取：车辆图片
	 */
	public String getCheliangtupian() {
		return cheliangtupian;
	}
	/**
	 * 设置：车牌号码
	 */
	public void setChepaihaoma(String chepaihaoma) {
		this.chepaihaoma = chepaihaoma;
	}
	/**
	 * 获取：车牌号码
	 */
	public String getChepaihaoma() {
		return chepaihaoma;
	}
	/**
	 * 设置：租赁价格
	 */
	public void setZulinjiage(Integer zulinjiage) {
		this.zulinjiage = zulinjiage;
	}
	/**
	 * 获取：租赁价格
	 */
	public Integer getZulinjiage() {
		return zulinjiage;
	}
	/**
	 * 设置：租赁天数
	 */
	public void setZulintianshu(Integer zulintianshu) {
		this.zulintianshu = zulintianshu;
	}
	/**
	 * 获取：租赁天数
	 */
	public Integer getZulintianshu() {
		return zulintianshu;
	}
	/**
	 * 设置：租赁押金
	 */
	public void setZulinyajin(Integer zulinyajin) {
		this.zulinyajin = zulinyajin;
	}
	/**
	 * 获取：租赁押金
	 */
	public Integer getZulinyajin() {
		return zulinyajin;
	}
	/**
	 * 设置：订单金额
	 */
	public void setDingdanjine(Integer dingdanjine) {
		this.dingdanjine = dingdanjine;
	}
	/**
	 * 获取：订单金额
	 */
	public Integer getDingdanjine() {
		return dingdanjine;
	}
	/**
	 * 设置：租赁备注
	 */
	public void setZulinbeizhu(String zulinbeizhu) {
		this.zulinbeizhu = zulinbeizhu;
	}
	/**
	 * 获取：租赁备注
	 */
	public String getZulinbeizhu() {
		return zulinbeizhu;
	}
	/**
	 * 设置：车身颜色
	 */
	public void setCheshenyanse(String cheshenyanse) {
		this.cheshenyanse = cheshenyanse;
	}
	/**
	 * 获取：车身颜色
	 */
	public String getCheshenyanse() {
		return cheshenyanse;
	}
	/**
	 * 设置：租赁状态
	 */
	public void setZulinzhuangtai(String zulinzhuangtai) {
		this.zulinzhuangtai = zulinzhuangtai;
	}
	/**
	 * 获取：租赁状态
	 */
	public String getZulinzhuangtai() {
		return zulinzhuangtai;
	}
	/**
	 * 设置：租赁时间
	 */
	public void setZulinshijian(Date zulinshijian) {
		this.zulinshijian = zulinshijian;
	}
	/**
	 * 获取：租赁时间
	 */
	public Date getZulinshijian() {
		return zulinshijian;
	}
	/**
	 * 设置：用户名
	 */
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
	/**
	 * 设置：姓名
	 */
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
	/**
	 * 设置：手机
	 */
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
	/**
	 * 设置：身份证
	 */
	public void setShenfenzheng(String shenfenzheng) {
		this.shenfenzheng = shenfenzheng;
	}
	/**
	 * 获取：身份证
	 */
	public String getShenfenzheng() {
		return shenfenzheng;
	}
	/**
	 * 设置：回复内容
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：回复内容
	 */
	public String getShhf() {
		return shhf;
	}
	/**
	 * 设置：是否支付
	 */
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}

}
