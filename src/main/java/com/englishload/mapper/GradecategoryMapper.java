package com.englishload.mapper;

import com.englishload.po.Gradecategory;
import com.englishload.po.GradecategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GradecategoryMapper {
    int countByExample(GradecategoryExample example);

    int deleteByExample(GradecategoryExample example);

    int deleteByPrimaryKey(Integer gradeId);

    int insert(Gradecategory record);

    int insertSelective(Gradecategory record);

    List<Gradecategory> selectByExample(GradecategoryExample example);

    Gradecategory selectByPrimaryKey(Integer gradeId);

    int updateByExampleSelective(@Param("record") Gradecategory record, @Param("example") GradecategoryExample example);

    int updateByExample(@Param("record") Gradecategory record, @Param("example") GradecategoryExample example);

    int updateByPrimaryKeySelective(Gradecategory record);

    int updateByPrimaryKey(Gradecategory record);
}