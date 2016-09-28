package com.withmong.service;

import java.util.List;

import com.withmong.model.Notice;

public interface BoardService {
	// 공지사항 목록
	List<Notice> noticeList();
	// 공지사항 등록
	void addNotice(Notice notice);
	// 공지사항 상세
	Notice noticeDetail(int no);
	// 공지사항 삭제
	void noticeDelete(int no);
	// 공지사항 수정
	void updateNotice(Notice notice);
}
