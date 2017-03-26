package com.hit.forecast.dao;

import com.hit.forecast.model.Admin;


public interface AdminDAO {
	
	
	public void update(Admin admin);
	
	public Admin get(int id);
	
	public Admin findByName(String name);
	
}
