package com.zmj.wine.service.impl;

import com.zmj.wine.dao.UsersMapper;
import com.zmj.wine.entity.Users;
import com.zmj.wine.service.UsersService;
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
 * @athor
 * 后台用户
 **/
@Service
@Transactional
public class UsersServiceImpl implements UsersService{

    @Resource
    private UsersMapper usersMapper;

    //查询所有后台用户的信息
    public List<Users> findAllUsers(){
        return  usersMapper.findAllUsers();
    }

    @Override
    public PageBean<Users> queryUsersByPage(int currentPage) {
        int sum = usersMapper.selectUsersNum();
        int size = SystemUtils.USER_SIZE;
        int pageNum =sum%size== 0?sum/size:sum/size+1;
        List<Users> users = usersMapper.selectUsersByPage
                ((currentPage - 1) * size, size);
        PageBean pageBean = new PageBean();
        pageBean.setSum(sum);
        pageBean.setCurrentPage(currentPage);
        pageBean.setTotalPage(pageNum);
        pageBean.setData(users);

        return pageBean;
    }

    @Override
    public int queryUsersNum() {
        return usersMapper.selectUsersNum();
    }

    //后台添加管理员
    @Override
    public int addUsers(Users users) {
        return usersMapper.insertSelective(users);
    }

    //后台删除管理员
    @Override
    public int deleteUser(int id) {
        return usersMapper.deleteByPrimaryKey(id);
    }

    //登录
    @Override
    public void login(String userMobile, String userPassword) throws AuthenticationException {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(userMobile,userPassword);
        subject.login(usernamePasswordToken);
    }
}
