package com.englishload.service.impl;

import java.util.List;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.englishload.mapper.CommentMapper;
import com.englishload.mapper.CourseUserMapper;
import com.englishload.mapper.PermissionMapperCustom;
import com.englishload.mapper.UserMapper;
import com.englishload.mapper.WordbooksMapper;
import com.englishload.mapper.WordbooksWordsMapper;
import com.englishload.po.Permission;
import com.englishload.po.User;
import com.englishload.po.UserExample;
import com.englishload.service.UserService;
import com.englishload.util.BeanUtil;
import com.englishload.util.PagedResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private CommentMapper commentMapper;
	@Autowired
	private WordbooksWordsMapper wordbooksWordsMapper;
	@Autowired
	private WordbooksMapper wordbooksMapper;
	@Autowired
	private CourseUserMapper courseUserMapper;
	@Autowired
	private PermissionMapperCustom permissionMapperCustom;
	
	/**
	 * 
	 * @author taojian
	 * @time  2017年1月22日下午1:29:33
	 * @ClassName add(User user)
	 * @description 增加md5加密，加密后的密码存放在数据库
	 * @version  第二次修改的时候，将用户的密码和盐进行Md5散列，这样更加确保密码的安全性。
	 */
	public void add(User user) {

		//原始 密码 ,这是在页面上获取
		String source = user.getPassword();
		//盐
		String salt = user.getSalt();
		//散列次数
		int hashIterations = 1;
		
		//构造方法中：
		//第一个参数：明文，原始密码 
		//第二个参数：盐，通过使用随机数
		//第三个参数：散列的次数，比如散列两次，相当 于md5(md5(''))
		Md5Hash md5Hash = new Md5Hash(source, salt, hashIterations);
		
		String password_md5 =  md5Hash.toString();
		System.out.println(password_md5);
	
		user.setPassword(password_md5);
		//md5加密密码
		/*String  password_md5=MD5.md5crypt(user.getPassword());
		user.setPassword(password_md5);
*/		userMapper.add(user);
	}

	public void update(User user) {

		//原始 密码 ,这是在页面上获取
		String source = user.getPassword();
		//盐
		String salt = user.getSalt();
		//散列次数
		int hashIterations = 1;
		
		//构造方法中：
		//第一个参数：明文，原始密码 
		//第二个参数：盐，通过使用随机数
		//第三个参数：散列的次数，比如散列两次，相当 于md5(md5(''))
		Md5Hash md5Hash = new Md5Hash(source, salt, hashIterations);
		
		String password_md5 =  md5Hash.toString();
		System.out.println(password_md5);
	
		user.setPassword(password_md5);
		userMapper.update(user);
	}

	public void delete(Integer id) {
		commentMapper.deleteByUserId(id);
		wordbooksWordsMapper.deleteByUserId(id);
		wordbooksMapper.deleteByUserId(id);
		courseUserMapper.deleteByUserId(id);
		userMapper.delete(id);
	}
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public User findByID(Integer id) {
		return userMapper.findByID(id);
	}
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<User> findAll() {
		return userMapper.findAll();
	}

	public User findUserByName(String username) {

		return userMapper.findUserByName(username);
	}
//根据用户名模糊查询
	public List<User> findUserByParName(String parName) {
		return userMapper.findUserByParName(parName);
	}

	@Override
	public List<Permission> findMenuListByUserId(int userid) throws Exception {
	
				
			return permissionMapperCustom.findMenuListByUserId(userid);
		}

	@Override
	public List<Permission> findPermissionListByUserId(int userid) throws Exception {
		// TODO Auto-generated method stub
		return permissionMapperCustom.findPermissionListByUserId(userid);
	}


	//根据用户账号查询用户信息
		public User findSysUserByUserCode(String username)throws Exception{
			UserExample userExample = new UserExample();
		    UserExample.Criteria criteria = userExample.createCriteria();
		    //如果相等的时候就List
		    criteria.andUsernameEqualTo(username);
		
			
			List<User> list = userMapper.selectByExample(userExample);
			
			if(list!=null && list.size()==1){
				return list.get(0);
			}	
			
			return null;
		}

		public PagedResult<User> queryByPage(String userName,Integer pageNo,Integer pageSize ) {
			pageNo = pageNo == null?1:pageNo;
			pageSize = pageSize == null?10:pageSize;
			PageHelper.startPage(pageNo,pageSize);  //startPage是告诉拦截器说我要开始分页了。分页参数是这两个。
			return BeanUtil.toPagedResult(userMapper.selectUserByUserName(userName));
		}

		@Override
		public List<User> selectUserByUserName(String username) {
			// TODO Auto-generated method stub
			return userMapper.selectUserByUserName(username);
		}

	

}
