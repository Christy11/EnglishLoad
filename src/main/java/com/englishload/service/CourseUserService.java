/**
 * 
 */
package com.englishload.service;

import java.util.List;

import com.englishload.po.Course;
import com.englishload.po.CourseUser;

/**
 * @author Sarah
 * @date 2017年2月14日上午9:59:50
 * @filename CourseUserService.java
 * @description 
 */
public interface CourseUserService {
	
	public int insertCourseUser(CourseUser record);
	
	 //查找用户浏览过的课程按照日期降序排序
    List<Course> findUserWatchedCourse(int userId);

}
