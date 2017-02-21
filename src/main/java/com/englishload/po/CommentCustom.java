package com.englishload.po;
/*
 * 继承Comment，根据user_id显示用户名称
 */
public class CommentCustom extends Comment{
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	

	
}
