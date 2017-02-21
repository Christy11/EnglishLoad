/**
 * 
 */
package com.englishload.mapper;

import java.util.List;

import com.englishload.po.WordbooksCustom;

/**
 * @author Sarah
 * @date 2017年1月13日下午2:09:33
 * @filename WordbooksCustomMapper.java
 * @description 
 */
public interface WordbooksCustomMapper {
	//用户查看生词本
	List<WordbooksCustom> findWordbooks(int userId);
	//创建生词本
	int createWordbooks(WordbooksCustom wordbooksCustom);
	//根据生词本id，删除生词本
	int deleteWordbooksById(int wbookId);
	//根据用户名删除该用户的所有生词本
	int deleteUserAllWordbooks(int userId);
	//根据生词本id，查询生词本
	WordbooksCustom findWordbooksById(int wbookId);

}
