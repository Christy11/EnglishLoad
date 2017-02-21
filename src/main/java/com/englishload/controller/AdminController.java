package com.englishload.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.Bulletin;
import com.englishload.po.Course;
import com.englishload.po.User;
import com.englishload.service.CourseService;
import com.englishload.service.BulletinService;
import com.englishload.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
/**
 * 
 * @author taojian
 * @time  2017年2月13日下午1:50:52
 * @ClassName AdminController.java
 * @description 后台页面的一些跳转
 */
@Controller
public class AdminController {

	@Autowired
	UserService userService;
	@Autowired
	CourseService courseService;
    @Autowired
	BulletinService bulletinService; 

	//挑转到后台的公告
		@RequestMapping("/fowardBulletin")
		public ModelAndView fowardBulletin(@RequestParam(required=true,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="10") Integer pageSize)throws Exception{
			PageHelper.startPage(page, pageSize);
			List<Bulletin> bulletinList=bulletinService.findAll();
			PageInfo<Bulletin> pageInfo=new PageInfo<Bulletin>(bulletinList);
			ModelAndView mv=new ModelAndView();
			mv.addObject("bulletinList",bulletinList);
			mv.addObject("page", pageInfo);
			mv.setViewName("admin/bulletin");		
			return mv;	
		}
	//根据后台模糊搜素，进行筛选跳转
		@RequestMapping("/fowardParBulletin")
		public ModelAndView fowardParBulletin(@RequestParam(value = "title") String title)throws Exception{
			List<Bulletin> bulletinList=bulletinService.selectByBulletinParName(title);
			ModelAndView mv=new ModelAndView();
			mv.addObject("bulletinList",bulletinList);
			mv.setViewName("admin/bulletin");		
			return mv;	
		}
		
		//挑转到后台的课程
		@RequestMapping(value="fowardCourse")
//		@RequiresPermissions("user:userlist")
		public ModelAndView fowardCourseCourseList(@RequestParam(required=true,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="10") Integer pageSize){
			
			PageHelper.startPage(page, pageSize);
			//这里定义空就表示查询所有的
			List<Course> courseList=courseService.selectByCourseParName("");
			PageInfo<Course> pageInfo=new PageInfo<Course>(courseList);
		
			ModelAndView mv=new ModelAndView();
			
			mv.addObject("courseList",courseList);
			mv.addObject("page", pageInfo);
			mv.setViewName("admin/course");	
			return mv;
		}
		@RequestMapping(value="selectParAdminCourse")
//		@RequiresPermissions("user:userlist")
		public ModelAndView selectParAdminCourse(String coursename,@RequestParam(required=true,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="4") Integer pageSize){
			PageHelper.startPage(page, pageSize);
			List<Course> courseList=courseService.selectByCourseParName(coursename);
			PageInfo<Course> pageInfo=new PageInfo<Course>(courseList);
			ModelAndView mv=new ModelAndView();
			mv.addObject("courseList",courseList);
			mv.addObject("page", pageInfo);
			mv.setViewName("admin/course");		
			return mv;
		}
				//挑转到后台的课程增加
				@RequestMapping("/fowardCourseAdd")
				public String fowardCourseAdd()throws Exception{
					
					return "admin/courseAdd";
					
				}
				//挑转到后台的课程计划
				@RequestMapping("/fowardPlan")
				public String fowardPlan()throws Exception{
					
					return "admin/plan";
					
				}
			
				//挑转到后台的课程计划
				@RequestMapping("/fowardIndex")			
				public ModelAndView fowardIndex(@RequestParam(required=true,defaultValue="1") Integer page,
			            @RequestParam(required=false,defaultValue="10") Integer pageSize)throws Exception{
					PageHelper.startPage(page, pageSize);
					List<User> userList=userService.findAll();
					PageInfo<User> pageInfo=new PageInfo<User>(userList);
				   ModelAndView mv=new ModelAndView();
					mv.addObject("userList",userList);
					mv.addObject("page", pageInfo);
					mv.setViewName("admin/user");		
					return mv;
					
				}	
			
				
				
}
