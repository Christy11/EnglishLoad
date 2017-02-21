package com.englishload.mapper;

import com.englishload.po.Hearing;
import com.englishload.po.HearingExample;
import com.englishload.po.HearingWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HearingMapper {
    int countByExample(HearingExample example);

    int deleteByExample(HearingExample example);

    int deleteByPrimaryKey(Integer hearingId);

    int insert(HearingWithBLOBs record);

    int insertSelective(HearingWithBLOBs record);

    List<HearingWithBLOBs> selectByExampleWithBLOBs(HearingExample example);

    List<Hearing> selectByExample(HearingExample example);

    HearingWithBLOBs selectByPrimaryKey(Integer hearingId);

    int updateByExampleSelective(@Param("record") HearingWithBLOBs record, @Param("example") HearingExample example);

    int updateByExampleWithBLOBs(@Param("record") HearingWithBLOBs record, @Param("example") HearingExample example);

    int updateByExample(@Param("record") Hearing record, @Param("example") HearingExample example);

    int updateByPrimaryKeySelective(HearingWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(HearingWithBLOBs record);

    int updateByPrimaryKey(Hearing record);
}