package com.withmong.dao;

import java.util.List;

import com.withmong.model.Message;


public interface MessageDao {
	
	// 메세지 생성
	void insertMessage(Message message);
	
	// 매세지 리스트
	List<Message> getMessages();
	
	// 메세지 상세
	Message getMessageByReceiver(String id);
	
}
