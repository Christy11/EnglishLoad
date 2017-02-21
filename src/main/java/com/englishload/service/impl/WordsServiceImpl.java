package com.englishload.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.englishload.mapper.WordsCustomMapper;
import com.englishload.po.WordsCustom;
import com.englishload.service.WordsService;

@Service
public class WordsServiceImpl implements WordsService{
	
	@Autowired
	private WordsCustomMapper wordsCustomMapper;

	public WordsCustom randomWord() {
		// TODO Auto-generated method stub
		return wordsCustomMapper.randomWord();
	}

	public List<WordsCustom> randomWordsList() {
		// TODO Auto-generated method stub
		return wordsCustomMapper.randomWordsList();
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordsService#randomWordsListByGrade(int)
	 */
	@Override
	public List<WordsCustom> randomWordsListByGrade(int gradeId) {
		// TODO Auto-generated method stub
		return wordsCustomMapper.randomWordsListByGrade(gradeId);
	}

}
