package com.animeShop.service.impl;

import com.animeShop.base.BaseDao;
import com.animeShop.base.BaseServiceImpl;
import com.animeShop.mapper.MessageMapper;
import com.animeShop.po.Message;
import com.animeShop.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl extends BaseServiceImpl<Message> implements MessageService {

    @Autowired
    private MessageMapper messageMapper;

    @Override
    public BaseDao<Message> getBaseDao() {
        return messageMapper;
    }
}
