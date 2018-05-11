package com.zb.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zb.dao.BookinfoMapper;
import com.zb.entity.Bookinfo;

@Service(value = "bookinfoService")
public class BookinfoServiceImpl implements BookinfoService {
	@Resource(name = "bookinfoMapper")
	BookinfoMapper bookinfoMapper;

	public int deleteByPrimaryKey(Integer bookId) {
		// TODO Auto-generated method stub
		return bookinfoMapper.deleteByPrimaryKey(bookId);
	}

	public int insert(Bookinfo record) {
		// TODO Auto-generated method stub
		return bookinfoMapper.insert(record);
	}

	public int insertSelective(Bookinfo record) {
		// TODO Auto-generated method stub
		return bookinfoMapper.insertSelective(record);
	}

	public Bookinfo selectByPrimaryKey(Integer bookId) {
		// TODO Auto-generated method stub
		return bookinfoMapper.selectByPrimaryKey(bookId);
	}

	public int updateByPrimaryKey(Bookinfo record) {
		// TODO Auto-generated method stub
		return bookinfoMapper.updateByPrimaryKey(record);
	}

	public int updateByPrimaryKeySelective(Bookinfo record) {
		// TODO Auto-generated method stub
		return bookinfoMapper.updateByPrimaryKeySelective(record);
	}

	public List<Bookinfo> selectAll() {
		// TODO Auto-generated method stub
		return bookinfoMapper.selectAll();
	}

	public List<Bookinfo> findSome(Bookinfo record) {
		// TODO Auto-generated method stub
		return bookinfoMapper.findSome(record);
	}

}
