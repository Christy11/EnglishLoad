/**
 * 
 */
package com.englishload.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.CommentCustom;
import com.englishload.po.Course;
import com.englishload.po.Hearing;
import com.englishload.po.HearingCustom;
import com.englishload.po.WordsCustom;
import com.englishload.service.HearingService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * @author Sarah
 * @date 2017年2月14日下午1:31:04
 * @filename HearingController.java
 * @description 
 */
@Controller
public class HearingController {
	
	@Autowired
	private HearingService hearingService;
	
	
	/**
	 * @author taojian
	 * @time 2017年2月19日下午1:09:51
	 * @methodname fowardHearingIndex
	 * @descripe 主页跳转到特定的页面
	 */
	@RequestMapping("fowardHearingIndex")
	public ModelAndView fowardHearingIndex(){
		List<HearingCustom> hearingCustomList = hearingService.findHearingList();
		ModelAndView mv =  new ModelAndView();
		mv.addObject("hearingCustomList", hearingCustomList);
		mv.setViewName("hearing/hearingindex");
		return mv;
	}
	
	/**
	 * @author taojian
	 * @time 2017年2月19日下午4:35:01
	 * @methodname fowardHearingEvery
	 * @descripe  跳转到每日一句，训练听力
	 */
	
	
	@RequestMapping("fowardHearingEvery")
	public ModelAndView fowardHearingEvery(){
		HearingCustom hearing = hearingService.randomHearing();
		ModelAndView mv =  new ModelAndView();
		mv.addObject("hearing", hearing);
		mv.setViewName("hearing/hearingevery");
		return mv;
	}
	@RequestMapping("/randomHearing")
	public ModelAndView randomHearing()throws Exception{

		HearingCustom hearing = hearingService.randomHearing();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("hearing", hearing);
		modelAndView.setViewName("/hearing/randomHearing");		
		return modelAndView;
		
	}
	
	@RequestMapping("/findHearingList")
	public ModelAndView findHearingList()throws Exception{
		List<HearingCustom> hearingCustomList = hearingService.findHearingList();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("hearingCustomList", hearingCustomList);
		modelAndView.setViewName("/hearing/hearingList");		
		return modelAndView;		
	}
	
	@RequestMapping("/findHearingByGrade")
	public ModelAndView findHearingByGrade(int gradeId)throws Exception{
		List<HearingCustom> hearingCustomList = hearingService.findHearingByGrade(gradeId);
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("hearingCustomList", hearingCustomList);
		modelAndView.setViewName("/hearing/hearingList");		
		return modelAndView;		
	}
	@RequestMapping("/hearingPlay/{hearingId}")
	public ModelAndView hearingPlay(@PathVariable("hearingId") int hearingId ){
		
       Hearing hearing=hearingService.findHearingById(hearingId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("hearing",hearing);
		mv.setViewName("hearing/hearingPlay");
		return mv;
	
	}

}
