<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">로고</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	
        <li class="dropdown" style="text-align: center;">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 300px;">공지사항</a>
          <ul class="dropdown-menu"  style="width: 300px; text-align: center;">
            <li><a href="#">공지사항</a></li>
            <li><a href="#">요청게시판</a></li>
            <li><a href="#">QnA</a></li>
          </ul>
        </li>
        <li style="text-align: center;"><a href="userlist.do" style="width: 300px;">회원관리</a></li>
        <li style="text-align: center;"><a href="#" style="width: 300px;">신고관리</a></li>
        <li class="dropdown"  style="text-align: center;">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 300px;">통계</a>
          <ul class="dropdown-menu" style="width: 300px; text-align: center;">
            <li><a href="#">총수익</a></li>
            <li><a href="#">거래내역</a></li>
          </ul>
        </li>
        <li><font color="white" style="border: medium;">관리자 페이지 접속중</font></li>
      </ul>
      
    </div>
  </div>
</nav>