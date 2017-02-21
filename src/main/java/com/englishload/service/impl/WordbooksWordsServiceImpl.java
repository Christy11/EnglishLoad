/**
 * 
 */
package com.englishload.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishload.mapper.WordbooksWordsCustomMapper;
import com.englishload.po.WordbooksWordsCustom;
import com.englishload.po.WordsCustom;
import com.englishload.service.WordbooksWordsService;

/**
 * @author Sarah
 * @date 2017年1月21日上午7:22:14
 * @filename WordbooksWordsServiceImpl.java
 * @description 
 */
@Service
public class WordbooksWordsServiceImpl implements WordbooksWordsService{
	@Autowired
	private WordbooksWordsCustomMapper wordbooksWordsCustomMapper;

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksWordsService#deleteWordbooksWord(com.englishload.po.WordbooksWordsCustom)
	 */
	public int deleteWordbooksWord(WordbooksWordsCustom wordbooksWordsCustom) {
		// TODO Auto-generated method stub
		return wordbooksWordsCustomMapper.deleteWordbooksWord(wordbooksWordsCustom);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksWordsService#deleteWordbooksAllWords(int)
	 */
	public int deleteWordbooksAllWords(int wbooksId) {
		// TODO Auto-generated method stub
		return wordbooksWordsCustomMapper.deleteWordbooksAllWords(wbooksId);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksWordsService#insertWordbooksWords(com.englishload.po.WordbooksWordsCustom)
	 */
	public int insertWordbooksWords(WordbooksWordsCustom wordbooksWordsCustom) {
		// TODO Auto-generated method stub
		return wordbooksWordsCustomMapper.insertWordbooksWords(wordbooksWordsCustom);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksWordsService#findWordbooksWords(int)
	 */
	public List<WordsCustom> findWordbooksWords(int wbookId) {
		// TODO Auto-generated method stub
		return wordbooksWordsCustomMapper.findWordbooksWords(wbookId);
	}
	

}
