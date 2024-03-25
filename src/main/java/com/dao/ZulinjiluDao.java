package com.dao;

import com.entity.ZulinjiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZulinjiluVO;
import com.entity.view.ZulinjiluView;


/**
 * 租赁记录
 * 
 * @ author
 * @ email
 * @ date
 */
public interface ZulinjiluDao extends BaseMapper<ZulinjiluEntity> {
	
	List<ZulinjiluVO> selectListVO(@Param("ew") Wrapper<ZulinjiluEntity> wrapper);
	
	ZulinjiluVO selectVO(@Param("ew") Wrapper<ZulinjiluEntity> wrapper);
	
	List<ZulinjiluView> selectListView(@Param("ew") Wrapper<ZulinjiluEntity> wrapper);

	List<ZulinjiluView> selectListView(Pagination page,@Param("ew") Wrapper<ZulinjiluEntity> wrapper);
	
	ZulinjiluView selectView(@Param("ew") Wrapper<ZulinjiluEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZulinjiluEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZulinjiluEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZulinjiluEntity> wrapper);



}
