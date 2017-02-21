package com.englishload.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.ActiveUser;
import com.englishload.po.Bulletin;
import com.englishload.po.CommentCustom;
import com.englishload.po.Course;
import com.englishload.po.CourseUser;
import com.englishload.po.GradecategoryCourse;
import com.englishload.service.BulletinService;
import com.englishload.service.CommentService;
import com.englishload.service.CourseService;
import com.englishload.service.CourseUserService;
import com.englishload.service.GradecategoryCourseService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
/**
 * 
 * @author taojian
 * @time  2017年2月2日下午4:00:31
 * @ClassName CourseController.java
 * @description 课程的handler类
 */
@Controller
public class CourseController {

	@Autowired
	CourseService courseService;
	@Autowired
	CourseUserService courseUserService;
	@Autowired
	GradecategoryCourseService gradecategoryCourseService;
	@Autowired
	CommentService commentService;
	@Autowired
	BulletinService bulletinService;
	/**
	 * @author taojian
	 * @time 2017年2月10日上午11:11:41
	 * @methodname uploadCourse()
	 * @descripe  上传课程，图片和视频地址，上传的课程需要显示是谁进行上传的，是老师还是
	 * 管理员上传的，需要用到课程和用户和角色的等表。
	 * MultipartFile course_pic,//接收课程图片,这个名字要和页面上的文件名要求一致 
	 * MultipartFile course_video//接收课程视频地址,这个名字要和页面上的文件名要求一致 
	 */
	@RequestMapping("uploadCourse")
	public ModelAndView uploadCourse(
			int gradeId,
			Course course,
			MultipartFile course_pic,//接收课程图片,这个名字要和页面上的文件名要求一致 
			MultipartFile course_video//接收课程视频地址,这个名字要和页面上的文件名要求一致 
			) throws Exception {
		//原始视频名称
		String originalFilenameVideo=course_video.getOriginalFilename();
		// 上传图片
			if (course_video!= null && originalFilenameVideo != null && originalFilenameVideo.length() > 0) {

			// 存储图片的物理路径
			String video_path = "E:\\dev\\eclipse\\upload\\video\\";

			// 新的视频名称
			String newFileNamevideo = UUID.randomUUID() + originalFilenameVideo.substring(originalFilenameVideo.lastIndexOf("."));
			// 新视频
			File newFilevideo = new File(video_path + newFileNamevideo);

			// 将内存中的数据写入磁盘
			course_video.transferTo(newFilevideo);

			// 将新视频名称写到数据库中
			course.setCoursecontent(newFileNamevideo);

				}
		// 原始名称图片
		String originalFilename = course_pic.getOriginalFilename();
		// 上传图片
		if (course_pic!= null && originalFilename != null && originalFilename.length() > 0) {

			// 存储图片的物理路径
			String pic_path = "E:\\dev\\eclipse\\upload\\images\\";

			// 新的图片名称
			String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
			// 新图片
			File newFile = new File(pic_path + newFileName);

			// 将内存中的数据写入磁盘
			course_pic.transferTo(newFile);

			// 将新图片名称写到中
			course.setCoursepic(newFileName);

		}
		//刚开始插入的时候点击率为0
		course.setClickrate(0);
		int a = courseService.insertCourse(course);
		
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		int userId=activeUser.getUserid();
		CourseUser courseUser=new CourseUser();
		courseUser.setUserId(userId);
		//插入当前用户和课程之间的表
		courseUser.setCourseId(course.getCourseId());
		
		int b=courseUserService.insertCourseUser(courseUser);
	
		//插入课程和等级gradecategoryCourse之间的表
		
		GradecategoryCourse gradecategoryCourse=new GradecategoryCourse();
		gradecategoryCourse.setCourseId(course.getCourseId());
		gradecategoryCourse.setGradeId(gradeId);
		int c=gradecategoryCourseService.insertGradecategoryCourse(gradecategoryCourse);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("admin/courseAdd");
		return mv;
	}
	
	//跳转页面
	@RequestMapping("upCourse")
	public String upCourse(){
		return "course/courseupload";
	}
	
	//根据课程id查询课程信息
	@RequestMapping("selectCourseById")
	public ModelAndView selectCourseById(){
		Course course=courseService.selectByPrimaryKey(1);
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("course",course);
		mv.setViewName("/course/courselist");
		return mv;
	}
	/**
	 * @author taojian
	 * @time 2017年2月9日下午3:23:06
	 * @methodname courseList
	 * @descripe 
	 */
	@RequestMapping(value="findCourse")
//	@RequiresPermissions("user:userlist")
	public ModelAndView courseList(@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="4") Integer pageSize){
		
		PageHelper.startPage(page, pageSize);
		//这里定义空就表示查询所有的
		List<Course> courseList=courseService.selectByCourseParName("");
		PageInfo<Course> pageInfo=new PageInfo<Course>(courseList);
		//显示所有的公告
		List<Bulletin> bulletinList=bulletinService.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("bulletinList",bulletinList);
		mv.addObject("courseList",courseList);
		mv.addObject("page", pageInfo);
		mv.setViewName("course/courseindex");	
		return mv;
	}
	

/**
 * @author taojian
 * @time 2017年2月9日下午3:50:33
 * @methodname CourseController.java
 * @descripe 模糊查询
 */
	@RequestMapping(value="selectParCourse")
//	@RequiresPermissions("user:userlist")
	public ModelAndView courseList(String coursename,@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="4") Integer pageSize){
		PageHelper.startPage(page, pageSize);
		List<Course> courseList=courseService.selectByCourseParName(coursename);
		PageInfo<Course> pageInfo=new PageInfo<Course>(courseList);
		ModelAndView mv=new ModelAndView();
		mv.addObject("courseList",courseList);
		mv.addObject("page", pageInfo);
		mv.setViewName("course/courseindex");		
		return mv;
	}
	/**
	 * @author taojian
	 * @time 2017年2月9日下午4:20:41
	 * @methodname CourseController.java
	 * @descripe 根据点击课程，进入播放页面,采用REDTful风格
	 */
	@RequestMapping("courseplay/{courseId}")
	public ModelAndView coursePlay(@PathVariable("courseId") int courseId,@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="4") Integer pageSize){
		//显示所有的评论

		//PageHelper.startPage(page, pageSize);
		
		List<CommentCustom> commentList=commentService.findAll(courseId);
		
		//得到查询的记录数
		//PageInfo<CommentCustom> pageInfo=new PageInfo<CommentCustom>(commentList);
		//通过点击视频，获取id号查询课程信息
       Course course=courseService.selectByPrimaryKey(courseId);
		//通过点击视频，增加视频的点击率，更新clickrate字段。
       //每进行一次点击数就会加1
       int clickrate=course.getClickrate()+1;
       course.setClickrate(clickrate);
       int  a=courseService.updateByPrimaryKey(course);
       
       //插入用户视频浏览记录
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		int userId=activeUser.getUserid();
		CourseUser courseUser=new CourseUser();
		courseUser.setUserId(userId);
		//插入当前用户和课程之间的表
		courseUser.setCourseId(course.getCourseId());
		courseUserService.insertCourseUser(courseUser);
       
		ModelAndView mv=new ModelAndView();
		mv.addObject("course",course);
		mv.addObject("commentList",commentList);
		//将数据的信息传入courseplay.jsp中
		//mv.addObject("page", pageInfo);
		mv.setViewName("course/courseplay");
		return mv;

	
	}
	
	/**
	 * @author taojian
	 * @time 2017年2月12日下午1:01:29
	 * @methodname selectByCourseClickRate
	 * @descripe 根据点击量进行排序
	 */
	@RequestMapping("selectByCourseClickRate")
	public ModelAndView selectByCourseClickRate(String coursename,@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="4") Integer pageSize){
		PageHelper.startPage(page, pageSize);
		List<Course> courseList=courseService.selectByCourseClickRate();
		PageInfo<Course> pageInfo=new PageInfo<Course>(courseList);
		ModelAndView mv=new ModelAndView();
		mv.addObject("courseList",courseList);
		mv.addObject("page", pageInfo);
		mv.setViewName("course/courseindex");		
		return mv;
	}
	/**
	 * @author taojian
	 * @time 2017年2月13日上午10:25:16
	 * @methodname selectByCourseIdAndUserId
	 * @descripe 用户登录后，点击课程的时候，历史记录课程信息
	 */
	@RequestMapping("selectByCourseIdAndUserId")
	public ModelAndView selectByCourseIdAndUserId(String coursename,@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="4") Integer pageSize){
		PageHelper.startPage(page, pageSize);
		List<Course> courseList=courseService.selectByCourseClickRate();
		PageInfo<Course> pageInfo=new PageInfo<Course>(courseList);
		ModelAndView mv=new ModelAndView();
		mv.addObject("courseList",courseList);
		mv.addObject("page", pageInfo);
		mv.setViewName("course/courseindex");		
		return mv;
	}
	
	
	
	
	
	
	
	@RequestMapping("selectByCourseCategory")
	public ModelAndView selectByCourseCategory(HttpServletRequest request,String categoryname,@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="4") Integer pageSize){
		PageHelper.startPage(page, pageSize);
		HttpSession session=request.getSession();
		session.setAttribute("categoryname", categoryname);
	   List<Course> courseList=courseService.selectByCourseCategory(categoryname);
		PageInfo<Course> pageInfo=new PageInfo<Course>(courseList);
		ModelAndView mv=new ModelAndView();
		mv.addObject("courseList",courseList);
		mv.addObject("page", pageInfo);
		mv.setViewName("course/courseindex");		
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping("selectByCourseGrade")
	public ModelAndView selectByCourseGrade(String categoryname,String gradename,@RequestParam(required=true,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="4") Integer pageSize){
		PageHelper.startPage(page, pageSize);

		List<Course> courseList=courseService.selectByCourseGradeAndCategory(categoryname, gradename);
		PageInfo<Course> pageInfo=new PageInfo<Course>(courseList);
		ModelAndView mv=new ModelAndView();
		mv.addObject("courseList",courseList);
		mv.addObject("page", pageInfo);
		mv.setViewName("course/courseindex");		
		return mv;
	}
}
