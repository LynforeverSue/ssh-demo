package com.hit.forecast.service.impl;

import com.hit.forecast.dao.AdminDAO;
import com.hit.forecast.model.Admin;
import com.hit.forecast.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;


@Component("adminService")
public class AdminServiceImpl implements AdminService{
	private AdminDAO adminDAO;
	

	/**
	 * @return the adminDAO
	 */
	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	/**
	 * @param adminDAO the adminDAO to set
	 */
	@Resource()
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	/* (non-Javadoc)
	 * @see com.scj.auction.service.UserService#findByName(java.lang.String)
	 */
	public Admin findByName(String name) {
		return adminDAO.findByName(name);
	}
	
	/* (non-Javadoc)
	 * @see com.scj.auction.service.UserService#get(int)
	 */
	public Admin get(int id) {
		return adminDAO.get(id);
	}
	
	public void update(Admin admin) {
		adminDAO.update(admin);
	}
	
}
