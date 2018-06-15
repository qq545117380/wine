package com.zmj.wine.service.impl;

import com.zmj.wine.dao.MyLogMapper;
import com.zmj.wine.entity.MyLog;
import com.zmj.wine.service.BackLogService;
import com.zmj.wine.utils.PageBean;
import com.zmj.wine.utils.SystemUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import sun.rmi.runtime.Log;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @athor hutao
 **/
@Service
@Transactional
public class BackLogServiceImpl implements BackLogService {
    @Resource
    private MyLogMapper myLogMapper;

    //用户登录添加系统日志
    @Override
    public int addLoginLog(MyLog myLog) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String format1 = format.format(date);
        myLog.setLogTime(format1);
        myLog.getLogTime();

        return myLogMapper.insert(myLog);
    }

    @Override
    public PageBean<MyLog> queryLogByPage(int page) {
        int sum = myLogMapper.selectLogNum();
        int size = SystemUtils.USER_SIZE;
        int pageNum=sum % size == 0 ? sum/size:sum/size+1;
        List<Log> logs = myLogMapper.selectLogByPage
                ((page - 1) * size, size);
        PageBean pageBean = new PageBean();
        pageBean.setCurrentPage(page);
        pageBean.setTotalPage(pageNum);
        pageBean.setData(logs);
        pageBean.setSum(sum);
        return pageBean;
    }


}
