package com.englishload.mapper;

import com.englishload.po.Bulletin;
import com.englishload.po.Comment;
import com.englishload.po.CommentCustom;
import com.englishload.po.CommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommentMapper {
    int countByExample(CommentExample example);

    int deleteByExample(CommentExample example);

    int deleteByPrimaryKey(Integer commentId);

   

    int insertSelective(Comment record);

    List<Comment> selectByExampleWithBLOBs(CommentExample example);

    List<Comment> selectByExample(CommentExample example);

    Comment selectByPrimaryKey(Integer commentId);

    int updateByExampleSelective(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByExampleWithBLOBs(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByExample(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKeyWithBLOBs(Comment record);

    int updateByPrimaryKey(Comment record);
    
    //根据user_id删除记录
    int deleteByUserId(Integer userId);
    //显示所有的评论信息,获得用户名和课程名称
    List<CommentCustom> findAll(int courseId);
    //增加一条记录
    int insert(Comment record);

}