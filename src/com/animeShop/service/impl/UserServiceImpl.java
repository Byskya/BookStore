package com.animeShop.service.impl;

import com.animeShop.base.BaseDao;
import com.animeShop.base.BaseServiceImpl;
import com.animeShop.mapper.UserMapper;
import com.animeShop.po.User;
import com.animeShop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public BaseDao<User> getBaseDao() {
        return userMapper;
    }
}
