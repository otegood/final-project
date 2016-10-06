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
		
		$("#cma_image").append('<img src="../../resources/images/${detail.img }" style="width: 100px; height: 100px;">');   
		
		
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
	function getThumbnailPrivew(html, $target) {
		console.log($target);
		if (html.files && html.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$target.css('display', '');
				//$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시
				$("#imgName").text("새 이미지");
				$target.html('<img src="' + e.target.result + '" style="width: 100%; height: 100%;" />');
				
			}
			reader.readAsDataURL(html.files[0]);
		}
	}
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

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	width: 100%;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>
<script type="text/javascript">
	
</script>
<title>WithMong</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="container" style="margin-top: 150px;">
		<h1>상품 수정</h1>
		<div class="well">
			<form role="form" method="post" action="updateProduct.do"
				id="updatePro" enctype="multipart/form-data">
 				<div class="form-group">
					<div class="form-group row">
						<label class="col-sm-3 text-right">제목</label>
						<div class="col-sm-9">
							<input type="text" name="title" id="title" size="70"
								value="${detail.title}" />
						</div>
					</div>

					<!-- 
					<div class="form-group row">
						<label class="col-sm-3 text-right">상품 등록 사진</label>
						<div class="col-sm-9">
							<img src="../../resources/images/${detail.img }" style="width: 100px; height: 100px;"> <input type="file" name=img id="img">
						</div>
					</div>
					-->
					<div class="form-group row">
						<label class="col-sm-3 text-right">상품 등록 사진</label>
						<div class="col-sm-9">
							<input type="file" name="cma_file" id="cma_file" accept="image/*"
								onchange="getThumbnailPrivew(this,$('#cma_image'))" /> <br>
							<!--  <div id="cma_image" style="width: 300px;"></div> -->
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right" id="imgName">기존 이미지</label>
						<div class="col-sm-9">
							<div id="cma_image" style="width: 300px;"></div>
						</div>
					</div>



					<div class="form-group row">
						<label class="col-sm-3 text-right">유튜브 URL</label>
						<div class="col-sm-9">
							https://www.youtube.com/ <input type="text" name="video"
								id="video" size="47" value="${detail.video }">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">상품 설명</label>
						<div class="col-sm-9">
							<textarea id="contents" name="contents" rows="7" cols="72">${detail.contents }</textarea>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-3 text-right">도시 선택</label> <select
							name="location.city" id="city">
							<option value="default" selected="selected">--선택하세요--</option>
							<c:forEach var="location" items="${locaList}">
								<option value="${location.city }">${location.city }</option>
							</c:forEach>
						</select> <label class="text-right"> 구 선택</label> <select
							name="location.local" id="local">
							<option value="default" selected="selected">--선택하세요--</option>

						</select>

					</div>

					<div class="form-group row">
						<label class="col-sm-3 text-right">수량 및 인원</label> <select
							id="selectqty">
							<option selected="selected" value="default">--선택하세요--</option>
							<option>--수량--</option>
							<option>--인원--</option>
						</select> <input type="number" name="qty" id="qty" size="10"
							value="${detail.qty }" />
					</div>
					<div class="form-group row">
						<label class="col-sm-3 text-right">가격</label> <input type="number"
							name="price" id="price" value="${detail.price }" />
					</div>

					<div class="form-group row">
						<label class="col-sm-3 text-right">태그</label> <input type="text"
							name="tag" id="tag" size="72" value="${detail.tag }" />
					</div>

					<div class="form-group text-center">
						<input type="submit" class="btn btn-primary" value="수정"
							id="rigiProductbtn" /> <a href="searchList.do"
							class="btn btn-default">취소</a>
					</div>
				</div>
			</form>
		</div>
	</div>


</body>
</html>
