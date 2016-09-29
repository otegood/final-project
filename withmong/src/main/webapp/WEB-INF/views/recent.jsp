<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">

<style type="text/css">

</style>
<script type="text/javascript">

</script>
	<div>
		<c:forEach var="recent" items="${recentList }">
			<c:out value="${recent.img }"></c:out>
		</c:forEach>
		<c:forEach var="recent" items="${recentList }">
			<c:out value="${recent.title }"></c:out>
		</c:forEach>
		<c:forEach var="recent" items="${recentList }">
			<c:out value="${recent.price }"></c:out>
		</c:forEach>
	</div>
</html>