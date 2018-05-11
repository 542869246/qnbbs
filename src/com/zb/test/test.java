package com.zb.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zb.entity.Bookinfo;
import com.zb.service.BookinfoService;


public class test {
	@Test
	public void test(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("application-mvc.xml");
		List<Bookinfo> list = new ArrayList<Bookinfo>();
		list=((BookinfoService)ctx.getBean("bookinfoService")).selectAll();
		
		System.out.println(list.size());
		
		System.out.println((((BookinfoService)ctx.getBean("bookinfoService")).selectByPrimaryKey(1)).getBookName());
	}
}
