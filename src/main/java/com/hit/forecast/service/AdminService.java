package com.hit.forecast.service;

import com.hit.forecast.model.Admin;


public interface AdminService {
	
	
	public Admin findByName(String name);
	
	public Admin get(int id);
	
	public void update(Admin admin);
}
