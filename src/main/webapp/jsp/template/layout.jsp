<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tiles-jsp.tld" prefix="tiles"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh-cn">
  <head>
  	 
  	<base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
	
      

    
  </head>
  <body>
  	
	<table border="0" width="100%" cellspacing="5">  
            <tr>  
                <td colspan="2"><tiles:insertAttribute name="header" /></td>  
            </tr>  
            <tr>  
            	
               
                <td valign="top" align="left"><tiles:insertAttribute name='body' /></td>  
            </tr>  
            <tr>  
                <td colspan="2"><hr></td>  
            </tr>  
            
     </table>  
	
   
  
  </body>
</html>

