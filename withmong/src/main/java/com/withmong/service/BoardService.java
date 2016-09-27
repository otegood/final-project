package com.withmong.service;

import java.util.List;

import com.withmong.model.Notice;

public interface BoardService {
	// 공지사항 목록
	List<Notice> noticeList();
	// 공지사항 등록
	void addNotice(Notice notice);
}
