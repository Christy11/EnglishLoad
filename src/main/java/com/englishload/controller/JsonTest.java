package com.englishload.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.englishload.po.User;



@Controller
public class JsonTest {
	
	//请求json串(用户信息)，输出json(用户信息)
	//@RequestBody将请求的用户信息的json串转成itemsCustom对象
	//@ResponseBody将itemsCustom转成json输出
	@RequestMapping("/requestJson")
	public @ResponseBody User requestJson(@RequestBody User user){
		
		//@ResponseBody将User转成json输出
		return user;
	}
	
	//请求key/value，输出json
	@RequestMapping("/responseJson")
	public @ResponseBody User responseJson(User User){
		
		//@ResponseBody将User转成json输出
		return User;
	}

}
