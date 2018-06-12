package com.zmj.wine.service.impl;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.zmj.wine.dao.ContentMapper;
import com.zmj.wine.entity.Content;
import com.zmj.wine.entity.Price;
import com.zmj.wine.service.IContentService;
import com.zmj.wine.utils.RedisUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class ContentServiceImpl implements IContentService{
    @Resource
    private ContentMapper contentDAO;

    @Resource
    private RedisUtil redisUtil;

    @Override
    public Content selectByPrimaryKey(Integer contentId) {
        Gson gson = new Gson();
        String key="content"+contentId.toString();
        Content content;
        try {
            //通过key取redis内的对象字符串，再转换为对象
            content = JSON.parseObject(redisUtil.get(key).toString(), Content.class);
        }catch (NullPointerException e1){
            synchronized (key){
                try{
                    content = JSON.parseObject(redisUtil.get(key).toString(), Content.class);
                }catch (NullPointerException e2){
                    content = contentDAO.selectByPrimaryKey(contentId);                    //gson.toJson(item)  转化为json字符串
                    redisUtil.set(key,gson.toJson(content));
                }
            }
        }
        return content;
    }

    @Override
    public List<Content> selectAllByKindId(Integer kindId) {
        List<Content> contentList = contentDAO.selectAllByKindId(kindId);
        return contentList;
    }


}
