package com.zmj.wine.service;

import com.zmj.wine.entity.Content;

import java.util.List;

public interface IContentService {
    Content selectByPrimaryKey(Integer contentId);

    //查询所有净含量组
    List<Content> selectAllByKindId(Integer kindId);
}
