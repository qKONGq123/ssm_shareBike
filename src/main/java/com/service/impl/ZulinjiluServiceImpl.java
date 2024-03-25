package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZulinjiluDao;
import com.entity.ZulinjiluEntity;
import com.service.ZulinjiluService;
import com.entity.vo.ZulinjiluVO;
import com.entity.view.ZulinjiluView;

@Service("zulinjiluService")
public class ZulinjiluServiceImpl extends ServiceImpl<ZulinjiluDao, ZulinjiluEntity> implements ZulinjiluService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZulinjiluEntity> page = this.selectPage(
                new Query<ZulinjiluEntity>(params).getPage(),
                new EntityWrapper<ZulinjiluEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZulinjiluEntity> wrapper) {
		  Page<ZulinjiluView> page =new Query<ZulinjiluView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZulinjiluVO> selectListVO(Wrapper<ZulinjiluEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZulinjiluVO selectVO(Wrapper<ZulinjiluEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZulinjiluView> selectListView(Wrapper<ZulinjiluEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZulinjiluView selectView(Wrapper<ZulinjiluEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<ZulinjiluEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<ZulinjiluEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<ZulinjiluEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
