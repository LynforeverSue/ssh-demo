package com.hit.forecast.action;

import java.util.List;

import javax.annotation.Resource;

import com.hit.forecast.model.Example;
import com.hit.forecast.service.ExampleService;
import com.opensymphony.xwork2.ActionSupport;


public class ExampleAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private int recordsTotal;
	private int recordsFiltered;
	private String sta;
	private String len;
	private String order0column;
	private String order0dir;
	private String searchvalue;
	
	private ExampleService exampleService;
	private List<Example> data;
	
	//show example.jsp
	public String showExample() {
		return SUCCESS;
	}
	
	//return json data
	public String getExampleAjax() {
		int pageSize = 10;
		int startRecord = 0;
		
		String[] columnsName = {  "name", "desc1", "desc2","desc3","desc4","desc5" };
		String sortColumn = columnsName[0];
		
		if (len != null) {
			if (!len.equals("")) {
				pageSize = Integer.parseInt(len);
			}
		}
		if (sta != null) {
			if (!sta.equals("")) {
				startRecord = Integer.parseInt(sta);
			}
		}
		if (order0column != null ) {
			if (!order0column.equals("")) {
				sortColumn = columnsName[Integer.parseInt(order0column)];
			}
		}
		if (order0dir == null || order0dir.equals("") ) {
			order0dir = "desc";
		}
		String sql = getSql( "Example", sortColumn, order0dir);
		
		data = exampleService.find(sql,startRecord,pageSize, searchvalue);
		recordsTotal = exampleService.count(sql,startRecord,pageSize, searchvalue);
		recordsFiltered = recordsTotal;
		return SUCCESS;
	}
	
	//create sql
	public String getSql(String table, String sortColumn, String sortDir) {
		StringBuffer sql;
		
			sql = new StringBuffer("from "+table+" ");
			String[] columnsName = {  "name", "desc1", "desc2","desc3","desc4","desc5" };
        boolean searchAble = false;
        if(searchvalue != null && !"".equals(searchvalue)) {
            sql.append("where ");
            searchAble = true;
        }
                              
        if(searchAble) {
            StringBuffer temp = new StringBuffer();
            for (String column : columnsName) {
                temp.append( column+ " like ?"+ " or ");
            }
            sql.append(temp.substring(0, temp.length() - 3));
        }
                              
        // for order
        sql.append(" order by " + sortColumn + " " + sortDir + " ");
       
        System.out.println("sql:"+sql.toString());
              return sql.toString();             

    }
	
	//get set method
	public int getRecordsTotal() {
		return recordsTotal;
	}

	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}

	public int getRecordsFiltered() {
		return recordsFiltered;
	}

	public void setRecordsFiltered(int recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}

	public String getSta() {
		return sta;
	}

	public void setSta(String sta) {
		this.sta = sta;
	}

	public String getLen() {
		return len;
	}

	public void setLen(String len) {
		this.len = len;
	}

	public String getOrder0column() {
		return order0column;
	}

	public void setOrder0column(String order0column) {
		this.order0column = order0column;
	}

	public String getOrder0dir() {
		return order0dir;
	}

	public void setOrder0dir(String order0dir) {
		this.order0dir = order0dir;
	}

	public String getSearchvalue() {
		return searchvalue;
	}

	public void setSearchvalue(String searchvalue) {
		this.searchvalue = searchvalue;
	}

	public ExampleService getExampleService() {
		return exampleService;
	}
	
	@Resource
	public void setExampleService(ExampleService exampleService) {
		this.exampleService = exampleService;
	}

	public List<Example> getData() {
		return data;
	}

	public void setData(List<Example> data) {
		this.data = data;
	}
	
	
	
}