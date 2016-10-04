<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
		$("#addProductbtn").click(function() {
			$("#addpro").submit(function() {
				if ($("#categoryNo").val() == "default") {
					alert("카테고리를 선택해주세요");
					return false;
				}
				if (!$.trim($(":input[name='title']").val())) {
					alert("타이틀을 입력해주세요");
					return false;
				}
				if (!$.trim($("textarea[name='contents']").val())) {
					alert("상품 설명을 입력해주세요");
					return false;
				}
				if ($("#city").val() == "default") {
					alert("도시를 선택해주세요");
					return false;
				}
				if ($("#selectqty").val() == "default") {
					alert("수량및 인원을 선택해주세요");
					return false;
				}
				if (!$.trim($(":input[name='price']").val())) {
					alert("가격을 입력해주세요");
					return false;
				}
				if (!$.trim($(":input[name='tag']").val())) {
					alert("태그를 입력해주세요");
					return false;
				}
				return true;
			});
		});

		// 도시 선택시 구 나오기
		$("#city").change(
				function() {
					$("#local").empty();
					$.ajax({
						url : "locationForlocal.do",
						type : "POST",
						data : {
							city : $("#city").val()
						},
						dataType : "json",
						success : function(data) {
							$.each(data, function(index, item) {
								$("#local").append(
										'<option value="'+item.local+'">'
												+ item.local + '</option>');
							})
						}
					})
				});

	});
</script>
<style type="text/css">
.container {
	margin-top: 20px;
}

img.pro-img {
	width: 200px;
	height: 200px;
}

img.aa {
	width: 80px;
	height: 80px;
}

.ex-company {
	color: white;
	top: 0;
	left: 0;
	border;
}

strong {
	color: red;
	top: 0;
	left: 0;
}

#logo {
	width: 156px;
	height: 150px;
	padding-top: 0px;
	padding-bottom: 100px;
}

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 50px;
}
</style>
<script type="text/javascript">
</script>
<title>WithMong</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="container" style="margin-top: 150px;">
		<h1>상품 등록</h1>
		<div class="well">
			<form role="form" method="post" action="addProduct.do" id="addpro" enctype="multipart/form-data">
				<div class="form-group">
					<div class="form-group row">
						<label class="col-sm-3 text-right">카테고리</label>
						<div class="col-sm-9">
							<select name="category.no" id="categoryNo">
								<option value="default" selected="selected">--선택하세요--</option>
									 <c:forEach var="cate" items="${cateList}">
									<option value="${cate.no }">${cate.name }</option>
									</c:forEach>		 
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">제목</label>
						<div class="col-sm-9">
							<input type="text" name="title" id="title" size="70" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">상품 등록 사진</label>
						<div class="col-sm-9">
							<input type="file" name=img id="img">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">유튜브 URL</label>
						<div class="col-sm-9">
							https://www.youtube.com/ <input type="text" name="video"
								id="video" size="47">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">상품 설명</label>
						<div class="col-sm-9">
							<textarea id="contents" name="contents" rows="7" cols="72"></textarea>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-3 text-right">도시 선택</label> 
						<select name="location.city" id="city">
							<option value="default" selected="selected">--선택하세요--</option>
							 <c:forEach var="location" items="${locaList}">
									<option value="${location.city }">${location.city }</option>
							</c:forEach>		 
						</select> 
						
						<label class="text-right"> 구 선택</label> 
						<select name="location.local" id="local">
							<option value="default" selected="selected">--선택하세요--</option>
	
						</select> 
						
					</div>

					<div class="form-group row">
						<label class="col-sm-3 text-right">수량 및 인원</label> 
						<select id="selectqty">
							<option selected="selected" value="default">--선택하세요--</option>
							<option>--수량--</option>
							<option>--인원--</option>
						</select> <input type="number" name="qty" id="qty" size="10" />
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">가격</label>
						<input type="number" name="price" id="price" />
					</div>

					<div class="form-group row">
						<label class="col-sm-3 text-right">태그</label>
						<input type="text" name="tag" id="tag" size="72" />
					</div>

					<div class="form-group text-center">
						<input type="submit" class="btn btn-primary" value="등록" id="addProductbtn" />
						<a href="searchList.do" class="btn btn-default">취소</a>
					</div>
					

				</div>
			</form>
		</div>

	</div>

</body>
</html>
