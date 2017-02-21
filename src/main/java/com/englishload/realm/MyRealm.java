package com.englishload.realm;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.englishload.po.ActiveUser;
import com.englishload.po.Permission;
import com.englishload.po.User;
import com.englishload.service.UserService;



/**
 * 
 * @author taojian
 * @time  2017年1月23日下午2:50:25
 * @ClassName MyRealm.java
 * @description 自定义realm ，用于用户的认证和授权等功能。
 */

public class MyRealm extends AuthorizingRealm{

	@Autowired
	private UserService userService;
	// 设置realm的名称
	@Override
	public void setName(String name) {
		super.setName("myRealm");
	}

	// 用于认证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {

		// token是用户输入的
		// 第一步从token中取出身份信息
		String username = (String) token.getPrincipal();

		// 第二步：根据用户输入的username从数据库查询
	     User user = null;
		try {
			user = userService.findUserByName(username);
			System.out.println(user);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			//System.out.println("账号不存在");
		}
		// 如果查询不到返回null
		
		if(user==null){
			return null;
		}
		// 从数据库查询到密码
	   String password = user.getPassword();
	
	    //盐
		String salt = user.getSalt();

		// 如果查询到返回认证信息AuthenticationInfo
				
		//activeUser就是用户身份信息
		ActiveUser activeUser = new ActiveUser();
				
		activeUser.setUserid(user.getId());
		activeUser.setUsercode(user.getUsername());
		activeUser.setUsername(user.getUsername());
		activeUser.setRoleid(user.getRoleId());	
				
				//根据用户id取出菜单
		List<Permission> menus  = null;
     	try {
				//通过service取出菜单 
			menus = userService.findMenuListByUserId(user.getId());
			} catch (Exception e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
			}
				//将用户菜单 设置到activeUser
				activeUser.setMenus(menus);

				//将activeUser设置simpleAuthenticationInfo
				SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(
						activeUser, password,ByteSource.Util.bytes(salt), this.getName());

				return simpleAuthenticationInfo;
		

}
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//从 principals获取主身份信息
				//将getPrimaryPrincipal方法返回值转为真实身份类型（在上边的doGetAuthenticationInfo认证通过填充到SimpleAuthenticationInfo中身份类型），
				ActiveUser activeUser =  (ActiveUser) principals.getPrimaryPrincipal();
				
				//根据身份信息获取权限信息
				//从数据库获取到权限数据
				List<Permission> permissionList = null;
				try {
					permissionList = userService.findPermissionListByUserId(activeUser.getUserid());
				} catch (Exception e) {
				
					e.printStackTrace();
				}
				//单独定一个集合对象 
				List<String> permissions = new ArrayList<String>();
				if(permissionList!=null){
					for(Permission sysPermission:permissionList){
						//将数据库中的权限标签 符放入集合
						permissions.add(sysPermission.getPercode());
					}
				}
				
	     		//查到权限数据，返回授权信息(要包括 上边的permissions)
				SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
				//将上边查询到授权信息填充到simpleAuthorizationInfo对象中
				simpleAuthorizationInfo.addStringPermissions(permissions);

				return simpleAuthorizationInfo;
	
	}
	/**
	 * @author taojian
	 * @time 2017年1月24日下午12:59:22
	 * @methodname clearCached()
	 * @descripe 这个清除缓存应该在service里面去调用
	 */
	//清除缓存
	public void clearCached() {
		PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
		super.clearCache(principals);
	}
}