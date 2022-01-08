package com.xu.dao;

import com.xu.pojo.User;

public interface UserMapper {

    int addUser(User user);

    User queryUserByNameAndPassword(User user);
}
