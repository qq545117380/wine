package com.zmj.wine.realm;
import com.zmj.wine.dao.UserMapper;
import com.zmj.wine.entity.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;

/**
 * 前端用户登录
 */
public class UserRealm extends AuthorizingRealm{
    @Override
    public String getName() {
        return "UserRealm";
    }

    @Resource
    private UserMapper userDAO;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //用来判断用户名和密码是否正确
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) token;
        //是用户输入的用户名
        String username = usernamePasswordToken.getUsername();

        //跟数据库的用户名进行对比
        User user = null;
        try {
            user = userDAO.selectByPrimaryKey(username);
        } catch (Exception e) {
            e.printStackTrace();

        }
        //判断用户名是否存在
        if (user == null) {
            throw new UnknownAccountException("没有用户名：" + username);
        }
        //判断密码
        //数据库的密码
        String dbPassword = user.getUserPassword();
        char[] tokenPassword = usernamePasswordToken.getPassword();
        String userPassword = new String(tokenPassword);
        if (null == dbPassword || !dbPassword.equals(userPassword)) {
            throw new IncorrectCredentialsException("密码错误，不是你的别乱试");
        }
        //验证用户名和密码成功，返回认证信息
        //参数1：用户名
        //参数2：密码
        //参数3：当前realm的名称
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(username, dbPassword, getName());
        // SecurityUtils.getSubject().getSession().setAttribute("","");
            return authenticationInfo;
    }
}
