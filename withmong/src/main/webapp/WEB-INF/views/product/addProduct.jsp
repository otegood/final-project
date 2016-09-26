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
			<form role="form" method="post" action="addProduct.do" enctype="multipart/form-data">
				<div class="form-group">
					<div class="form-group row">
						<label class="col-sm-3 text-right">카테고리</label>
						<div class="col-sm-9">
							<select name="categoryNo" id="categoryNo">
								<option value="defualt" selected="selected">--선택하세요--</option>
									 <c:forEach var="cate" items="${cateList}">
									<option value="${cate.no }" selected="selected">${cate.name }</option>
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
							<textarea name="contents" rows="7" cols="72"></textarea>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-3 text-right">지역 선택</label> 
						<select name="location" id="location">
							<option value="defualt" selected="selected">--선택하세요--</option>
						</select> 
						
						<label class="text-right"> 도시 선택</label> 
						<select name="city" id="city">
							<option value="defualt" selected="selected">--선택하세요--</option>
						</select> 
						
					</div>

					<div class="form-group row">
						<label class="col-sm-3 text-right">수량 및 인원</label> 
						<select>
							<option selected="selected">--선택하세요--</option>
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
						<input type="submit" class="btn btn-primary" value="등록" />
						<a href="list.do" class="btn btn-default">취소</a>
					</div>
					

				</div>
			</form>
		</div>

	</div>

</body>
</html>
