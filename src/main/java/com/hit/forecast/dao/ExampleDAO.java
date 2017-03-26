package com.hit.forecast.dao;

import java.util.List;

import com.hit.forecast.model.Example;


public interface ExampleDAO {
	
	public List<Example> find(String sql, int offset, int length, String searchvalue);
	public int count(String sql, int offset, int length, String searchvalue);
}
