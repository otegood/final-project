package com.withmong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withmong.dao.BoardDao;
import com.withmong.model.Notice;

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

}
