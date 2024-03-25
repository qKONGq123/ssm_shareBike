package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.QichezulinEntity;
import com.entity.view.QichezulinView;

import com.service.QichezulinService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 汽车租赁
 * 后端接口
 * @author 
 * @email 
 * @date 2023-02-14 16:45:10
 */
@RestController
@RequestMapping("/qichezulin")
public class QichezulinController {
    @Autowired
    private QichezulinService qichezulinService;


    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QichezulinEntity qichezulin, 
		HttpServletRequest request){

        EntityWrapper<QichezulinEntity> ew = new EntityWrapper<QichezulinEntity>();

    	PageUtils page = qichezulinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qichezulin), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,QichezulinEntity qichezulin, 
		HttpServletRequest request){
        EntityWrapper<QichezulinEntity> ew = new EntityWrapper<QichezulinEntity>();

    	PageUtils page = qichezulinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qichezulin), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QichezulinEntity qichezulin){
       	EntityWrapper<QichezulinEntity> ew = new EntityWrapper<QichezulinEntity>();
      	ew.allEq(MPUtil.allEQMapPre( qichezulin, "qichezulin")); 
        return R.ok().put("data", qichezulinService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QichezulinEntity qichezulin){
        EntityWrapper< QichezulinEntity> ew = new EntityWrapper< QichezulinEntity>();
 		ew.allEq(MPUtil.allEQMapPre( qichezulin, "qichezulin")); 
		QichezulinView qichezulinView =  qichezulinService.selectView(ew);
		return R.ok("查询汽车租赁成功").put("data", qichezulinView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QichezulinEntity qichezulin = qichezulinService.selectById(id);
		qichezulin.setClicktime(new Date());
		qichezulinService.updateById(qichezulin);
        return R.ok().put("data", qichezulin);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QichezulinEntity qichezulin = qichezulinService.selectById(id);
		qichezulin.setClicktime(new Date());
		qichezulinService.updateById(qichezulin);
        return R.ok().put("data", qichezulin);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody QichezulinEntity qichezulin, HttpServletRequest request){
    	qichezulin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qichezulin);

        qichezulinService.insert(qichezulin);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody QichezulinEntity qichezulin, HttpServletRequest request){
    	qichezulin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qichezulin);

        qichezulinService.insert(qichezulin);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody QichezulinEntity qichezulin, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qichezulin);
        qichezulinService.updateById(qichezulin);//全部更新
        return R.ok();
    }

    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        qichezulinService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<QichezulinEntity> wrapper = new EntityWrapper<QichezulinEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = qichezulinService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,QichezulinEntity qichezulin, HttpServletRequest request,String pre){
        EntityWrapper<QichezulinEntity> ew = new EntityWrapper<QichezulinEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicktime");
        params.put("order", "desc");
		PageUtils page = qichezulinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qichezulin), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 协同算法（按收藏推荐）
     */
    @RequestMapping("/autoSort2")
    public R autoSort2(@RequestParam Map<String, Object> params,QichezulinEntity qichezulin, HttpServletRequest request){
        String userId = request.getSession().getAttribute("userId").toString();
        String inteltypeColumn = "cheliangpinpai";
        List<StoreupEntity> storeups = storeupService.selectList(new EntityWrapper<StoreupEntity>().eq("type", 1).eq("userid", userId).eq("tablename", "qichezulin").orderBy("addtime", false));
        List<String> inteltypes = new ArrayList<String>();
        Integer limit = params.get("limit")==null?10:Integer.parseInt(params.get("limit").toString());
        List<QichezulinEntity> qichezulinList = new ArrayList<QichezulinEntity>();
        //去重
        if(storeups!=null && storeups.size()>0) {
            for(StoreupEntity s : storeups) {
                qichezulinList.addAll(qichezulinService.selectList(new EntityWrapper<QichezulinEntity>().eq(inteltypeColumn, s.getInteltype())));
            }
        }
        EntityWrapper<QichezulinEntity> ew = new EntityWrapper<QichezulinEntity>();
        params.put("sort", "id");
        params.put("order", "desc");
        PageUtils page = qichezulinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qichezulin), params), params));
        List<QichezulinEntity> pageList = (List<QichezulinEntity>)page.getList();
        if(qichezulinList.size()<limit) {
            int toAddNum = (limit-qichezulinList.size())<=pageList.size()?(limit-qichezulinList.size()):pageList.size();
            for(QichezulinEntity o1 : pageList) {
                boolean addFlag = true;
                for(QichezulinEntity o2 : qichezulinList) {
                    if(o1.getId().intValue()==o2.getId().intValue()) {
                        addFlag = false;
                        break;
                    }
                }
                if(addFlag) {
                    qichezulinList.add(o1);
                    if(--toAddNum==0) break;
                }
            }
        } else if(qichezulinList.size()>limit) {
            qichezulinList = qichezulinList.subList(0, limit);
        }
        page.setList(qichezulinList);
        return R.ok().put("data", page);
    }







}
