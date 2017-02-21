/**
 * 
 */
package com.englishload.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishload.mapper.CourseUserMapper;
import com.englishload.po.Course;
import com.englishload.po.CourseUser;
import com.englishload.service.CourseUserService;

/**
 * @author Sarah
 * @date 2017年2月14日上午10:01:46
 * @filename CourseUserServiceImpl.java
 * @description 
 */
@Service
public class CourseUserServiceImpl implements CourseUserService{
	
	@Autowired
	private CourseUserMapper courseUserMapper; 

	/* (non-Javadoc)
	 * @see com.englishload.service.CourseUserService#insertCourseUser(com.englishload.po.CourseUser)
	 */
	@Override
	public int insertCourseUser(CourseUser record) {
		// TODO Auto-generated method stub
		return courseUserMapper.insertCourseUser(record);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.CourseUserService#findUserWatchedCourse(int)
	 */
	@Override
	public List<Course> findUserWatchedCourse(int userId) {
		// TODO Auto-generated method stub
		return courseUserMapper.findUserWatchedCourse(userId);
	}

}
