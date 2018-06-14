package com.zmj.wine.service;

import com.zmj.wine.entity.MyLog;
import com.zmj.wine.utils.PageBean;

/**
 * @athor hutao
 * 后台添加日志业务
 **/
public interface BackLogService {

    //后台用户登录 添加日志
   int addLoginLog(MyLog myLog);

   //后台分页查询日志
    PageBean<MyLog> queryLogByPage(int page);


}
