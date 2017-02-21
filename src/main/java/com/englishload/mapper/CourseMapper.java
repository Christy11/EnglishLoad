package com.englishload.mapper;

import com.englishload.po.Course;
import com.englishload.po.CourseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseMapper {
    int countByExample(CourseExample example);

    int deleteByExample(CourseExample example);

    int deleteByPrimaryKey(Integer courseId);

    int insert(Course record);

    int insertSelective(Course record);

    List<Course> selectByExample(CourseExample example);

    Course selectByPrimaryKey(Integer courseId);

    int updateByExampleSelective(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByExample(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
    
    //根据点击率进行排序
    public List<Course>  selectByCourseClickRate();
    //根据课程名就行模糊搜索
    public List<Course> selectByCourseParName(@Param("coursename") String coursename);
    //根据课程分类显示相应课程
    public List<Course> selectByCourseCategory(String categoryname);
    //根据课程等级显示相应课程
    public List<Course> selectByCourseGrade(String gradename);
    //根据课程等级和课程分类显示相应课程
    public List<Course> selectByCourseGradeAndCategory(@Param("categoryname") String categoryname,@Param("gradename") String gradename);
}
