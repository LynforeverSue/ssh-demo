package com.hit.forecast.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.hit.forecast.dao.AdminDAO;
import com.hit.forecast.model.Admin;


@Component("adminDAO")
public class AdminDAOImpl implements AdminDAO{
	
	private HibernateTemplate hibernateTemplate;


	/* (non-Javadoc)
	 * @see com.scj.auction.dao.UserDAO#get(int)
	 */
	public Admin get(int id) {
		return hibernateTemplate.get(Admin.class, id);
	}


	/* (non-Javadoc)
	 * @see com.scj.auction.dao.UserDAO#update(com.scj.auction.model.User)
	 */
	public void update(Admin admin) {
		hibernateTemplate.update(admin);
	}
	
	/* (non-Javadoc)
	 * @see com.scj.auction.dao.UserDAO#findByName(java.lang.String)
	 */
	@SuppressWarnings("unchecked")
	public Admin findByName(String name) {
		List<Admin> ul = hibernateTemplate.find("from Admin u where u.name = ?",name);
		if (ul.size() == 1)
		{
			return (Admin)ul.get(0);
		}
		return null;
	}
	
	/**
	 * @return the hibernateTemplate
	 */
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	/**
	 * @param hibernateTemplate the hibernateTemplate to set
	 */
	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	
	
}
