package com.wkj.service;

import com.wkj.pojo.Message;

import java.util.List;

public interface MessageService {
    public int insertMessage(Message message);

    public int deleteMessage(int id);

    public List<Message> messageList();
}
