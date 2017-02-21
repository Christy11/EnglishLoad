package com.englishload.mapper;

import com.englishload.po.Words;
import com.englishload.po.WordsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WordsMapper {
    int countByExample(WordsExample example);

    int deleteByExample(WordsExample example);

    int deleteByPrimaryKey(Integer wordId);

    int insert(Words record);

    int insertSelective(Words record);

    List<Words> selectByExampleWithBLOBs(WordsExample example);

    List<Words> selectByExample(WordsExample example);

    Words selectByPrimaryKey(Integer wordId);

    int updateByExampleSelective(@Param("record") Words record, @Param("example") WordsExample example);

    int updateByExampleWithBLOBs(@Param("record") Words record, @Param("example") WordsExample example);

    int updateByExample(@Param("record") Words record, @Param("example") WordsExample example);

    int updateByPrimaryKeySelective(Words record);

    int updateByPrimaryKeyWithBLOBs(Words record);

    int updateByPrimaryKey(Words record);
}