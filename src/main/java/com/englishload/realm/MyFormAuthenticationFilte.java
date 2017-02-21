package com.englishload.realm;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;

import com.englishload.po.ActiveUser;
/**
 * 
 * @author taojian
 * @time  2017年1月26日下午9:05:13
 * @ClassName MyFormAuthenticationFilte.java
 * @description 登陆 成功后跳转指定的页面
 */
public class MyFormAuthenticationFilte extends FormAuthenticationFilter{

	
	@Override
	protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request,
			ServletResponse response) throws Exception {
		//清楚缓存
    WebUtils.getAndClearSavedRequest(request);
     subject = SecurityUtils.getSubject();
   //取身份信息
   		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
   		//管理员登录入口
   		if(activeUser.getRoleid()==3){
    WebUtils.redirectToSavedRequest(request, response, "/admindex");
    return false;
        //老师入口
    }else if(activeUser.getRoleid()==2){
       WebUtils.redirectToSavedRequest(request, response, "/loginvalue.action");	
		return false;
		
		//学生管理入口
	}else if(activeUser.getRoleid()==1)
	       WebUtils.redirectToSavedRequest(request, response, "/loginvalue.action");	
			return false;
		}
}
