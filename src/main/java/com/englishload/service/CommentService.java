package com.englishload.service;

import java.util.List;

import com.englishload.po.Bulletin;
import com.englishload.po.Comment;
import com.englishload.po.CommentCustom;

public interface CommentService {
	//根据课程id显示所有评论信息列表
	public List<CommentCustom> findAll(int courseId);
	//增加一条评论
	public void insert(Comment record);
}
