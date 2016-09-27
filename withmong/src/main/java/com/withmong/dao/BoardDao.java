package com.withmong.dao;

import java.util.List;

import com.withmong.model.Notice;

public interface BoardDao {
	
	// 공지사항 목록
	List<Notice> noticeList();
	// 공지사항 등록
	void addNotice(Notice notice);
	// 공지사항 상세
	Notice noticeDetail(int no);
	
}
