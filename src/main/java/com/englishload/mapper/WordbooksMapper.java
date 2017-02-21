package com.englishload.mapper;

import com.englishload.po.Wordbooks;
import com.englishload.po.WordbooksExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WordbooksMapper {
    int countByExample(WordbooksExample example);

    int deleteByExample(WordbooksExample example);

    int deleteByPrimaryKey(Integer wbookId);

    int insert(Wordbooks record);

    int insertSelective(Wordbooks record);

    List<Wordbooks> selectByExample(WordbooksExample example);

    Wordbooks selectByPrimaryKey(Integer wbookId);

    int updateByExampleSelective(@Param("record") Wordbooks record, @Param("example") WordbooksExample example);

    int updateByExample(@Param("record") Wordbooks record, @Param("example") WordbooksExample example);

    int updateByPrimaryKeySelective(Wordbooks record);

    int updateByPrimaryKey(Wordbooks record);
    
    //delete by userId
    int deleteByUserId(Integer userId);
}