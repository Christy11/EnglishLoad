package com.englishload.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.Article;
import com.englishload.po.Bulletin;
import com.englishload.po.Course;
import com.englishload.po.User;
import com.englishload.service.BulletinService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Controller
@RequestMapping(value="/bulletin")
public class ButtletinController {
	
	@Autowired
	private BulletinService bulletinService;
	/**
	 * 
		 * @author Administrator
		 * @time 2017年1月15日
		 * @methodname bulletinList
		 * @descripe 获取公告信息列表
	 */
	
	//点击前台的公告管理,跳转到首页，显示所有的公告
	@RequestMapping(value="/bulletinList")
	public String bulletinIndexShow(Model model)throws Exception{
		List<Bulletin> bulletinList=bulletinService.findAll();
		ModelAndView mv=new ModelAndView();
		model.addAttribute("bulletinList",bulletinList);
		return "forward:/index.jsp";
	}
	//根据前台模糊搜素，进行筛选跳转
			@RequestMapping("/fowardParBulletin")
			public ModelAndView fowardParBulletin(@RequestParam(value = "title") String title)throws Exception{
				List<Bulletin> bulletinList=bulletinService.selectByBulletinParName(title);
				ModelAndView mv=new ModelAndView();
				mv.addObject("bulletinList",bulletinList);
				mv.setViewName("bulletin/bulletinShow");		
				return mv;	
			}
	
	//前台点击更多的公告的链接后，跳转到bulletinShow.jsp,有分页的功能
		@RequestMapping(value="/showAllBulletin")
		public ModelAndView bulletinAll(@RequestParam(required=true,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="10") Integer pageSize){
			PageHelper.startPage(page, pageSize);
			List<Bulletin> bulletinList=bulletinService.findAll();
			PageInfo<Bulletin> pageInfo=new PageInfo<Bulletin>(bulletinList);
			ModelAndView mv=new ModelAndView();
			mv.addObject("bulletinList",bulletinList);
			mv.addObject("page", pageInfo);
			mv.setViewName("bulletin/bulletinShow");
			return mv;
		}
	
	// 后台点击修改后，重新定位到BulletinController包的forwardBulletin，重新刷新页面
		@RequestMapping(value="/addBulletin")
	public String addBulletin(@RequestParam(value = "title") String title,
			@RequestParam(value = "content") String content) {
		Bulletin bulletin = new Bulletin();
		bulletin.setTitle(title);
		bulletin.setContent(content);
		Date date = new Date(System.currentTimeMillis());
		bulletin.setDate(date);
		bulletinService.add(bulletin);
		return "redirect:/fowardBulletin";
	}
	
	//后台点击删除后，重新定位到BulletinController包的forwardBulletin，重新刷新页面
	@RequestMapping(value = "/deleteBulletin")
	public String  deleteBulletin(@RequestParam(value = "id") Integer id){
		bulletinService.delete(id);
		return "redirect:/fowardBulletin";
	}

	//点击前台页面的一条公告，根据指定id查看一条公告,跳转到bulletinList.jsp页面
		@RequestMapping(value="/showBulletin")
		public ModelAndView  buttletinDel(HttpServletRequest request){
			//将bulletinId转化为integer类型
			String id=request.getParameter("id");
			int bulletinId =Integer.parseInt(id);	
			Bulletin bulletin=bulletinService.findByID(bulletinId);
			ModelAndView mv=new ModelAndView();
			mv.addObject("bulletin",bulletin);
			mv.setViewName("bulletin/bulletinList");		
			return mv;
		}
		//跳转到前台关于页面，显示所有的公告
		@RequestMapping(value="/about")
		public String bulletinAboutShow(Model model)throws Exception{
		//随机产生一篇文章
		List<Bulletin> bulletinList=bulletinService.findAll();
		model.addAttribute("bulletinList",bulletinList);
		return "forward:/front/about.jsp";
					
		}
		//后台点击修改后，重新定位到BulletinController包的forwardBulletin，重新刷新页面
		@RequestMapping(value="/updateBulletin")
		public String  updateBulletin(@RequestParam(value = "id") Integer id,@RequestParam(value = "title") String title,@RequestParam(value = "content") String content){
			Bulletin bulletin = new Bulletin();
			bulletin.setTitle(title);
			bulletin.setContent(content);
			Date date = new Date(System.currentTimeMillis());
			bulletin.setDate(date);
			bulletin.setBulletinId(id);
			bulletinService.update(bulletin);
			return "redirect:/fowardBulletin";
		}
		
		//显示所有信息,跳转到后台的单独的一个页面
		@RequestMapping(value="/bulletinShow")
		public ModelAndView bulletinShow(){
			List<Bulletin> bulletinList=bulletinService.findAll();
			ModelAndView mv=new ModelAndView();
			mv.addObject("bulletinList",bulletinList);
			mv.setViewName("admin/bulletin");
			return mv;
		}
		//跳转到后台修改的页面，将指定id的公告信息查询显示出来，修改后，跳转到更新页面
		@RequestMapping(value = "/bulletinEdit")
		public ModelAndView editLoad(@RequestParam(value = "id") Integer id){
			Bulletin bulletin=bulletinService.findByID(id);
			ModelAndView mv = new ModelAndView();
			mv.addObject("bulletin", bulletin);
			mv.setViewName("bulletin/bulletinEdit");
			return mv;
		}
		
		
		
}
