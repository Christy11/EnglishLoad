package com.englishload.service;

import java.util.List;

import com.englishload.po.Permission;
import com.englishload.po.User;
import com.englishload.util.PagedResult;

/**
 * 
 * @author taojian
 * @time  2017年1月22日下午9:17:50
 * @ClassName UserService.java
 * @description 用户业务层的一些方法，包括一些权限的认证等信息
 */

public interface UserService {

	//根据用户名进行查找
	public User findUserByName(String username);
	
    public void add(User user);
	
	public void update(User user);
	
	public void delete(Integer id);
	
	public User findByID(Integer id);
	
	public List<User> findAll();
	//根据用户名进行模糊查找
	public List<User> findUserByParName(String parName);
	
	public User findSysUserByUserCode(String username)throws Exception;
	//根据用户id查询权限范围的菜单
	public List<Permission> findMenuListByUserId(int userid) throws Exception;
	
	//根据用户id查询权限范围的url
		public List<Permission> findPermissionListByUserId(int userid) throws Exception;
		
		//分页查找
		PagedResult<User> queryByPage(String userName,Integer pageNo,Integer pageSize);

		public List<User> selectUserByUserName(String username);
}
