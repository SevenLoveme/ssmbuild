package com.xu.service.impl;

import com.xu.dao.BookMapper;
import com.xu.dao.UserMapper;
import com.xu.pojo.User;
import com.xu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{


    @Autowired
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public User queryUserByNameAndPassword(User user) {
        return userMapper.queryUserByNameAndPassword(user);
    }

}
