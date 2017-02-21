package com.englishload.controller;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.ActiveUser;
import com.englishload.po.WordbooksCustom;
import com.englishload.service.WordbooksService;

/**
 * @author Sarah
 * @date 2017年1月18日下午3:22:45
 * @filename WordbooksController.java
 * @description
 */
@Controller
public class WordbooksController {
	@Autowired
	private WordbooksService wordbooksService;
	//显示当前登录用户的单词本列表
	@RequestMapping(value="/wordbooksList")
	public ModelAndView wordbooksList()throws Exception{
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		int userId=activeUser.getUserid();
		List<WordbooksCustom> wordbooksCustomList=wordbooksService.findWordbooks(userId);
		//返回ModelAndView
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("wordbooksCustomList", wordbooksCustomList);
		modelAndView.setViewName("wordbooks/wordbooksList");	
		return modelAndView;		
	}
	//添加单词本 
	@RequestMapping(value = "/wordbooksAddLoad")
	public ModelAndView wordbooksAddLoad()throws Exception{
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.setViewName("wordbooks/wordbooksAdd");	
		return modelAndView;		
	}
	@RequestMapping(value = "/wordbooksAdd")
	public String add(WordbooksCustom wordbooksCustom){
		wordbooksService.createWordbooks(wordbooksCustom);
		//重定向的跳转
		return "redirect:/wordbooksList";
	}
	
	@RequestMapping(value="/wordbooksDelById")
	public String  delete(@RequestParam(value = "wbookId") Integer wbookId){
		wordbooksService.deleteWordbooksById(wbookId);		
		return "redirect:/wordbooksList";
	}
	@RequestMapping(value="/wordbooksDelAll")
	public String wordbooksDellAll()throws Exception{
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		int userId=activeUser.getUserid();
		wordbooksService.deleteUserAllWordbooks(userId);
		return "redirect:/wordbooksList";	
	}
	@RequestMapping(value="/wordbooksEditLoad")
	public ModelAndView wordbooksEditLoad(@RequestParam(value = "wbookId") Integer wbookId)throws Exception{
		WordbooksCustom wordbooksCustom=wordbooksService.findWordbooksById(wbookId);
		//返回ModelAndView
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("wordbooksCustom", wordbooksCustom);
		modelAndView.setViewName("wordbooks/wordbooksEdit");	
		return modelAndView;		
	}
	@RequestMapping(value = "/wordbooksEdit",method = RequestMethod.POST)
	public String wordbooksEdit(WordbooksCustom wordbooksCustom){
		wordbooksService.editWordbooks(wordbooksCustom);
		return "redirect:/wordbooksList";
	}
	
}
