/**
 * 
 */
package com.englishload.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishload.mapper.HearingCustomMapper;
import com.englishload.mapper.HearingMapper;
import com.englishload.po.Hearing;
import com.englishload.po.HearingCustom;
import com.englishload.service.HearingService;

/**
 * @author Sarah
 * @date 2017年2月14日下午1:28:59
 * @filename HearingServiceImpl.java
 * @description 
 */
@Service
public class HearingServiceImpl implements HearingService{
	
	@Autowired
	private HearingCustomMapper hearingCustomMapper;

	/* (non-Javadoc)
	 * @see com.englishload.service.HearingService#randomHearing()
	 */
	@Override
	public HearingCustom randomHearing() {
		// TODO Auto-generated method stub
		return hearingCustomMapper.randomHearing();
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.HearingService#hearingListByDate()
	 */
	@Override
	public List<HearingCustom> findHearingList() {
		// TODO Auto-generated method stub
		return hearingCustomMapper.findHearingList();
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.HearingService#findHearingByGrade(int)
	 */
	@Override
	public List<HearingCustom> findHearingByGrade(int gradeId) {
		// TODO Auto-generated method stub
		return hearingCustomMapper.findHearingByGrade(gradeId);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.HearingService#findHearingById(int)
	 */
	@Override
	public Hearing findHearingById(int hearingId) {
		// TODO Auto-generated method stub
		return hearingCustomMapper.findHearingById(hearingId);
	}

}
