package com.englishload.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.englishload.po.Course;

public interface CourseService {

	//根据ID号查询
	
	public Course selectByPrimaryKey(Integer id);
	
	//通过id更新课程信息
	public int updateByPrimaryKey(Course record);
	
	//根据课程名进行模糊搜索
	public List<Course> selectByCourseParName(String coursename);
	
	//增加课程信息
	public int insertCourse(Course record);
	
	//通过点击率查询课程
    public List<Course>  selectByCourseClickRate();
    
    //根据课程分类显示相应课程
    public List<Course> selectByCourseCategory(String categoryname);
    
    //根据课程等级显示相应课程
    public List<Course> selectByCourseGrade(String gradename);
    
    //根据课程等级和课程分类显示相应课程
    public List<Course> selectByCourseGradeAndCategory(@Param("categoryname") String categoryname,@Param("gradename") String gradename);

   
}
