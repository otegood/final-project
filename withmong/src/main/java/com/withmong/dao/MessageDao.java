package com.withmong.dao;

import java.util.List;

import com.withmong.model.Message;


public interface MessageDao {
		
	// 매세지 리스트
	List<Message> getMessages(String receiver);
	
	// 1:1메세지
	List<Message> getOnebyone(String receiver);
	
	// 첫 쪽지 보내기
	void firstMessage(Message message);
		
}
