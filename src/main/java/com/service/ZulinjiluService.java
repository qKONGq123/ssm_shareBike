package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZulinjiluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZulinjiluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZulinjiluView;


/**
 * 租赁记录
 *
 * @author 
 * @email 
 * @date 2023-02-14 16:45:10
 */
public interface ZulinjiluService extends IService<ZulinjiluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZulinjiluVO> selectListVO(Wrapper<ZulinjiluEntity> wrapper);
   	
   	ZulinjiluVO selectVO(@Param("ew") Wrapper<ZulinjiluEntity> wrapper);
   	
   	List<ZulinjiluView> selectListView(Wrapper<ZulinjiluEntity> wrapper);
   	
   	ZulinjiluView selectView(@Param("ew") Wrapper<ZulinjiluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZulinjiluEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<ZulinjiluEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<ZulinjiluEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<ZulinjiluEntity> wrapper);



}

