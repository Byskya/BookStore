package com.animeShop.service.impl;

import com.animeShop.base.BaseDao;
import com.animeShop.base.BaseServiceImpl;
import com.animeShop.mapper.ManageMapper;
import com.animeShop.po.Manage;
import com.animeShop.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManageServiceImpl extends BaseServiceImpl<Manage> implements ManageService {
    @Autowired
    ManageMapper manageMapper;

    @Override
    public BaseDao<Manage> getBaseDao() {
        return manageMapper;
    }
}
