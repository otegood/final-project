package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withmong.dao.BoardDao;
import com.withmong.model.Notice;
import com.withmong.model.Request;

@Service
public class BoardServiceImpl  implements BoardService{

	@Autowired private BoardDao boardDao;
	// 공지사항 목록
	@Override
	public List<Notice> noticeList() {
		return boardDao.noticeList();
	}
	// 공지사항 등록
	@Override
	public void addNotice(Notice notice) {
		boardDao.addNotice(notice);
	}
	// 공지사항 상세페이지
	@Override
	public Notice noticeDetail(int no) {
		return boardDao.noticeDetail(no);
	}
	// 공자사항 삭제
	@Override
	public void noticeDelete(int no) {
		boardDao.noticeDelete(no);
	}
	@Override
	public void updateNotice(Notice notice) {
		boardDao.updateNotice(notice);
	}
	@Override
	public List<Request> requestList() {
		return boardDao.requestList();
	}

}
