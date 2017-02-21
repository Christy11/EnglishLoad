package com.englishload.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.englishload.mapper.CommentMapper;
import com.englishload.po.Comment;
import com.englishload.po.CommentCustom;
import com.englishload.service.CommentService;
@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentMapper commentMapper;

	@Override
	public List<CommentCustom> findAll(int courseId) {
		// TODO Auto-generated method stub
		return commentMapper.findAll(courseId);
	}

	@Override
	public void insert(Comment record) {
		// TODO Auto-generated method stub
		commentMapper.insert(record);
	}

	
	
	
}
