package com.englishload.mapper;

import com.englishload.po.Course;
import com.englishload.po.CourseUser;
import com.englishload.po.CourseUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseUserMapper {
    int countByExample(CourseUserExample example);

    int deleteByExample(CourseUserExample example);

    int deleteByPrimaryKey(Integer courseUserId);

    int insert(CourseUser record);

    int insertSelective(CourseUser record);

    List<CourseUser> selectByExample(CourseUserExample example);

    CourseUser selectByPrimaryKey(Integer courseUserId);

    int updateByExampleSelective(@Param("record") CourseUser record, @Param("example") CourseUserExample example);

    int updateByExample(@Param("record") CourseUser record, @Param("example") CourseUserExample example);

    int updateByPrimaryKeySelective(CourseUser record);

    int updateByPrimaryKey(CourseUser record);
    
    //delete by userId
    int deleteByUserId(Integer userId);
    //插入上传课程记录
    int insertCourseUser(CourseUser record);
    //查找用户浏览过的课程按照日期降序排序
    List<Course> findUserWatchedCourse(int userId);
}