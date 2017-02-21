package com.englishload.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishload.mapper.CourseMapper;
import com.englishload.po.Course;
import com.englishload.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
	CourseMapper courseMapper;
	
	@Override
	public Course selectByPrimaryKey(Integer id) {
		return courseMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKey(Course record) {

		return courseMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Course> selectByCourseParName(String coursename) {
		return courseMapper.selectByCourseParName(coursename);
	}

	@Override
	public int insertCourse(Course record) {
		// TODO Auto-generated method stub
		return courseMapper.insert(record);
	}

	@Override
	public List<Course> selectByCourseClickRate() {
		// TODO Auto-generated method stub
		return courseMapper.selectByCourseClickRate();
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.CourseService#selectByCourseCategory(java.lang.String)
	 */
	@Override
	public List<Course> selectByCourseCategory(String categoryname) {
		// TODO Auto-generated method stub
		return courseMapper.selectByCourseCategory(categoryname);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.CourseService#selectByCourseGrade(java.lang.String)
	 */
	@Override
	public List<Course> selectByCourseGrade(String gradename) {
		// TODO Auto-generated method stub
		return courseMapper.selectByCourseGrade(gradename);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.CourseService#selectByCourseGradeAndCategory(java.lang.String, java.lang.String)
	 */
	@Override
	public List<Course> selectByCourseGradeAndCategory(@Param("categoryname") String categoryname,@Param("gradename") String gradename) {
		// TODO Auto-generated method stub
		return courseMapper.selectByCourseGradeAndCategory(categoryname, gradename);
	}

}
