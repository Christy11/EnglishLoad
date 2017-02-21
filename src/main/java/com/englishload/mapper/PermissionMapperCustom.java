package com.englishload.mapper;

import java.util.List;

import com.englishload.po.Permission;

/**
 * 
 * @author taojian
 * @time  2017年1月22日下午9:07:17
 * @ClassName PermissionMapperCustom.java
 * @description PermissionMapperCustom
 */

public interface PermissionMapperCustom{

	//根据用户id查询菜单
		public List<Permission> findMenuListByUserId(int userid)throws Exception;
		//根据用户id查询权限url
		public List<Permission> findPermissionListByUserId(int userid)throws Exception;
}
