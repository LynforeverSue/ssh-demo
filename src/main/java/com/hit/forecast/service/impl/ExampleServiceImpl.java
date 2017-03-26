package com.hit.forecast.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.hit.forecast.dao.ExampleDAO;
import com.hit.forecast.model.Example;
import com.hit.forecast.service.ExampleService;


@Component("userService")
public class ExampleServiceImpl implements ExampleService{
	private ExampleDAO exampleDAO;
	

	

	
	public List<Example> find(String sql,int offset,int  length,String searchvalue){
		return exampleDAO.find(sql, offset,  length, searchvalue);
	}
	public int count(String sql,int offset,int  length,String searchvalue){
		return exampleDAO.count(sql, offset,  length, searchvalue);
	}
	
	
	public ExampleDAO getExampleDAO() {
		return exampleDAO;
	}
	@Resource
	public void setExampleDAO(ExampleDAO exampleDAO) {
		this.exampleDAO = exampleDAO;
	}
	
	
	
	
	
}