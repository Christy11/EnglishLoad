package com.englishload.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.englishload.mapper.BulletinMapper;
import com.englishload.po.Bulletin;
import com.englishload.service.BulletinService;




@Service
public class BulletinServiceImpl implements BulletinService {
	@Autowired
	private BulletinMapper bulletinMapper;
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public void add(Bulletin bulletin) {
		bulletinMapper.insert(bulletin);
		
	}
	//更新指定的公告
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public void update(Bulletin bulletin) {
		bulletinMapper.updateByPrimaryKey(bulletin);
		
	}
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		bulletinMapper.deleteByPrimaryKey(id);
	}

	public Bulletin findByID(Integer id) {
		// TODO Auto-generated method stub
		return bulletinMapper.selectByPrimaryKey(id);
	}

	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<Bulletin> findAll() {
		return bulletinMapper.findAll();
	}
	@Override
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<Bulletin> selectByBulletinParName(String title) {
		// TODO Auto-generated method stub
		return bulletinMapper.selectByBulletinParName(title);
	}

}
