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
      <a class="navbar-brand" href="mmain.do">관리자메인</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	
        <li class="dropdown" style="text-align: center;">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 300px;">공지사항</a>
          <ul class="dropdown-menu"  style="width: 300px; text-align: center;">
            <li><a href="noticelist.do">공지사항</a></li>
            <li><a href="requestlist.do">요청게시판</a></li>
            <li><a href="qnalist.do">QnA</a></li>
          </ul>
        </li>
        <li class="dropdown" style="text-align: center;">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 300px;">회원관리</a>
          <ul class="dropdown-menu"  style="width: 300px; text-align: center;">
            <li><a href="userlist.do">회원목록</a></li>
            <li><a href="#">신고목록</a></li>
            <li><a href="allPointList.do">충전내역</a></li>
          </ul>
        </li>
        <li class="dropdown"  style="text-align: center;">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 300px;">상품관리</a>
          <ul class="dropdown-menu" style="width: 300px; text-align: center;">
          	<li><a href="allProductList.do">상품목록</a></li>
            <li><a href="#">거래내역</a></li>
          </ul>
        </li>
        <li><a href="#"  style="text-align: center;width: 300px;" >통계자료</a></li>
        <li>
        	<a href="logout.do">
        		<font color="white" style="border: medium;">
        			관리자 페이지 로그아웃 <span class="glyphicon glyphicon-log-out"></span>
        		</font>
        	</a>
        </li>
      </ul>
      
    </div>
  </div>
</nav>