package com.animeShop.service.impl;

import com.animeShop.base.BaseDao;
import com.animeShop.base.BaseServiceImpl;
import com.animeShop.mapper.ItemOrderMapper;
import com.animeShop.po.ItemOrder;
import com.animeShop.service.ItemOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemOrderServiceImpl extends BaseServiceImpl<ItemOrder> implements ItemOrderService {

    @Autowired
    private ItemOrderMapper itemOrderMapper;

    @Override
    public BaseDao<ItemOrder> getBaseDao() {
        return itemOrderMapper;
    }
}
