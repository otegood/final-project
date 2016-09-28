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
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
  <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
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

</style>
<script type="text/javascript">
$(function() {
	$(document).ready(function() {
	    $('#example').DataTable( {
	        "pagingType": "full_numbers"
	    } );
	} );
	
	// 아이디 중복확인 하는거 만들기
	$("#example").ready(function (){
		var inputedId = $("${LOGIN_USER.id}").val();
		console.log(inputedId);
		$.ajax({
			url:"../ckmypurchase.do",
			data:{id:inputedId},
			dataType:"json",
			success: function(data) {
		
			}
		});
		
		
	});
	
})

</script>
<title>Insert title here</title>
</head>
<body>
		<header><%@ include file="../header.jsp" %></header>
	
		<div class="container" >
			<div class="row">
				<h1>나의 구매내역</h1>
				<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>판매자ID</th>
                <th>상품명</th>
                <th>포인트</th>
                <th>거래일자</th>
                <th>구매상태</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>구매자ID</th>
                <th>상품명</th>
                <th>포인트</th>
                <th>거래일자</th>
                <th>구매상태</th>
            </tr>
        </tfoot>
        <tbody></tbody>
    </table>
			</div>
		</div>
		

		<%@ include file="../footer.jsp" %>	
</body>
</html>




