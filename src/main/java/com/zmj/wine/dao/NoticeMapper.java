package com.zmj.wine.dao;

import com.zmj.wine.entity.Notice;
import org.springframework.stereotype.Repository;

@Repository
public interface NoticeMapper {
    int deleteByPrimaryKey(Integer noticeId);

    int insert(Notice record);

    int insertSelective(Notice record);

    Notice selectByPrimaryKey(Integer noticeId);

    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKey(Notice record);
}