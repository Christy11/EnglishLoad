package com.englishload.mapper;

import java.util.List;

import com.englishload.po.WordsCustom;

public interface WordsCustomMapper {
	//随机生成一个单词
	WordsCustom randomWord();
	//随机生成全部单词
	List<WordsCustom> randomWordsList();
	//通过等级id随机显示单词
	List<WordsCustom> randomWordsListByGrade(int gradeId);
	

}
