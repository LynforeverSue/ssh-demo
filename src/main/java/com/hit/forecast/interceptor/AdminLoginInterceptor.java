package com.hit.forecast.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
public class AdminLoginInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 1621426345550374192L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext().getSession();
		String id = (String)session.get("adminname");
		if (null != id) {
			return invocation.invoke();
		} 
		else {
			return "adminLogin";
		}
	}

}
