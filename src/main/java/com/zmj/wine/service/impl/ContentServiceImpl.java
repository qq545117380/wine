package com.zmj.wine.service.impl;

import com.zmj.wine.dao.ContentMapper;
import com.zmj.wine.entity.Content;
import com.zmj.wine.service.IContentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class ContentServiceImpl implements IContentService{
    @Resource
    private ContentMapper contentDAO;
    @Override
    public Content selectByPrimaryKey(Integer contentId) {
        return null;
    }

    @Override
    public List<Content> selectAllByKindId(Integer kindId) {
        List<Content> contentList = contentDAO.selectAllByKindId(kindId);
        return contentList;
    }


}
