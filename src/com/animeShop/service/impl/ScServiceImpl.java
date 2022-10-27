package com.animeShop.service.impl;

import com.animeShop.base.BaseDao;
import com.animeShop.base.BaseServiceImpl;
import com.animeShop.mapper.ScMapper;
import com.animeShop.po.Sc;
import com.animeShop.service.ScService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScServiceImpl extends BaseServiceImpl<Sc> implements ScService {

    @Autowired
    private ScMapper scMapper;

    @Override
    public BaseDao<Sc> getBaseDao() {
        return scMapper;
    }
}
