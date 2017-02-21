package com.englishload.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.englishload.mapper.ArticleMapper;
import com.englishload.po.Article;
import com.englishload.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired

	private ArticleMapper articleMapper;
	@Override
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public Article findOneArticle() {
		// 查询所有的文章
		return articleMapper.findOneArticle();
	}

}
