package com.englishload.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.Article;
import com.englishload.po.Bulletin;
import com.englishload.po.WordsCustom;
import com.englishload.service.ArticleService;

@Controller
@RequestMapping(value="/article")
public class ArticleController {
	@Autowired
	private ArticleService articleService;
	//查询所有的文章（随机）
	@RequestMapping(value="/articleList")
	public ModelAndView bulletinList(){
		Article article=articleService.findOneArticle();
		ModelAndView mv=new ModelAndView();
		mv.addObject("article",article);
		mv.setViewName("article/articleList");		
		return mv;
	}
}
