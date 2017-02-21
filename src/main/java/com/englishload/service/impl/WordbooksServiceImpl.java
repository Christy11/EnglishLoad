/**
 * 
 */
package com.englishload.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.englishload.mapper.WordbooksCustomMapper;
import com.englishload.mapper.WordbooksMapper;
import com.englishload.po.Wordbooks;
import com.englishload.po.WordbooksCustom;
import com.englishload.service.WordbooksService;

/**
 * @author Sarah
 * @date 2017年1月18日下午2:28:25
 * @filename WordbooksServiceImpl.java
 * @description 
 */
@Service
public class WordbooksServiceImpl implements WordbooksService{

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksService#findWordbooks(int)
	 */
	@Autowired
	private WordbooksCustomMapper wordbooksCustomMapper;
	@Autowired
	private WordbooksMapper wordbooksMapper;
	
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<WordbooksCustom> findWordbooks(int userId) {
		// TODO Auto-generated method stub
		return wordbooksCustomMapper.findWordbooks(userId);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksService#createWordbooks(com.englishload.po.WordbooksCustom)
	 */
	public int createWordbooks(WordbooksCustom wordbooksCustom) {
		// TODO Auto-generated method stub
		return wordbooksCustomMapper.createWordbooks(wordbooksCustom);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksService#deleteWordbooksById(int)
	 */
	public int deleteWordbooksById(int wbookId) {
		// TODO Auto-generated method stub
		return wordbooksCustomMapper.deleteWordbooksById(wbookId);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksService#deleteUserAllWordbooks(int)
	 */
	public int deleteUserAllWordbooks(int userId) {
		// TODO Auto-generated method stub
		return wordbooksCustomMapper.deleteUserAllWordbooks(userId);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksService#editWordbooks(int)
	 */
	public int editWordbooks(WordbooksCustom wordbooksCustom) {
		// TODO Auto-generated method stub
		return wordbooksMapper.updateByPrimaryKeySelective(wordbooksCustom);
	}

	/* (non-Javadoc)
	 * @see com.englishload.service.WordbooksService#findWordbooksById(int)
	 */
	public WordbooksCustom findWordbooksById(int wbookId) {
		// TODO Auto-generated method stub
		return wordbooksCustomMapper.findWordbooksById(wbookId);
	}
	
	

}
