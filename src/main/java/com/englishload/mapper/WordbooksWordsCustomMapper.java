/**
 * 
 */
package com.englishload.mapper;

import java.util.List;

import com.englishload.po.WordbooksWordsCustom;
import com.englishload.po.WordsCustom;

/**
 * @author Sarah
 * @date 2017年1月16日上午10:13:51
 * @filename WordbooksWordsCustomMapper.java
 * @description 
 */
public interface WordbooksWordsCustomMapper {
	
	//从生词本中删除相应单词
	int deleteWordbooksWord(WordbooksWordsCustom wordbooksWordsCustom);
	//删除生词本中所有单词
	int deleteWordbooksAllWords(int wbooksId);
	//添加单词到相应生词本
	int insertWordbooksWords(WordbooksWordsCustom wordbooksWordsCustom);
	//查看生词本中的所有单词
	List<WordsCustom> findWordbooksWords(int wbookId); 

}
