package com.englishload.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.exception.CustomException;
import com.englishload.po.ActiveUser;
import com.englishload.po.Bulletin;
import com.englishload.service.BulletinService;
import com.englishload.service.UserService;


/**
 * 
 * @author taojian
 * @time  2017年1月22日下午7:33:46
 * @ClassName LoginController.java
 * @description 用户的登录和退出,退出的方法在shiro的配置文件中配置了，故可以不需要进行写的
 * 
 */
@Controller
public class LoginController {
	
	@Autowired
	private UserService UserService;
	@Autowired
	private BulletinService bulletinService;
	
	
	//用户登陆提交方法
	/**
	 * 
	 * @param session
	 * @param usercode 用户账号
	 * @param password 用户密码 
	 * @return
	 * @throws Exception
	 */
	
	//登陆提交地址，和applicationContext-shiro.xml中配置的loginurl一致
	@RequestMapping("login")
	public String login(HttpServletRequest request)throws Exception{

		//如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名
		String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
		//根据shiro返回的异常类路径判断，抛出指定异常信息
		if(exceptionClassName!=null){
			if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
				//最终会抛给异常处理器
				throw new CustomException("账号不存在");
			} else if (IncorrectCredentialsException.class.getName().equals(
					exceptionClassName)) {
				throw new CustomException("用户名/密码错误");
			} else {
				throw new Exception();//最终在异常处理器生成未知错误
			}
		}
		//此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径
		//登陆失败还到login页面
		return "forward:/index.jsp";
	}

	
	@RequestMapping("/loginvalue.action")
	public String first(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 从shiro的session中取activeUser
		Subject subject = SecurityUtils.getSubject();
		// 取身份信息
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		req.getSession().setAttribute("sessionUser", activeUser);
		//显示所有公告
		List<Bulletin> bulletinList=bulletinService.findAll();
		req.getSession().setAttribute("bulletinList",bulletinList);
		return "forward:/index.jsp";
	}
	
	@RequestMapping("headerValue")
	
	public String headerValue(Model model)throws Exception{
		
		//从shiro的session中取activeUser
		Subject subject = SecurityUtils.getSubject();
		//取身份信息
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		//通过model传到页面
		model.addAttribute("activeUser", activeUser);
		
		return "forward:front/header.jsp";
	}
	
	@RequestMapping("/admindex")
	
	public String admindex(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 从shiro的session中取activeUser
		Subject subject = SecurityUtils.getSubject();
		// 取身份信息
		ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
		req.getSession().setAttribute("sessionUser", activeUser);
		return "/admin/index";
	}
	

}
