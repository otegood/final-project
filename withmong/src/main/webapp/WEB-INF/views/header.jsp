<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
   
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="row">
    	<div class="col-sm-2">
    		 <div class="navbar-header">
      			<a class="navbar-brand" href="#"><img id="logo" src="">로고</a>
    		 </div>
    	</div>
    	
    	<div class="col-sm-10">
    	
    	 <div style="height: 40px;">
    		<form class="navbar-form navbar-left" action="#" style="margin-left: 200px;">
		         <input type="text" class="form-control" placeholder="검색">
		       <button type="submit" class="btn btn-default">검색</button>
		     </form>
	      <ul class="nav navbar-nav navbar-right" style="margin-top: 10px;">
	        <c:choose>
	 			<c:when test="${empty LOGIN_USER }">
		   			<span class="${current_page eq 'register' ? 'active' : '' }"><a href="register.do"><span class="glyphicon glyphicon-user"></span> 회원가입</a></span>
		   			<span class="${current_page eq 'login' ? 'active' : '' }"><a href="login.do"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></span>
	 			</c:when>
	 			<c:otherwise>
	 				<span><a href="#"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></span>
	 			</c:otherwise>
	 		</c:choose>
	      </ul>
    	 </div>
    	 <br />
    	 <div>
    	 	<ul class="nav navbar-nav" style="width: 100%;">
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 180px;">공지사항<span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="#">공지사항</a></li>
		      <li class="divider"></li>
		      <li><a href="#">요청게시판</a></li>
		      <li class="divider"></li>
		      <li><a href="#">QnA</a></li>
		      <li class="divider"></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 180px;">교육 <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="#">언어</a></li>
		      <li class="divider"></li>
		      <li><a href="#">수학</a></li>
		      <li class="divider"></li>
		      <li><a href="#">예체능</a></li>
		      <li class="divider"></li>
		      <li><a href="#">프로그램</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 180px;">취미 <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="#">게임</a></li>
		      <li class="divider"></li>
		      <li><a href="#">스터디</a></li>
		      <li class="divider"></li>
		      <li><a href="#">요리</a></li>
		      <li class="divider"></li>
		      <li><a href="#">여행</a></li>
		      <li class="divider"></li>
		      <li><a href="#">운동</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 180px;">대행서비스 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">마케팅</a></li>
	      <li class="divider"></li>
	      <li><a href="#">번역</a></li>
	      <li class="divider"></li>
	      <li><a href="#">문서작업</a></li>
	      <li class="divider"></li>
	      <li><a href="#">대필</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="width: 180px;">Other <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">상담</a></li>
          </ul>
        </li>
      </ul>
    	 </div>
    	 
    	</div>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</body>
</html>