package com.englishload.mapper;

import com.englishload.po.Bulletin;
import com.englishload.po.BulletinExample;
import com.englishload.po.User;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BulletinMapper {
    int countByExample(BulletinExample example);

    int deleteByExample(BulletinExample example);

    /*
     * 根据id删除指定的公告
     */
    int deleteByPrimaryKey(Integer bulletinId);

    int insert(Bulletin record);

    int insertSelective(Bulletin record);

    List<Bulletin> selectByExample(BulletinExample example);

    Bulletin selectByPrimaryKey(Integer bulletinId);

    int updateByExampleSelective(@Param("record") Bulletin record, @Param("example") BulletinExample example);

    int updateByExample(@Param("record") Bulletin record, @Param("example") BulletinExample example);

    int updateByPrimaryKeySelective(Bulletin record);

    int updateByPrimaryKey(Bulletin record);
    /**
     * 此方法对应于数据库中的表 ,bulletin
     * 查询所有数据库记录
     */
	List<Bulletin> findAll();
	//模糊搜索
	List<Bulletin> selectByBulletinParName(@Param("title") String title);
}