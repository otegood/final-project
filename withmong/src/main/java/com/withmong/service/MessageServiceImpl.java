package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withmong.dao.MessageDao;
import com.withmong.model.Message;

@Service
public class MessageServiceImpl implements MessageService{

	@Autowired
	private MessageDao messageDao;
	
	@Override
	public List<Message> getAllMessages(String receiver) {
		List<Message> messageList = messageDao.getMessages(receiver);
		return messageList;
	}

	@Override
	public List<Message> getOnebyone(String receiver) {
		List<Message> onebyoneList = messageDao.getOnebyone(receiver);
		return onebyoneList;
	}

	@Override
	public void addFirstMessage(Message message) {
		messageDao.firstMessage(message);		
	}
	
}
