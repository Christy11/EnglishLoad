package com.englishload.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.ActiveUser;
import com.englishload.po.Bulletin;
import com.englishload.po.Comment;
import com.englishload.po.CommentCustom;
import com.englishload.po.Course;
import com.englishload.service.CommentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value="/comment")
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	//显示所有的评论信息，显示的放在courseController中
	/*@RequestMapping(value="/commentList")
	public ModelAndView commentList(@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="4") Integer pageSize){
		PageHelper.startPage(page, pageSize);
		List<CommentCustom> commentList=commentService.findAll();
		PageInfo<CommentCustom> pageInfo=new PageInfo<CommentCustom>(commentList);
		ModelAndView mv=new ModelAndView();
		mv.addObject("commentList",commentList);
		mv.addObject("page", pageInfo);
		mv.setViewName("course/courseplay");		
		return mv;
	}*/
	//增加一条评论
	@RequestMapping(value="/commentAdd")
	public ModelAndView commentAdd(String comment,int courseId){
		//user_id ,username ,comment_id,commentext,commentime,course_id
		//获取评论内容commentext
	   //设置评论时间
		//从shiro的session中取activeUser
		//int courseId=Integer.parseInt(request.getParameter("courseId"));
		Subject subject = SecurityUtils.getSubject();
		//取身份信息
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		Date date = new Date(System.currentTimeMillis());
		//String id=request.getParameter("id");
	    //int bulletinId =Integer.parseInt(id);	
		Comment comments = new Comment();
		comments.setCommentext(comment);
		comments.setCommentime(date);
		//从jsp中获取用户的id、课程的id
		comments.setCourseId(courseId);
		comments.setUserId(activeUser.getUserid());
		commentService.insert(comments);
		ModelAndView mv=new ModelAndView();	
		mv.addObject("commentAdd","ok");
		mv.setViewName("course/courseplay");	
		return mv;
	}
	
	
}
