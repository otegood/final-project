<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">

$(function() {
	function getReviewList(){
		
		$("#reviewTb").empty();
		
		$.ajax({
			url:"getReviewList.do",
			data:{productNo:$("#productNo").val()},
			dataType: "json",
			success: function(data){
				//로딩하는 ajax 추가
				$.each(data,function(index, item){	
					$("#reviewTb").append('<tr><td><img src="../../resources/images/default/'+item.score+'star.PNG"></td><td>'+item.contents+'</td>'+'<td>'+item.userId+'</td>'+'<td>'+item.regdate+'</td></tr>');
				})
			}
		})
	}
	
	$("#tabmenu1").click(function() {
		
		getReviewList();
	});
	
	
	$("#addreviewBtn").click(function(){
		
		$.ajax({
			url:"productreple.do",
			type:"POST",
			data:{score:$(":radio:checked").val(),contents:$("#contents").val(),productNo:$("#productNo").val() },
			dataType: "text",
			success: function(data){
				//로딩하는 ajax 추가
				getReviewList();
			}
		})
		return false;
	});
	
})

</script>
<style type="text/css">
img.pro-img {
	width: 200px;
	height: 200px;
}

img.aa {
	width: 80px;
	height: 80px;
}

header {
	background-color: black;
}

.ex-company {
	color: white;
	top: 0;
	left: 0;
	border;
}

strong {
	color: yellow;
	top: 0;
	left: 0;
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
</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>
	<div>

		<!-- 내용 기입 -->
		<div class="container">
			<div class="row">
				<div class="col-sm-3">교육 > ${detail.category.name }</div>
				<div class="col-sm-6">제목 : ${detail.title }</div>
				<div class="col-sm-3">조회수 : ${detail.hits }</div>
			</div>
			<hr>
			<span> <strong style="color: black;">태그</strong> ${detail.tag }</span>
			<hr>
				<div class="row">
					<div class="col-sm-3"><img src="../../resources/images/${detail.img}" width="260px;"></div>
					<div class="col-sm-1"></div>
					<div class="col-sm-3">
						
							${detail.price } 원
							<button type="button" class="btn btn-danger">구매하기</button>
					</div>
					<div class="col-sm-1"></div>
					<div class="col-sm-4">
						<div class="row">
							<div class="col-sm-7">판매자 아이디 : ${userDetail.id }</div>
							<div class="col-sm-5"> 
								 <button type="button" class="btn btn-primary btn-xs">쪽지</button>
								 <button type="button" class="btn btn-danger btn-xs">신고</button>
							</div>
						</div>
							<div>판매자 프로필</div>
							<div><img src="../../resources/images/${userDetail.img}" width="200px;"></div>
							<p>등급 : ${userDetail.grade }  성별: <c:if test="${userDetail.gender eq 'M'}">남자</c:if>
															   <c:if test="${userDetail.gender eq 'F'}">여자</c:if>
							</p>
							<p>학력 :${userDetail.schoolAbility }</p>
					</div>
				</div>
			
			<hr>

			<div>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#content">상세설명</a></li>
					<li><a data-toggle="tab" id="tabmenu1" href="#menu1">후기</a></li>
					<li><a data-toggle="tab" id="tabmenu2" href="#menu2">Menu 2</a></li>
					<li><a data-toggle="tab" id="tabmenu3"href="#menu3">Menu 3</a></li>
				</ul>
			</div>

			<div class="tab-content">
				<div id="content" class="tab-pane fade in active">
					<h3>상세 설명</h3>
					<p>${detail.contents }</p>
				</div>
				<div id="menu1" class="tab-pane fade">
					<form role="form" action="productreple.do" method="post">
			       		<div class="text-center">
				         	<input type="radio" name="score" value="1" checked="checked" /><img src="../../resources/images/default/1star.PNG">
				      		<input type="radio" name="score" value="2" /> <img src="../../resources/images/default/2star.PNG">
				      		<input type="radio" name="score" value="3" /> <img src="../../resources/images/default/3star.PNG">
				      		<input type="radio" name="score" value="4" /> <img src="../../resources/images/default/4star.PNG">
				      		<input type="radio" name="score" value="5" /> <img src="../../resources/images/default/5star.PNG">
			         	</div>
			         	
			         	<input type="hidden" id="productNo" value="${detail.no }">
			         	
						<div class="panel-body">
							<div class="col-lg-12">
							    <div class="input-group">
							      <input type="text" id="contents" class="form-control" placeholder="최대 한글 100자까지 가능하며, 스포일러는 삭제될 수 있습니다.">
							      <span class="input-group-btn">
							     
							      <c:choose>
							      	<c:when  test="${empty LOGIN_USER }">
							        <button class="btn btn-danger" type="submit" id="addreviewBtn" disabled="disabled">등록</button>
							        </c:when>
							        <c:otherwise>							        
							        <button class="btn btn-danger" type="submit" id="addreviewBtn">등록</button>
							        </c:otherwise>
							       </c:choose>
							 
							      </span>
							    </div>
							  </div>
							</div>
						</form>
						<div class="row" id="reviewList">

							<table class="table">
								<thead>
									<tr>
										<th>점수</th>
										<th>컨텐츠</th>
										<th>아이디</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody id="reviewTb">

								</tbody>
							</table>

						</div>
					
				</div>
				<div id="menu2" class="tab-pane fade">
					<h3>Menu 2</h3>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
				</div>
				<div id="menu3" class="tab-pane fade">
					<h3>Menu 3</h3>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>

				</div>
			</div>
		</div>


	</div>


	<%@ include file="../footer.jsp"%>
</body>
</html>









