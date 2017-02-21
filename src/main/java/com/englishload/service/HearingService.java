/**
 * 
 */
package com.englishload.service;

import java.util.List;

import com.englishload.po.Hearing;
import com.englishload.po.HearingCustom;

/**
 * @author Sarah
 * @date 2017年2月14日下午1:27:53
 * @filename HearingService.java
 * @description 
 */
public interface HearingService {
	
	//每日一听
	public HearingCustom randomHearing();
	//按日期显示听力列表
	public List<HearingCustom> findHearingList();
	//根据听力等级id显示听力
	public List<HearingCustom> findHearingByGrade(int gradeId);
	
	public Hearing findHearingById(int hearingId);

}
