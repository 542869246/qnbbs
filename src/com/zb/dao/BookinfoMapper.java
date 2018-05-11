package com.zb.dao;

import java.util.List;

import com.zb.entity.Bookinfo;

public interface BookinfoMapper {
    int deleteByPrimaryKey(Integer bookId);

    int insert(Bookinfo record);

    int insertSelective(Bookinfo record);

    Bookinfo selectByPrimaryKey(Integer bookId);

    int updateByPrimaryKeySelective(Bookinfo record);

    int updateByPrimaryKey(Bookinfo record);

	List<Bookinfo> selectAll();
	
	List<Bookinfo> findSome(Bookinfo record);
}