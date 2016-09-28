package com.withmong.dao;

import java.util.List;

import com.withmong.model.Notice;
import com.withmong.model.Request;

public interface BoardDao {
	
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
	// 요청게시판 목록
	List<Request> requestList();
	// 요청게시글 등록
	void addRequest(Request request);
}
