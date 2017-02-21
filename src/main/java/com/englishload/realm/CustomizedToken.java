package com.englishload.realm;

import org.apache.shiro.authc.UsernamePasswordToken;

public class CustomizedToken extends UsernamePasswordToken {
	
	//登录类型，判断是普通用户登录，教师登录还是管理员登录
	private int loginType;
	
	public CustomizedToken(final String username, final String password,int loginType) {
		super(username,password);
		this.loginType = loginType;
	}

	public int getLoginType() {
		return loginType;
	}

	public void setLoginType(int loginType) {
		this.loginType = loginType;
	}
}
