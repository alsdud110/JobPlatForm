<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>회사_모집공고 등록 페이지</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel='stylesheet' type='text/css' media='screen'
	href='${contextPath}/resources/styles/main-section.css'>
<script src="${contextPath}/resources/libs/jquery-3.6.0.min.js"></script>
<link rel='stylesheet' type='text/css' media='screen'
	href='${contextPath}/resources/styles/recruitRegistStyle.css'>
	
<script src="${contextPath}/resources/libs/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="../include/header.jsp" />
	<jsp:include page="../include/main-aside.jsp" />
	<jsp:include page="../include/comAside.jsp" />

	<div class="container">
		
		<div class="row">
			<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">카테고리</th>
					</tr>
				</thead>
					<c:forEach var = "dto" items = "${dto}" varStatus = "i">
				<tbody>
					<tr>
						<td>${dto.no }</td>
						<td><a href = "/editRecruit/${dto.no}">${dto.title }</a></td>
						<td>${dto.category }</td>
					</tr>
				</tbody>
					</c:forEach>	
			</table>
		</div>
			<input type = "button" onclick = "location.href = '/company'" value = "공고등록" class = "btn">
		
	</div>

	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
</body>

</html>