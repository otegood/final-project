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
	<script type="text/javascript" src="http://malsup.github.com/jquery.corner.js"></script>
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
	.overlay
	{
		padding-left:5px;
		position: absolute;
		align:right;
		margin-left: 150px;
		margin-top: 130px;
		width:100px;
		height:120px;
		border:0;
	}

</style>
<script type="text/javascript">
$(function() {
	
	$.ajax({
		url:"../userinfo.do",
		data:{id:'${param.id}'},
		dataType:"json",
		success: function(data) {
			console.log(data);		// 전체 객체가 한꺼번에나옴
			
			$("#id").append(data.id);
			$("#email").append(data.email);
			$("#img").append("<img alt='profile' src='resources/images/profile/"+data.img+"' class='target' style='width:250px;height:250px;border:0;'>");
			if(data.grade == 'B'){
				$(".target").before("<img alt='grade' src='resources/images/default/bronze.jpg' id='chk' class='img-circle overlay img-thumbnail'>");
			} else if (data.grade == 'S') {
				$(".target").before("<img alt='grade' src='resources/images/default/silver.jpg' id='chk' class='img-circle overlay img-thumbnail'>");
			} else {
				$(".target").before("<img alt='grade' src='resources/images/default/gold.jpg' id='chk' class='img-circle overlay img-thumbnail'>");
			}
		}
	});	
	
	
	$.ajax({
		url:"../productbyid.do",
		data:{id:'${param.id}'},
		dataType:"json",
		success: function(data) {
			console.log(data);		// 전체 객체가 한꺼번에나옴
			if(data.length == 0) {
				$("#product").append("<h3 class='text-center' style='color:red'>등록하신 상품이 없습니다.</h3>");
				return false;
			} 
			$.each(data, function(index, item) {
				var product = "<div class='col-sm-4 col-md-3'>";
				product += "<div class='thumbnail'>";
				product += "<a href='detail.do?productNo="+item.no+"'><img src='resources/images/"+item.img+"' style='width:242px;height:200px;'></a>";
				product += "<div class='caption'>";
				product += "<h3><a href='detail.do?productNo="+item.no+"'>"+item.title+"</a></h3>";
				product += "<p>"+item.price+" point</p>";
				product += "</div></div></div>";
				
				$("#product").append(product);
			});
		}
	});
});
</script>
<title>유저 정보</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row text-center">
	        	<div class="text-center" id="img">
		        	
	        	</div>
			    <h2 class="glyphicon glyphicon-user" id="id"> </h2>
			    <div class="text-center">
				    <a href="firstmessage.do" class="btn btn-primary">1:1 문의</a>
				    <a href="main.do" class="btn btn-danger">메인으로</a>
			    </div>
			    </div>
			    <br/>
			    <br/>
			<h3>전체 상품 정보</h3>						    
			<div class="row well text-center" id="product">
			</div>
		</div>

		<%@ include file="../footer.jsp" %>	
</body>
</html>




