package com.englishload.mapper;

import com.englishload.po.CourseUser;
import com.englishload.po.GradecategoryCourse;
import com.englishload.po.GradecategoryCourseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GradecategoryCourseMapper {
    int countByExample(GradecategoryCourseExample example);

    int deleteByExample(GradecategoryCourseExample example);

    int deleteByPrimaryKey(Integer gradecategoryCourseId);

    int insert(GradecategoryCourse record);

    int insertSelective(GradecategoryCourse record);

    List<GradecategoryCourse> selectByExample(GradecategoryCourseExample example);

    GradecategoryCourse selectByPrimaryKey(Integer gradecategoryCourseId);

    int updateByExampleSelective(@Param("record") GradecategoryCourse record, @Param("example") GradecategoryCourseExample example);

    int updateByExample(@Param("record") GradecategoryCourse record, @Param("example") GradecategoryCourseExample example);

    int updateByPrimaryKeySelective(GradecategoryCourse record);

    int updateByPrimaryKey(GradecategoryCourse record);
    
    int insertGradecategoryCourse(GradecategoryCourse record);
}