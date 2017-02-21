/**
 * 
 */
package com.englishload.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.WordbooksCustom;
import com.englishload.po.WordbooksWordsCustom;
import com.englishload.po.WordsCustom;
import com.englishload.service.WordbooksWordsService;

/**
 * @author Sarah
 * @date 2017年1月21日上午7:18:32
 * @filename WordbooksWordsController.java
 * @description 
 */
@Controller
public class WordbooksWordsController {
	@Autowired
	private WordbooksWordsService wordbooksWordsService;
	@RequestMapping(value="/wordbooksWordsList")
	public ModelAndView wordbooksWordsList(@RequestParam(value = "wbookId") int wbookId)throws Exception{
		List<WordsCustom> wordsCustomList=wordbooksWordsService.findWordbooksWords(wbookId);
		//返回ModelAndView
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("wordsCustomList", wordsCustomList);
		modelAndView.setViewName("wordbookswords/wordbooksWordsList");	
		return modelAndView;		
	}
	@RequestMapping(value="/wordbooksWordsListPre")
	public ModelAndView wordbooksList()throws Exception{
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.setViewName("wordbookswords/wordbooksWordsList");	
		return modelAndView;		
	}
	@RequestMapping(value = "/wordbooksWordsAddLoad")
	public ModelAndView wordbooksAddLoad()throws Exception{
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.setViewName("wordbookswords/wordbooksWordsAdd");	
		return modelAndView;		
	}
	//将单词添加到单词本，如果返回为0，则表示该单词在单词本中已经存在
	@RequestMapping(value="/wordbooksWordsAdd")
	public String wordbooksWordsAdd(WordbooksWordsCustom wordbooksWordsCustom)throws Exception{
		wordbooksWordsService.insertWordbooksWords(wordbooksWordsCustom);
		return "redirect:/wordbooksWordsListPre";
		
	}
	@RequestMapping(value = "/wordbooksWordsDelLoad")
	public ModelAndView wordbooksWordsDelLoad()throws Exception{
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.setViewName("wordbookswords/wordbooksWordsDel");	
		return modelAndView;		
	}
	//从单词本中删除单词
	@RequestMapping(value="/wordbooksWordsDel")
	public String wordbooksWordsDel(WordbooksWordsCustom wordbooksWordsCustom)throws Exception{
		
		wordbooksWordsService.deleteWordbooksWord(wordbooksWordsCustom);
		return "redirect:/wordbooksWordsListPre"; 
		
	}
	//删除该单词本中的所有单词
	@RequestMapping(value="/wordbooksWordsDelAll")
	public String wordbooksWordsDelAll(@RequestParam(value = "wbookId") Integer wbookId)throws Exception{		
		wordbooksWordsService.deleteWordbooksAllWords(wbookId);
		return "redirect:/wordbooksWordsListPre";
		
	}
	

}
