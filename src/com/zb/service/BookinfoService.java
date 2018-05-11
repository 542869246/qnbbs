package com.zb.service;

import java.util.List;

import com.zb.entity.Bookinfo;

public interface BookinfoService {
	int deleteByPrimaryKey(Integer bookId);

    int insert(Bookinfo record);

    int insertSelective(Bookinfo record);

    Bookinfo selectByPrimaryKey(Integer bookId);
    
    List<Bookinfo> selectAll();
    
    List<Bookinfo> findSome(Bookinfo record);

    int updateByPrimaryKeySelective(Bookinfo record);

    int updateByPrimaryKey(Bookinfo record);
}
