package com.withmong.service;

import java.util.List;

import com.withmong.model.Message;

public interface MessageService {
	
	// 메세지 작성하기
	void addNewMessage(Message message);
	
	// 메세지 목록조회
	List<Message> getAllMessages();
	
	// 메세지 보기
	Message getMessageDetail(String receiver);
	
}
