package com.englishload.service;

import java.util.List;

import com.englishload.po.Bulletin;

public interface BulletinService {
	 	public void add(Bulletin bulletin);
		//更新指定的公告
		public void update(Bulletin bulletin);
		//根据id删除指定的公告
		public void delete(Integer id);
		//根据指定的id查看公告
		public Bulletin findByID(Integer id);
		//显示所有的公告信息列表
		public List<Bulletin> findAll();
		//根据标题，模糊搜索显示所需要的公告信息列表
		public List<Bulletin>selectByBulletinParName(String title);
}
