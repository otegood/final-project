package com.withmong.service;

import java.util.List;

import com.withmong.model.Message;

public interface MessageService {
	
	// 메세지 목록조회
	List<Message> getAllMessages(String receiver);
	
	// 1:1메세지 리스트
	List<Message> getOnebyone(String receiver);

	// 쪽지보내기
	void addFirstMessage(Message message);
	
}