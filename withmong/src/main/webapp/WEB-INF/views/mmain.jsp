<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	
	header {
		background-color: black;
	}

	.ex-company {
		color: white;
		top: 0; left: 0;
		border;
	}
	
	strong {
	color: yellow;
	top: 0; left: 0;
	}
	
	.navbar-form navbar-left {
		text-align: center;
	}
	
	#foot-alpabet {
		color: white; 
	}
	
	#logo {
		width: 156px;
		height: 75px;
		padding-bottom: 0px;
	}

	#footer {
		padding: 10px;
		background-color: black;
	}
	
	h2 {
		text-align: center;
	}
	#frames{
		height: 400px;
	}
</style>
<script type="text/javascript">
$(function(){
	$("#notices").click(function(){
		$("#notice").show(300, "swing");
		$("#request").hide(300);
		$("#qna").hide(300);
	});
	$("#requests").click(function(){
		$("#request").show(300, "swing");
		$("#notice").hide(300);
		$("#qna").hide(300);
	});
	$("#qnas").click(function(){
		$("#qna").show(300, "swing");
		$("#notice").hide(300);
		$("#request").hide(300);
	});
	
	$("#noticeChain tr").click(function(){
		$(location).attr('href', 'noticeDetail.do?no='+$(this).find("td:first").text());
	});
	$("#qnaChain tr").click(function(){
		$(location).attr('href', 'qnaDetail.do?no='+$(this).find("td:first").text());
	});
	$("#requestChain tr").click(function(){
		$(location).attr('href', 'requestDetail.do?no='+$(this).find("td:first").text());
	});
	
	$("#users").click(function(){
		$("#userlist").show(300, "swing");
		$("#rechargelist").hide(300);
		$("#reportlist").hide(300);
	});
	$("#reports").click(function(){
		$("#userlist").hide(300);
		$("#rechargelist").hide(300);
		$("#reportlist").show(300, "swing");
	});
	$("#recharges").click(function(){
		$("#userlist").hide(300);
		$("#rechargelist").show(300, "swing");
		$("#reportlist").hide(300);
	});
	
	$("#products").click(function(){
		$("#orderlist").hide(300);
		$("#productlist").show(300, "swing");
	});
	$("#orders").click(function(){
		$("#productlist").hide(300);
		$("#orderlist").show(300, "swing");
	});
	
});
</script>
<title>관리자 페이지</title>
</head>
<body>
	<header><%@ include file="mheader.jsp" %></header>
	
	<div class="container" style="margin-bottom: 30px;" >
		<div class="row col-sm-6" id="frames" style="margin: auto;">
			<h2>게시판 관리</h2>
			<div style="text-align: right">
				<a class="btn btn-xs btn-default" id="notices">공지사항</a>
				<a class="btn btn-xs btn-default" id="requests">요청게시판</a>
				<a class="btn btn-xs btn-default" id="qnas">Q&A</a>
			</div>
			
			<div>
			<!-- 공지사항 -->
				<div id="notice" >
					<table class="table table-hover">
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>게시일</th>
							</tr>
						</thead>
						<tbody  id="noticeChain">
							<c:forEach var="n" items="${noticelist }" begin="0" end="6">
								<tr>
									<td>${n.no }</td>
									<td>${n.title }</td>
									<td><fmt:formatDate value="${n.regdate }" pattern="yyyy.MM.dd"/></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			<!-- 요청게시판 -->
				<div id="request"  style="display: none;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>게시자</th>
								<th>게시일</th>
								<th>삭제유무</th>
							</tr>
						</thead>
						<tbody id="requestChain">
							<c:forEach var="r" items="${requestlist }" begin="0" end="6">
								<c:if test="${r.delCheck eq 'Y' }">
									<tr class="danger">
								</c:if>
								<c:if test="${r.delCheck eq 'N' }">
									<tr>
								</c:if>
								<td>${r.no }</td>
								<td>${r.title }</td>
								<td>${r.userId.id}</td>
								<td><fmt:formatDate value="${r.regdate }"
										pattern="yyyy.MM.dd" /></td>
								<td>${r.delCheck }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			<!-- QnA게시판 -->
				<div id="qna"  style="display: none;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>게시자</th>
								<th>게시일</th>
								<th>삭제유무</th>
							</tr>
						</thead>
						<tbody id="qnaChain">
							<c:forEach var="q" items="${qnalist }"  begin="0" end="6">
								<c:if test="${q.delCheck eq 'Y' }">
									<tr class="danger">
								</c:if>
								<c:if test="${q.delCheck eq 'N' }">
									<tr>
								</c:if>
										<td>${q.no }</td>
										<td>${q.title }</td>
										<td>${q.userId.id}</td>
										<td><fmt:formatDate value="${q.regdate }" pattern="yyyy.MM.dd" /></td>
										<td>${q.delCheck }</td>
									</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
			
		<div class="row col-sm-6" id="frames" style="margin: auto;">
			<h2>회원 관리</h2>
			<div style="text-align: right">
				<a class="btn btn-xs btn-info" id="users">회원목록</a>
				<a class="btn btn-xs btn-info" id="reports">신고내역</a>
				<a class="btn btn-xs btn-info" id="recharges">충전내역</a>
			</div>
	
			<div>
			<!-- 회원목록 -->
				<div id="userlist" class="panel panel-boby">
					<table class="table">
						<thead>
							<tr>
								<th>계정</th>
								<th>이름</th>
								<th>생년월일</th>
								<th>성별</th>
								<th>포인트</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="users" items="${userList }" begin="0" end="6">
							<tr>
								<td>
									<c:choose>
										<c:when test="${users.id ne 'king' }">
											<a class="btn btn-info btn-xs" href="userdetailm.do?id=${users.id}">${users.id }</a>
										</c:when>
										<c:otherwise>
											${users.id }
										</c:otherwise>
									</c:choose>
								</td>
								<td>${users.name }</td>
								<td><fmt:formatDate value="${users.birth }" pattern="yyyy.MM.dd"/></td>
								<td>${users.gender }</td>
								<td>${users.point }</td>
							</tr>	
						</c:forEach>
						</tbody>
					</table>
				</div>
			<!-- 충전내역 -->
				<div id="rechargelist" style="display: none;">
					<table class="table">
						<tr>
							<th>회원 ID</th>
							<th>충전 Point</th>
							<th>출금 Point</th>
							<th>날짜</th>
						</tr>
						<c:forEach var="point" items="${pointList}" begin="0" end="6">
							<tr>
								<td>${point.userid.id }</td>
								<td><fmt:formatNumber value="${point.charge }" type="number"></fmt:formatNumber></td>
								<td><fmt:formatNumber value="${point.withdraw }" type="number"></fmt:formatNumber></td>
								<td><fmt:formatDate value="${point.regdate }" pattern="yyyy.MM.dd hh:mm:ss" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!-- 신고목록 -->
				<div id = "reportlist" style="display: none;">
				</div>	
			</div>
		</div>
		
		<div class="row col-sm-6" id="frames" style="margin: auto;">
			<h2>상품 관리</h2>
			<div style="text-align: right">
				<a class="btn btn-xs btn-danger" id="products">상품목록</a>
				<a class="btn btn-xs btn-danger" id="orders">거래내역</a>
			</div>
			
			<div>
				<!-- 상품목록 -->
				<div id="productlist" class="panel panel-boby">
					
				</div>
				<!-- 거래내역 -->
				<div id="orderlist" style="display: none;">
					
				</div>			
			</div>
		</div>
			
		<div class="row col-sm-6" id="frames" style="margin: auto;">
			<h2>통계 자료</h2>
			<div style="text-align: right">
				<a class="btn btn-xs btn-warning" href="">더 보기</a>
			</div>
			
			<!-- 토옹게-->
			<div>
			
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>	
</body>
</html>




