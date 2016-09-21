package com.withmong.service;

import java.util.List;

import com.withmong.model.Message;

public interface MessageService {
	
	// 메세지 목록조회
	List<Message> getAllMessages();
	
	// 1:1메세지
	List<Message> getOnebyone();

	// 첫 쪽지날리기
	void addFirstMessage(Message message);
	
}
