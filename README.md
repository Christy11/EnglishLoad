# EnglishLoad
实训-基于SSM框架的在线英语学习
注意点：
技术框架：Spring +SpringMVC+MyBatis+Shiro+BootStrap
jdk：1.81
Tomcat 8
Maven
github

#chenyinghui
修改记录：
1.将user表的username属性字段改成unique

#taojian
修改记录：
1.增加权限表，用户角色和权限之间的关联表，并修改了用户表的一些字段，增加了salt盐字段<br/>
2.修改用户增加功能，将用户的增加的密码和盐进行md5校验，并存放数据库中<br/>
3.shiro认证和授权的部分配置完成，目前后台登录，用户名taojian，密码111111<br/>
4，数据库表重新导入，授权部分利用注解的方式进行完成<br/>
5.修改生词本，根据用户登录，获取用户id,并自动查询用户的生词本。<br/>
6.用户自动登录记住我功能完成<br/>
7.session会话和ehcache缓存整合完善<br/>
8.分页pageHelper完成<br/>
9.增加课程的字段pic，修改用户更新功能<br/>
10.制作视频播放页面,个人用户页面<br/>
11.增加课程的courseintro字段,并修改逆向工程的代码。<br/>
12.shiro整合后台跳转页面。<br/>
13.课程视频播放，从数据库整合完成<br/>
14.前台登陆名zhangsan,密码111111，注册整合完成<br/>
15.课程上传功能完成<br/>
16.点击视频增加点击率，并按照人气排序。<br/>
