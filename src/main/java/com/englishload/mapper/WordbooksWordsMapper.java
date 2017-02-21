package com.englishload.mapper;

import com.englishload.po.WordbooksWords;
import com.englishload.po.WordbooksWordsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WordbooksWordsMapper {
    int countByExample(WordbooksWordsExample example);

    int deleteByExample(WordbooksWordsExample example);

    int deleteByPrimaryKey(Integer wordbooksWordsId);

    int insert(WordbooksWords record);

    int insertSelective(WordbooksWords record);

    List<WordbooksWords> selectByExample(WordbooksWordsExample example);

    WordbooksWords selectByPrimaryKey(Integer wordbooksWordsId);

    int updateByExampleSelective(@Param("record") WordbooksWords record, @Param("example") WordbooksWordsExample example);

    int updateByExample(@Param("record") WordbooksWords record, @Param("example") WordbooksWordsExample example);

    int updateByPrimaryKeySelective(WordbooksWords record);

    int updateByPrimaryKey(WordbooksWords record);
    //根据用户id删除记录
    int deleteByUserId(Integer userId);
}