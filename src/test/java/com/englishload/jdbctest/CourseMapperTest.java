package com.englishload.jdbctest;



import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.englishload.mapper.CourseMapper;
import com.englishload.mapper.GradecategoryCourseMapper;
import com.englishload.mapper.UserMapper;
import com.englishload.po.Course;
import com.englishload.po.GradecategoryCourse;
import com.englishload.po.User;



public class CourseMapperTest {

	private ApplicationContext applicationContext;

	//在setUp这个方法得到spring容器
	@Before
	public void setUp() throws Exception {
		applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis/spring-mybatis.xml");
	}

	@Test
	public void testselectCourseById() throws Exception {
		CourseMapper courseMapper = (CourseMapper) applicationContext.getBean("courseMapper");
		Course course = courseMapper.selectByPrimaryKey(1);
		System.out.println(course.getCoursename());
	}
	@Test
	public void testselectByCourseParName() throws Exception {
		CourseMapper courseMapper = (CourseMapper) applicationContext.getBean("courseMapper");
		
		List<Course> courselist = courseMapper.selectByCourseParName("");
		System.out.println(courselist);
	}
	@Test
	public void testselectByUserParName() throws Exception {
		UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
		
		List<User> courselist = userMapper.findUserByParName("套");
		System.out.println(courselist);
	}
	
	//测试插入的课程
	@Test
	public void testinsertCourse() throws Exception {
		CourseMapper courseMapper = (CourseMapper) applicationContext.getBean("courseMapper");
		Course course=new Course();
		course.setCategoryId(1);
		course.setCoursecontent("dsfdf");
		course.setCoursename("test");
		int insert = courseMapper.insert(course);
		System.out.println(insert);
	}
	//测试点击率
	@Test
	public void  testselectByCourseClickRate()throws Exception{
		CourseMapper courseMapper = (CourseMapper) applicationContext.getBean("courseMapper");
		
		//Course course=new Course();
		List<Course> courseList=courseMapper.selectByCourseClickRate();
		for(int i=0;i<courseList.size();i++){
		System.out.println(courseList.get(i).getClickrate());}
	}
	
	@Test
	public void  tests()throws Exception{
		GradecategoryCourseMapper gradecategoryCourseMapper = (GradecategoryCourseMapper) applicationContext.getBean("gradecategoryCourseMapper");
		GradecategoryCourse gradecategoryCourse=new GradecategoryCourse();
		gradecategoryCourse.setGradeId(2);
		gradecategoryCourse.setCourseId(11);
		//Course course=new Course();
		int a =gradecategoryCourseMapper.insertGradecategoryCourse(gradecategoryCourse);
		
		
	}
}
