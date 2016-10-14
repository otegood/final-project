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
<script type="text/javascript" src="http://malsup.github.com/jquery.corner.js"></script>
<script type="text/javascript">

$(function() {
	getOptionBox();
	
	
	var REPLY_EXIST = 1
	//별점 및 수정 버튼
	
	var loginedUserId = '${LOGIN_USER.id}';
	var saleId = '${userDetail.id }';
	getStarImg('${detail.avglike}');
	if(loginedUserId==saleId){
		$("#proregister").append('<a class="btn btn-warning btn-xs" href="updateProduct.do?productNo=${detail.no}">수정</button>');
		$("#proregister").append('<a class="btn btn-danger btn-xs" href="deleteProduct.do?productNo=${detail.no}">삭제</button>');
		$("#messagebtn").hide();
		$("#reportbtn").hide();
	}
	
	
	function getOptionBox(){
		if ('${detail.qty}' <= 5){
			for(var i=1;i<='${detail.qty }';i++){
				$("#optionBox").append('<input type="radio" name="qty" value="'+ i +'">구매 수 : '+i+' X ${detail.price } P = '+i * '${detail.price }'+'<br>');
				
			}
		}else{
				var $selectbox = $("<select id='selectqty'></select>");
				
				for(i=1;i<='${detail.qty }';i++){
					$selectbox.append('<option value="'+i+'">'+i+'</option>')
				}
					$("#optionBox").append("구매수 :");
					$("#optionBox").append($selectbox);
					$("#optionBox").append("<br><span id='qtyview'></span><br>");
								
			}
	}
	
	
	
	function getStarImg(data){		
		$("#avgStar").empty();
		var avglike = data;
		roundAvglike = Math.round(avglike);
		if(roundAvglike < 1){
			$("#avgStar").append('<img src="../../resources/images/default/1star.PNG">');
		}else{
			$("#avgStar").append('<img src="../../resources/images/default/'+roundAvglike+'star.PNG">');
		}
	}
	
	
	
	
	// 댓글 가져오기
	function getReviewList(){
		$("#reviewTb").empty();
		
		$.ajax({
			url:"getReviewList.do",
			data:{productNo:$("#productNo").val()},
			dataType: "json",
			success: function(data){
				//로딩하는 ajax 추가
				
				var loginedUserId = '${LOGIN_USER.id}';
				$.each(data,function(index, item){	
					if (loginedUserId == item.userId) {
						$("#reviewTb").append('<tr><td><img src="../../resources/images/default/'+item.score+'star.PNG"></td><td>'+item.contents+'</td>'+'<td>'+item.userId+'</td>'+'<td>'+item.regdate+'</td><td><button class="btn btn-danger btn-xs" value="'+item.no+'">삭제</button></td></tr>');
					} else {
						$("#reviewTb").append('<tr><td><img src="../../resources/images/default/'+item.score+'star.PNG"></td><td>'+item.contents+'</td>'+'<td>'+item.userId+'</td>'+'<td>'+item.regdate+'</td><td></td></tr>');
						
					}
				})
			}
		})
	}
	//탭 클릭시 댓글 가져오기
	$("#tabmenu1").click(function() {
		if('${proReplyCount}' != 0){
		getReviewList();
		}
	});
	
	// 댓글 버튼 클릭시
	console.log("replycountttttttttt", '${repleCount}');
	if ('${repleCount}' != REPLY_EXIST) {
		$("#addreviewBtn").on("click",function(){
			if (!$.trim($("input[name='contents']").val())) {
				alert("댓글을 입력해주세요");
				return false;
			}
	
			$(this).off("click");
			console.log($(":radio[name='score']:checked").val());
			$.ajax({
				url:"productreple.do",
				type:"POST",
				data:{score:$(":radio[name='score']:checked").val(),contents:$("#contents").val(),productNo:$("#productNo").val()},
				dataType: "text",
				success: function(data){
					getReviewList();
					getStarImg(data);
					$("#addreviewBtn").addClass("disabled");
				}
			})
			return false;
		});
		
		
	}
	
	
	var userPoint ='${LOGIN_USER.point}';
	userPoint = parseInt(userPoint);
	// 컨트롤러에서 Order를 받아 확인하는 코드를 해야한다.
	$("#buybtn").one("click", function(){
		var userPoint ='${LOGIN_USER.point}';
		var price = $("#lastPrice").text();
		var qty = 0;
		if('${detail.qty}'>5){
			qty = $("#selectqty option:selected").val();
		}else{
		 	qty = $(":input:radio[name=qty]:checked").val()
		}
		qty = parseInt(qty);
		price = parseInt(price);
		
		userPoint = parseInt(userPoint);
		price = parseInt(price);
		
		
		if(userPoint >= price || '${detail.qty}'<=0){
			$.ajax({
				url:"productBuy.do",
				type:"POST",
				data:{productNo:$("#productNo").val(),qty:qty,price:price },
				dataType: "text",
				success: function(data){
					alert("상품구매가 완료 되었습니다.");
					location.href="detail.do?productNo=" + $("#productNo").val()
					$("#buybtn").addClass("disabled");
				}
			})
		}else{
			alert("포인트가 부족합니다.");
			location.href ="charge.do";
		}
	})
	
	//댓글 삭제 버튼을 클릭 했을 때 수행하는 코드
	$("#reviewTb").on("click", "button", function() {
		$("#addreviewBtn").off("click");
		
		$.ajax({
			url:"productrepleDel.do",
			type:"POST",
			data:{reviewNo:$(this).val(),productNo:$("#productNo").val()},
			dataType: "text",
			success: function(data){
				//로딩하는 ajax 추가
				getReviewList();
				getStarImg(data);
				$("#addreviewBtn").removeClass("disabled");
				
				//다시 등록
				$("#addreviewBtn").on("click",function(){
					if (!$.trim($("input[name='contents']").val())) {
						alert("댓글을 입력해주세요");
						return false;
					}
					
					$(this).off("click");
					$.ajax({
						url:"productreple.do",
						type:"POST",
						data:{score:$(":radio[name='score']:checked").val(),contents:$("#contents").val(),productNo:$("#productNo").val()},
						dataType: "text",
						success: function(data){
							getReviewList();
							getStarImg(data);
							$("#addreviewBtn").addClass("disabled");
							
						}
					})
					return false;
				});
				
			}
		})
	});
	
	//찜하기 버튼을 클릭했을 때 수행하는 코드
	$("#cartbtn").one("click",function() {
		$.ajax({
			url:"addCart.do",
			type:"POST",
			data:{productNo:$("#productNo").val()},
			dataType: "text",
			success: function(data){
				//로딩하는 ajax 추가
				alert("상품찜하기가 완료 되었습니다.");
				$("#cartbtn").addClass("disabled");
			}
		})
	});
	
	// 관련 상품 가져오기에 첫번째아이에게 클래스 추가
	$("#myCaroitem").find("div:first").addClass("active");
	
	//프로필 사진
	if("${userDetail.grade}" == 'B'){
		$("#profileimg").append("<img id='profile' alt='profile' src='resources/images/profile/${userDetail.img }' class='target' style='width:150px;height:150px;border:0;'>");
		$(".target").before("<img alt='grade' src='resources/images/default/bronze.jpg' id='chk' class='img-circle overlay img-thumbnail'>");
	} else if ("${userDetail.grade}" == 'S'){
		$("#profileimg").append("<img id='profile' alt='profile' src='resources/images/profile/${userDetail.img }' class='target' style='width:150px;height:150px;border:0;'>");
		$(".target").before("<img alt='grade' src='resources/images/default/silver.jpg' id='chk' class='img-circle overlay img-thumbnail'>");
	} else if("${userDetail.grade}" == 'G'){
		$("#profileimg").append("<img id='profile' alt='profile' src='resources/images/profile/${userDetail.img }' class='target' style='width:150px;height:150px;border:0;'>");
		$(".target").before("<img alt='grade' src='resources/images/default/gold.jpg' id='chk' class='img-circle overlay img-thumbnail'>");
	}
	$("#profile").corner();
	
	// 가격클릭시
	$("input[name='qty']").first().attr("checked",true);
	$("input[name='qty']").change(function() {
		$("#lastPrice").empty();
				var qty = $(this).val();
				$("#lastPrice").append(qty * "${detail.price}" + 'P');
			});
	$("#selectqty").change(function() {
		$("#lastPrice").empty();
		$("#qtyview").empty();
				var qty = $(this).val();
				$("#qtyview").append("구매 수 : "+qty+" X ${detail.price } P = "+qty * "${detail.price}" + "P")
				$("#lastPrice").append(qty * "${detail.price}" + 'P');
			});

	var loginId = '${LOGIN_USER.id}'
	var saleId = '${userDetail.id}'
	if(loginId == saleId){
		$("#buybtn").hide()
		$("#cartbtn").hide()	
	}else{
		$("#buybtn").show()
		$("#cartbtn").show()
	}

	
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
.overlay
	{
		padding-left:5px;
		position: absolute;
		align:right;
		margin-left: 80px;
		margin-top: 70px;
		width:80px;
		height:80px;
		border:0;
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
				<div class="col-sm-3">${crumbs.cateBName}> ${crumbs.cateSName }</div>
				<div class="col-sm-6">제목 : ${detail.title }</div>
				<div class="col-sm-3">조회수 : ${detail.hits }</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-7">
					<span> <strong style="color: black;">태그</strong>
						${detail.tag }
					</span>
				</div>
				<div class="col-sm-3" id="avgStar"></div>
				<div class="col-sm-2" id="proregister"></div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-3">
					<img src="../../resources/images/${detail.img}" width="300px;" height="300px">
				</div>
				<div class="col-sm-1"></div>
				<div class="col-sm-3">
					<div id="optionBox">
					</div>
					<br>
					<div>
						<span id="lastPrice">${1 * detail.price }P</span><br>
						<c:choose>
							<c:when test="${empty LOGIN_USER or detail.qty eq 0 or orderCount eq 1}">
								<button id="buybtn" type="button" class="btn btn-danger"
									disabled="disabled">구매하기</button>
							</c:when>
							<c:otherwise>
								<button id="buybtn" type="button" class="btn btn-danger">구매하기</button>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${empty LOGIN_USER or cartCount eq 1}">
								<button id="cartbtn" type="button" class="btn btn-info"
									disabled="disabled">찜하기</button>
							</c:when>
							<c:otherwise>
								<button id="cartbtn" type="button" class="btn btn-info">찜하기</button>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="col-sm-1"></div>
				<div class="col-sm-4">
					<div class="row">
						<p>판매자 아이디 : ${userDetail.id }</p>
						<p>
							판매자 프로필 
							<a href="tomessage.do?id=${userDetail.id }" style="margin-left: 10px;">
							<span class="glyphicon glyphicon-envelope" id="messagebtn"></span></a> 
							<a href="report.do?id=${userDetail.id }" style="margin-left: 10px;">
							<span class="glyphicon glyphicon-alert" style="color: red" id="reportbtn"></span></a>
						</p>	
						<div id="profileimg">
						
						</div>
						<p>
							등급 : ${userDetail.grade } 성별:
							<c:if test="${userDetail.gender eq 'M'}">남자</c:if>
							<c:if test="${userDetail.gender eq 'F'}">여자</c:if>
						</p>
						<p>학력 :${userDetail.schoolAbility }</p>
						<p>가능 지역 : ${detail.location.city } > ${detail.location.local }</p>
					</div>
				</div>
			</div>

			<hr>

			<div>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#content">상세설명</a></li>
					<li><a data-toggle="tab" id="tabmenu1" href="#menu1">후기</a></li>
					<li><a data-toggle="tab" id="tabmenu2" href="#menu2">관련 상품</a></li>
					<li><a data-toggle="tab" id="tabmenu3" href="#menu3">관련 youTube</a></li>
				</ul>
			</div>

			<div class="tab-content">
				<div id="content" class="tab-pane fade in active">
					<h3>상세 설명</h3>
					<p>${detail.contents }</p>
				</div>
				<div id="menu1" class="tab-pane fade">
					<input type="hidden" id="productNo" value="${detail.no }">
					<c:if test="${not empty LOGIN_USER }">
					<div id="hahaha">
							<br>
							<div class="text-center">
								<input type="radio" name="score" value="1" checked="checked" />
								<img src="../../resources/images/default/1star.PNG"> 
								<input type="radio" name="score" value="2" /> 
								<img src="../../resources/images/default/2star.PNG"> 
								<input type="radio" name="score" value="3" /> 
								<img src="../../resources/images/default/3star.PNG"> 
								<input type="radio" name="score" value="4" /> 
								<img src="../../resources/images/default/4star.PNG"> 
								<input type="radio" name="score" value="5" /> 
								<img src="../../resources/images/default/5star.PNG">
							</div>


							<div class="panel-body">
								<div class="col-lg-12">
									<div class="input-group">
										<input type="text" id="contents" name="contents"
											class="form-control" placeholder="최대 한글 100자까지 가능합니다.">
										<span class="input-group-btn"> <c:choose>
												<c:when test="${empty LOGIN_USER or repleCount == 1}">
													<button class="btn btn-danger disabled" 
														id="addreviewBtn">등록</button>
												</c:when>
												<c:otherwise>
													<button class="btn btn-danger"
														id="addreviewBtn">등록</button>
												</c:otherwise>
											</c:choose>

										</span>
									</div>
								</div>
							</div>
					</div>
					</c:if>
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
								<tr><td>입력한 댓글이 없습니다.</td></tr>
							</tbody>
						</table>

					</div>

				</div>
				<div id="menu2" class="tab-pane fade">
					<h3>관련 상품</h3>

					<div id="myCarousel" class="carousel slide" data-ride="carousel">

						<!-- Wrapper for slides -->
						<c:choose>
							<c:when test="${empty sellerProducts }">
							        	관련 상품이 없습니다.
							        </c:when>
							<c:otherwise>

								<div class="carousel-inner" role="listbox" id="myCaroitem">
									<c:forEach var="selProduct" items="${sellerProducts}">
										<div class="item" align="center">
											
												<a href="detail.do?productNo=${selProduct.no }"> <img
													src="../../resources/images/${selProduct.img} "
													width="290px" height="90px" style="height: 164px; margin-top: 20px;" />
												</a>
												<div class="caption" >
													<h5>제목 : ${selProduct.title }</h5>
													포인트: ${selProduct.price }<br /> 
													<img src="../../resources/images/default/${selProduct.avg }star.PNG">
												</div>
											
										</div>
									</c:forEach>
									<!-- Left and right controls -->
									<a class="left carousel-control" href="#myCarousel"
										role="button" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#myCarousel"
										role="button" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>

							</c:otherwise>
						</c:choose>


					</div>

				</div>
				<div id="menu3" class="tab-pane fade">
					<c:choose>
						<c:when test="${empty detail.video }">
							<h3>관련 유튜브 동영상이 없습니다.</h3>
						</c:when>
						<c:otherwise>
							<div class="embed-responsive embed-responsive-16by9">
	 							 <iframe width="560" height="315" src="https://www.youtube.com/embed/${detail.video }"></iframe>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>


	</div>


	<%@ include file="../footer.jsp"%>
</body>
</html>









