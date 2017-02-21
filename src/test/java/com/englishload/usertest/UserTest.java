package com.englishload.usertest;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.englishload.mapper.CommentMapper;
import com.englishload.mapper.PermissionMapperCustom;
import com.englishload.mapper.UserMapper;
import com.englishload.po.Comment;
import com.englishload.po.CommentCustom;
import com.englishload.po.Permission;
import com.englishload.po.User;
import com.englishload.service.UserService;
import com.englishload.util.PagedResult;


public class UserTest {

	private ApplicationContext applicationContext;
	@Autowired
	private UserService userService;
	Logger logger = LoggerFactory.getLogger(UserTest.class);
	
	//在setUp这个方法得到spring容器
	@Before
	public void setUp() throws Exception {
		applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis/spring-mybatis.xml");
	}

	@Test
	public void testFindUserById() throws Exception {
		UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
		User user = userMapper.selectByPrimaryKey(1);
		System.out.println(user.getUsername());
	}
	
	@Test
	public void testfindAll() throws Exception {
		UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
		List<User> list = userMapper.findAll();
	/*	System.out.println(list.get(0).getUsername());
		System.out.println(list.get(1));
		System.out.println(list.get(2));*/
		System.out.println(list);
	}
	

	@Test
	public void testadd() throws Exception {
		UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
		User user=new User();
		user.setUsername("taojian");
		user.setEmail("dfgfdg");
		
		 userMapper.add(user);
		
	}

	
	@Test
	public void testfindUserByName() throws Exception {
		UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
		User user=userMapper.findUserByName("zhangsan");
		
		
		System.out.println(user);
		
	}

	@Test
	public void testfindPermissionListByUserId() throws Exception {
		PermissionMapperCustom permissionMapperCustom = (PermissionMapperCustom) applicationContext.getBean("permissionMapperCustom");
		
		List<Permission> list=permissionMapperCustom.findPermissionListByUserId(1);
		System.out.println(list.get(0));
	}
	
	
	@Test
	public void testfindMenuListByUserId() throws Exception {
		PermissionMapperCustom permissionMapperCustom = (PermissionMapperCustom) applicationContext.getBean("permissionMapperCustom");
		
		List<Permission> list=permissionMapperCustom.findMenuListByUserId(1);
		System.out.println(list.get(0));
	}
	
	@Test
	public void selectUserByUserName() {
		UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
		List<User> list = userMapper.selectUserByUserName(null);
	//	List<User> list = userService.selectUserByUserName("taojian");
		System.out.println(list);
    //  logger.debug("查找结果" + list);
	}
	
	/**
	 * 分页测试
	 */
	@Test
	public void queryByPage(){
		UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
		// PagedResult<User>  pagedResult = userService.queryByPage("taojian",1,10);//null表示查全部	
		// logger.debug("查找结果" + pagedResult);

	}
	
	/*//测试显示评论的结果
		@Test
		public void testcommentfindAll(){
			CommentMapper commentMapper = (CommentMapper) applicationContext.getBean("commentMapper");
			List<CommentCustom> list = commentMapper.findAll();
			System.out.println(list);
		}*/
		
	 
}
