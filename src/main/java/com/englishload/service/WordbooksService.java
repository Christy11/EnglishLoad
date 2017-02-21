/**
 * 
 */
package com.englishload.service;

import java.util.List;

import com.englishload.po.Wordbooks;
import com.englishload.po.WordbooksCustom;

/**
 * @author Sarah
 * @date 2017年1月18日下午2:24:29
 * @filename WordbooksService.java
 * @description 
 */
public interface WordbooksService {
	
	//用户查看生词本
	List<WordbooksCustom> findWordbooks(int userId);
	//创建生词本
	int createWordbooks(WordbooksCustom wordbooksCustom);
	//根据生词本id，删除生词本
	int deleteWordbooksById(int wbookId);
	//根据用户名删除该用户的所有生词本
	int deleteUserAllWordbooks(int userId);
	//根据生词本id，编辑生词本
	int editWordbooks(WordbooksCustom wordbooksCustom);
	//根据生词本id，查找生词本
	WordbooksCustom findWordbooksById(int wbookId);

}
