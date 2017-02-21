package com.englishload.mapper;

import com.englishload.po.Coursecategory;
import com.englishload.po.CoursecategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CoursecategoryMapper {
    int countByExample(CoursecategoryExample example);

    int deleteByExample(CoursecategoryExample example);

    int deleteByPrimaryKey(Integer categoryId);

    int insert(Coursecategory record);

    int insertSelective(Coursecategory record);

    List<Coursecategory> selectByExample(CoursecategoryExample example);

    Coursecategory selectByPrimaryKey(Integer categoryId);

    int updateByExampleSelective(@Param("record") Coursecategory record, @Param("example") CoursecategoryExample example);

    int updateByExample(@Param("record") Coursecategory record, @Param("example") CoursecategoryExample example);

    int updateByPrimaryKeySelective(Coursecategory record);

    int updateByPrimaryKey(Coursecategory record);
}