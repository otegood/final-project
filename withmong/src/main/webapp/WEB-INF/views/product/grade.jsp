<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>평점</h2>
         	
		         	<form role="form" action="posting.jsp" method="post">
			       		<div class="text-center">
				         	<input type="radio" name="star" value="5" checked="checked" /><img src="../images/review/5star.PNG">
				      		<input type="radio" name="star" value="4" /> <img src="../images/review/4star.PNG">
				      		<input type="radio" name="star" value="3" /> <img src="../images/review/3star.PNG">
				      		<input type="radio" name="star" value="2" /> <img src="../images/review/2star.PNG">
				      		<input type="radio" name="star" value="1" /> <img src="../images/review/1star.PNG">
			         	</div>
			         	
			         	<input type="hidden" name="a" value="1">
			         	
						<div class="panel-body">
							<div class="col-lg-12">
							    <div class="input-group">
							      <input type="text" name="memo" class="form-control" placeholder="최대 한글 100자까지 가능하며, 스포일러는 삭제될 수 있습니다.">
							      <span class="input-group-btn">
							        <button class="btn btn-danger" type="submit">등록</button>
							      </span>
							    </div>
							  </div>
							</div>
					</form>
</body>
</html>