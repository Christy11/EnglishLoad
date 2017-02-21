/**
 * 
 */
package com.englishload.mapper;

import java.util.List;

import com.englishload.po.HearingCustom;

/**
 * @author Sarah
 * @date 2017年2月14日下午1:17:44
 * @filename HearingCustomMapper.java
 * @description 
 */
public interface HearingCustomMapper {
	
	//每日一听
	HearingCustom randomHearing();
	//显示全部听力
	List<HearingCustom> findHearingList();
	//根据听力等级id显示听力
	List<HearingCustom> findHearingByGrade(int gradeId);
	//根据听力id查找听力
	HearingCustom findHearingById(int hearingId);

}
