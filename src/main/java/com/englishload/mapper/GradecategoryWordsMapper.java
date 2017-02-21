package com.englishload.mapper;

import com.englishload.po.GradecategoryWords;
import com.englishload.po.GradecategoryWordsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GradecategoryWordsMapper {
    int countByExample(GradecategoryWordsExample example);

    int deleteByExample(GradecategoryWordsExample example);

    int deleteByPrimaryKey(Integer gradecategoryWordsId);

    int insert(GradecategoryWords record);

    int insertSelective(GradecategoryWords record);

    List<GradecategoryWords> selectByExample(GradecategoryWordsExample example);

    GradecategoryWords selectByPrimaryKey(Integer gradecategoryWordsId);

    int updateByExampleSelective(@Param("record") GradecategoryWords record, @Param("example") GradecategoryWordsExample example);

    int updateByExample(@Param("record") GradecategoryWords record, @Param("example") GradecategoryWordsExample example);

    int updateByPrimaryKeySelective(GradecategoryWords record);

    int updateByPrimaryKey(GradecategoryWords record);
}