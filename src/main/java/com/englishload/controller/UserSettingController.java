
package com.englishload.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.ActiveUser;
import com.englishload.po.Course;
import com.englishload.po.CourseUser;
import com.englishload.po.GradecategoryCourse;
import com.englishload.po.User;
import com.englishload.po.WordbooksCustom;
import com.englishload.service.CourseService;
import com.englishload.service.CourseUserService;
import com.englishload.service.GradecategoryCourseService;
import com.englishload.service.UserService;
import com.englishload.service.WordbooksService;



/**
 * @author Sarah
 * @date 2017年2月17日上午10:01:55
 * @filename UserSettingController.java
 * @description 
 */
@Controller
public class UserSettingController {
	@Autowired
	private WordbooksService wordbooksService;	
	@Autowired
	private CourseUserService courseUserService;	
	@Autowired
	private GradecategoryCourseService gradecategoryCourseService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private UserService userService;
	//返回到首页
	@RequestMapping("backToIndex")
	public String backToIndex(){
		return "forward:/index.jsp";
	}
	
	//获取登录用户生词本列表
	@RequestMapping("findUserWordbooksList")
	public ModelAndView findUserWordbooksList(){
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		int userId=activeUser.getUserid();
		List<WordbooksCustom> wordbooksCustomList=wordbooksService.findWordbooks(userId);
		ModelAndView mv =  new ModelAndView();
		mv.addObject("wordbooksCustomList", wordbooksCustomList);
		mv.setViewName("user/usersetting_wordbookslist");
		return mv;
	}
	//用户新建生词本
	@RequestMapping("userWordbooksAdd")
	public String userWordbooksAdd(WordbooksCustom wordbooksCustom){
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		int userId=activeUser.getUserid();
		wordbooksCustom.setUserId(userId);
		wordbooksService.createWordbooks(wordbooksCustom);
		return "redirect:findUserWordbooksList";
	}
	//获取登录用户浏览过的课程按日期降序排列
	@RequestMapping("findUserWatchCourse")
	public ModelAndView findUserWatchCourse(){
		Subject subject = SecurityUtils.getSubject();
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		int userId=activeUser.getUserid();
		List<Course> courseList=courseUserService.findUserWatchedCourse(userId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("courseList", courseList);
		mv.setViewName("user/usersetting_courses");
		return mv;
	}
	//设置当前登录用户信息
	@RequestMapping("userSetting")
	public ModelAndView userSetting(){
		Subject subject = SecurityUtils.getSubject();
		//取身份信息
	    ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		//通过model传到页面
	     User userselect=userService.findUserByName(activeUser.getUsername());
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",userselect);
		mv.setViewName("user/usersetting_changeinfo");
		return mv;
	}
	
	
	//更新用户名，手机号，邮箱，个人信息的一些信息
	@RequestMapping("userSettingCommit")
	public ModelAndView userSettingCommit(User user){
		Subject subject = SecurityUtils.getSubject();
		//取身份信息
	    ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		//通过model传到页面
	     User userselect=userService.findUserByName(activeUser.getUsername());
	     user.setId(userselect.getId());
	     user.setUsername(userselect.getUsername());
	     user.setPassword(userselect.getPassword());
	     user.setRoleId(userselect.getRoleId());
	     user.setSalt(userselect.getSalt());
	     userService.update(user);
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",userselect);
		mv.setViewName("user/usersetting_changeinfo");
		return mv;
	}
	
	//当前用户上传课程
	@RequestMapping("userUploadCourse")
	public ModelAndView userUploadCourse(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("user/usersetting_upload");
		return mv;
	}
	
	
	//当前用户上传课程
		@RequestMapping("userCourseUpload")
		public ModelAndView userCourseUpload(
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
			courseService.insertCourse(course);
			
			Subject subject = SecurityUtils.getSubject();
			ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
			int userId=activeUser.getUserid();
			CourseUser courseUser=new CourseUser();
			courseUser.setUserId(userId);
			//插入当前用户和课程之间的表
			courseUser.setCourseId(course.getCourseId());
			
			courseUserService.insertCourseUser(courseUser);
		
			//插入课程和等级gradecategoryCourse之间的表
			
			GradecategoryCourse gradecategoryCourse=new GradecategoryCourse();
			gradecategoryCourse.setCourseId(course.getCourseId());
			gradecategoryCourse.setGradeId(gradeId);
			gradecategoryCourseService.insertGradecategoryCourse(gradecategoryCourse);
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("user/usersetting_upload");
			return mv;
		}
		
		
	//用户修改密码
	@RequestMapping("userPasswordChange")
	public ModelAndView userPasswordChange(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("user/usersetting_changepwd");
		return mv;
	}
	
	//个人主页的修改用户密码的方法
	@RequestMapping("userPasswordChangeCommit")
	public ModelAndView userPasswordChangeCommit(User user){
		//从shiro的session中取activeUser
     	Subject subject = SecurityUtils.getSubject();
		//取身份信息
	    ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		//通过model传到页面
	     user.setId(activeUser.getUserid());
	     
	     User userselect=userService.findUserByName(activeUser.getUsername());
	     user.setEmail(userselect.getEmail());
	     user.setUsername(userselect.getUsername());
	     user.setPhone(userselect.getPhone());
	     user.setRoleId(userselect.getRoleId());
		userService.update(user);
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",userselect);
		mv.setViewName("user/usersetting_changepwd");
		return mv;
	}
	/**
	 * @author taojian
	 * @time 2017年2月17日下午4:50:51
	 * @methodname UserSettingController.java
	 * @descripe userwordbooks
	 */
	@RequestMapping("userwordbooks")
	public String userwordbooks(){
		return "wordbooks/wordbooks";
	}

}

