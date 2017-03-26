package com.hit.forecast.action;

import java.util.Map;

import com.hit.forecast.model.Admin;
import com.hit.forecast.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class AdminAction extends ActionSupport{
	/**
	 * 
	 */
	private Admin admin;
	private String vercode;
	private AdminService adminService;
	

	/**
	 * @return the adminService
	 */
	public AdminService getAdminService() {
		return adminService;
	}

	/**
	 * @param adminService the adminService to set
	 */
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	private static final long serialVersionUID = 5603358934831437395L;

	public String loginInput() {
		return SUCCESS;
	}
	
	public String login() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		String ver2 = (String)session.get("rand");
		session.put("rand" , null);
		//if (getVercode().equals(ver2))
		//{	
			Admin myadmin = adminService.findByName(admin.getName());
			if(null != myadmin) {
				if(myadmin.getPassword().equals(admin.getPassword())) {
					session.put("adminid", myadmin.getId());
					session.put("adminname", myadmin.getName());
					return SUCCESS;
				}
				else {
					addFieldError("admin.password", "密码不正确ȷ");
					return INPUT;
				}
			}
			else {
				addFieldError("admin.name", "用户不存在");
				return INPUT;
			}
	}
	
	public String loginOut() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.remove("adminid");
		session.remove("adminname");
		return SUCCESS;
	}
	
	public String changeInput() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Integer id = (Integer)session.get("adminid");
		admin = adminService.get(id);
		return SUCCESS;
	}
	
	public String change() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Integer id = (Integer)session.get("adminid");
		Admin myAdmin = adminService.get(id);
		myAdmin.setName(admin.getName());
		myAdmin.setPassword(admin.getPassword());
		adminService.update(myAdmin);
		return SUCCESS;
	}
	/**
	 * @return the admin
	 */
	public Admin getAdmin() {
		return admin;
	}
	
	/**
	 * @param admin the admin to set
	 */
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	/**
	 * @return the vercode
	 */
	public String getVercode() {
		return vercode;
	}

	/**
	 * @param vercode the vercode to set
	 */
	public void setVercode(String vercode) {
		this.vercode = vercode;
	}
}
