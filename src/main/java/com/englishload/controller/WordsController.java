package com.englishload.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.ActiveUser;
import com.englishload.po.Course;
import com.englishload.po.WordbooksCustom;
import com.englishload.po.WordbooksWordsCustom;
import com.englishload.po.WordsCustom;
import com.englishload.service.WordbooksService;
import com.englishload.service.WordbooksWordsService;


import com.englishload.po.Article;

import com.englishload.po.Course;

import com.englishload.po.WordsCustom;
import com.englishload.service.ArticleService;
import com.englishload.service.WordsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



@Controller
public class WordsController {
	
	@Autowired
	private WordsService wordsService;
	@Autowired
	private WordbooksService wordbooksService;
	@Autowired
	private WordbooksWordsService wordbooksWordsService;
    @Autowired
	private ArticleService  articleService;

	//随机生成一个单词
	@RequestMapping("/randomWord")
	public String randomWord(Model model)throws Exception{
		
		//调用service查找数据库
		WordsCustom wordsCustom = wordsService.randomWord();
		//随机产生一篇文章
		Article article=articleService.findOneArticle();
		model.addAttribute("wordsCustom",wordsCustom);
		model.addAttribute("article",article);		
		return "forward:/front/words.jsp";
		
	}
	@RequestMapping("/randomWordsListByGrade")
	public ModelAndView randomWordsList(int gradeId)throws Exception{
		List<WordsCustom> wordsCustomList=wordsService.randomWordsListByGrade(gradeId);
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("wordsCustomList", wordsCustomList);
		modelAndView.setViewName("words/WordsTest");	
		return modelAndView;		
	}
  /**
   * @author taojian
   * @time 2017年2月5日下午10:23:51
   * @methodname wordstudy
   * @descripe 跳转
   */
	
	@RequestMapping("/wordstudy/{gradeId}")
	public ModelAndView wordstudy(HttpServletRequest request,@PathVariable("gradeId")Integer gradeId,@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="6") Integer pageSize)throws Exception{
		PageHelper.startPage(page, pageSize);
		List<WordsCustom> wordsCustomList=wordsService.randomWordsListByGrade(gradeId);
		PageInfo<WordsCustom> pageInfo=new PageInfo<WordsCustom>(wordsCustomList);	
		ModelAndView modelAndView =  new ModelAndView();
		HttpSession session=request.getSession();
		session.setAttribute("gradeId", gradeId);
		modelAndView.addObject("wordsCustomList", wordsCustomList);
		modelAndView.addObject("page", pageInfo);
		//查找当前登录用户的生词本
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		int userId=activeUser.getUserid();
		List<WordbooksCustom> wordbooksCustomList=wordbooksService.findWordbooks(userId);
		modelAndView.addObject("wordbooksCustomList", wordbooksCustomList);
		modelAndView.setViewName("words/wordLearning");			
		return modelAndView;	
	}
	
	
	@RequestMapping("/wordsindex")

	public ModelAndView wordindex(Integer gradeId,@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="1") Integer pageSize)throws Exception{
		PageHelper.startPage(page, pageSize);
		List<WordsCustom> wordsCustomList=wordsService.randomWordsListByGrade(gradeId);
		PageInfo<WordsCustom> pageInfo=new PageInfo<WordsCustom>(wordsCustomList);
		
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("page", pageInfo);
		modelAndView.addObject("wordsCustomList", wordsCustomList);
		modelAndView.setViewName("words/wordIndex");	
		return modelAndView;		

	}
	@RequestMapping(value="/addWordbooksWords")
	public ModelAndView addWordbooksWords(int wbookId, String wordId)throws Exception{
		WordbooksWordsCustom wordbooksWordsCustom=new WordbooksWordsCustom();
		wordbooksWordsCustom.setWbookId(wbookId);
		for(String s : wordId.split(",")){
			   wordbooksWordsCustom.setWordId(Integer.valueOf(s));
			   wordbooksWordsService.insertWordbooksWords(wordbooksWordsCustom);
			};
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.setViewName("words/wordLearning");	
		return modelAndView;	
	}
}
