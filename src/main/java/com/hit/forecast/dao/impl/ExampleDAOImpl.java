package com.hit.forecast.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.hit.forecast.dao.ExampleDAO;
import com.hit.forecast.model.Example;



@Component("exampleDAO")
public class ExampleDAOImpl implements ExampleDAO{
	
	private HibernateTemplate hibernateTemplate;
	
	public List<Example> find(final String sql,final int offset,final int length,final  String searchvalue) {
		List<Example> list;
		
		//
		  list = hibernateTemplate.executeFind(
				 new  HibernateCallback() {
				            public Object doInHibernate(Session session)
				              throws HibernateException, SQLException {
				             Query query = session.createQuery(sql);
				             if (searchvalue != null && !"".equals(searchvalue)){
				            	 query.setString(0, "%"+searchvalue+"%");
				            	 query.setString(1, "%"+searchvalue+"%");
					             query.setString(2, "%"+searchvalue+"%");
					             query.setString(3, "%"+searchvalue+"%");
					             query.setString(4, "%"+searchvalue+"%");
					             query.setString(5, "%"+searchvalue+"%");
				             }
				             
				             query.setFirstResult(offset);
				             query.setMaxResults(length);
				             List<Example> list = query.list();
				             return list;
				            }
	           });
		 //
		  return list;
		
	}
	
	public int count(final String sql,final int offset,final int length,final  String searchvalue) {
			List<Example> list;
		
		//
		  list = hibernateTemplate.executeFind(
				 new  HibernateCallback() {
				            public Object doInHibernate(Session session)
				              throws HibernateException, SQLException {
				             Query query = session.createQuery(sql);
				             if (searchvalue != null && !"".equals(searchvalue)){
				            	 query.setString(0, "%"+searchvalue+"%");
				            	 query.setString(1, "%"+searchvalue+"%");
					             query.setString(2, "%"+searchvalue+"%");
					             query.setString(3, "%"+searchvalue+"%");
					             query.setString(4, "%"+searchvalue+"%");
					             query.setString(5, "%"+searchvalue+"%");
				             }
				             
				             
				             List<Example> list = query.list();
				             return list;
				            }
	           });
		 //
		  return list.size();
	}
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
	
	
}