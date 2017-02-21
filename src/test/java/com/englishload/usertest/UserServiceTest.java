package com.englishload.usertest;

import java.util.List;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.englishload.mapper.UserMapper;
import com.englishload.po.User;
import com.englishload.service.UserService;
import com.englishload.util.PagedResult;


public class UserServiceTest extends SpringTestCase	{
	@Autowired
	private UserService userService;
	Logger logger = LoggerFactory.getLogger(UserServiceTest.class);
	@Autowired
	private UserMapper userMapper;
	
	
	@Test
	public void selectUserByUserName() {
		List<User> list = userService.selectUserByUserName("apple");
        logger.debug("查找结果" + list);
	}
	
	@Test
	public void queryByPage(){
		UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
		// PagedResult<User>  pagedResult = userService.queryByPage(null,1,10);//null表示查全部	
		// logger.debug("查找结果" + pagedResult);

	}
	

}
