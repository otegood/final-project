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
	//메세지 목록조회
	@Override
	public List<Message> getAllMessages(String user) {
		List<Message> messageList = messageDao.getMessages(user);
		return messageList;
	}
	// 1:1메세지 리스트
	@Override
	public List<Message> getOnebyone(String user) {
		List<Message> onebyoneList = messageDao.getOnebyone(user);
		return onebyoneList;
	}
	// 쪽지보내기
	@Override
	public void addFirstMessage(Message message) {
		messageDao.firstMessage(message);		
	}
	
}