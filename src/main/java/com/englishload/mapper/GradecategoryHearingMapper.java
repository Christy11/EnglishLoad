package com.englishload.mapper;

import com.englishload.po.GradecategoryHearing;
import com.englishload.po.GradecategoryHearingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GradecategoryHearingMapper {
    int countByExample(GradecategoryHearingExample example);

    int deleteByExample(GradecategoryHearingExample example);

    int deleteByPrimaryKey(Integer gradecategoryHearingId);

    int insert(GradecategoryHearing record);

    int insertSelective(GradecategoryHearing record);

    List<GradecategoryHearing> selectByExample(GradecategoryHearingExample example);

    GradecategoryHearing selectByPrimaryKey(Integer gradecategoryHearingId);

    int updateByExampleSelective(@Param("record") GradecategoryHearing record, @Param("example") GradecategoryHearingExample example);

    int updateByExample(@Param("record") GradecategoryHearing record, @Param("example") GradecategoryHearingExample example);

    int updateByPrimaryKeySelective(GradecategoryHearing record);

    int updateByPrimaryKey(GradecategoryHearing record);
}