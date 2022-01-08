package com.xu.service;

import com.xu.pojo.User;

public interface UserService {

    public int addUser(User user);

    public User queryUserByNameAndPassword(User user);
}
