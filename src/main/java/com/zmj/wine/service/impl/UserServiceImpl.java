package com.zmj.wine.service.impl;

import com.zmj.wine.dao.UserMapper;
import com.zmj.wine.entity.User;
import com.zmj.wine.service.UserService;
import com.zmj.wine.utils.PageBean;
import com.zmj.wine.utils.SystemUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @athor hutao
 **/
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    //查询所有会员用户信息
    @Override
    public List<User> selectAllUser() {
        return userMapper.selectAllUser();
    }

    @Override
    public PageBean<User> queryUserByPage(int currentPage) {
        //查询用户的总数量
        int sum = userMapper.selectUserNum();
        int size =SystemUtils.USER_SIZE;//每页数量
        //进行页面总数计算
        int pageNum = sum % size == 0? sum/size :sum/size+1;
        //进行分页查询
        List<User> users = userMapper.selectUserByPage
                ((currentPage-1)*size, size);
        PageBean pageBean = new PageBean<>();
        pageBean.setTotalPage(pageNum);
        pageBean.setData(users);
        pageBean.setSum(sum);
        pageBean.setCurrentPage(currentPage);

        return pageBean;
    }
    //查询用户的总数量
    @Override
    public int queryUserNum() {
        return userMapper.selectUserNum();
    }

    //登录
    @Override
    public void login(String userMobile, String userPassword) throws AuthenticationException {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(userMobile,userPassword);
        subject.login(usernamePasswordToken);
    }
    //
    @Override
    public void save(String userMobile, String userPassword) {
        User user = new User();
        user.setUserMobile(userMobile);
        user.setUserPassword(userPassword);
        userMapper.insertUser(user);
    }

}
