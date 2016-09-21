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
	public void addNewMessage(Message message) {
		messageDao.insertMessage(message);
	}

	@Override
	public List<Message> getAllMessages() {
		List<Message> messageList = messageDao.getMessages();
		return messageList;
	}

	@Override
	public Message getMessageDetail(String Receiver) {
		return messageDao.getMessageByReceiver(Receiver);
	}
	
}
