package com.englishload.mapper;

import com.englishload.po.User;
import com.englishload.po.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
	//根据用户名进行查找
	public User findUserByName(@Param("username") String username);
	
	 /**
     * 此方法对应于数据库中的表 ,user
     * 新写入数据库记录
     * @param record
     */
	void add(User user);
	 /**
     * 此方法对应于数据库中的表 ,user
     * 根据主键来更新符合条件的数据库记录
     *
     * @param record
     */
	void update(User user);
	 /**
     * 此方法对应于数据库中的表 ,user
     * 根据主键删除数据库的记录
     *
     * @param id
     */
	void delete(Integer id);
	
	 /**
     * 此方法对应于数据库中的表 ,user
     * 根据指定主键获取一条数据库记录
     *
     * @param id
     */
	User findByID(Integer id);
	/**
     * 此方法对应于数据库中的表 ,user
     * 查询所有数据库记录
     */
	List<User> findAll();
	//根据用户名进行模糊查找
	public List<User> findUserByParName(@Param("username") String username);
	//根据用户名进行查询
	List<User> selectUserByUserName(@Param("username") String username);  
	
	 int countByExample(UserExample example);

	    int deleteByExample(UserExample example);

	    int deleteByPrimaryKey(Integer id);

	    int insert(User record);

	    int insertSelective(User record);

	    List<User> selectByExample(UserExample example);

	    User selectByPrimaryKey(Integer id);

	    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

	    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

	    int updateByPrimaryKeySelective(User record);

	    int updateByPrimaryKey(User record);
}