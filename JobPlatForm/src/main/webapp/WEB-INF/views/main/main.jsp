<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>잡코잇</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel='stylesheet' type='text/css' media='screen'
	href='${contextPath}/resources/styles/main-section.css'>
<link rel = 'stylesheet' type = "text/css" media = 'screen' href = "${contextPath}/resources/styles/recruit.css">
<script src="${contextPath}/resources/libs/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="../include/header.jsp" />
	<jsp:include page="../include/main-aside.jsp" />
<section class="main-banner">
	<img src="${contextPath}/resources/images/banner.png">
</section>

<h1>추천공고</h1>
		<div class = "recruit">
			<c:forEach var="dto" items="${recruit}" varStatus = "i">
			<a href = "recruit/detail/${dto.no }">
				<div class="container">
					<img src = "${pageContext.request.contextPath}/${dto.img}">
						<div class = "comName">
							<h3>${dto.comName}</h3>
							<h4 class = "category">${dto.title }<br>
							카테고리 : ${dto.category }<br>
							경력 : ${dto.career }
							</h4>
						</div>
						<div>
							${dto.img }
						</div>
				</div>
			</a>
			</c:forEach>
		</div>

   
		
<div>
<jsp:include page="../include/footer.jsp"/>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#result").hide();
		$("#btn_search").click(function() {
			var searchBy = $("#searchBy").val();
			var keyWord = $("#main-search").val();

			var data = {"searchBy" : searchBy,"word" : keyWord};
				$.ajax({
					url : "search",
					data : data,
					dataType : "json",
					success : function(data) {
						var tag = "";
						const element = document.getElementById('searchResult');

						if (data.code == 200) {
							$("#result *").remove();
		              		tag = "<h1>추천공고</h1>"
		              		let list = data.result;   //List Data Get
							for (i = 0; i < list.length; i++) {
 								tag += "<div class = 'recruit'><a href = 'detail/"+list[i].no+"'><div class='container'><img src = '${contextPath}/"+list[i].img+"'><div class = 'comName'><h3>"+list[i].comName+"</h3><h4 class = 'category'>"+list[i].title+"<br>카테고리 : "+list[i].category+"<br>경력 : "+list[i].career+"</h4></div></div></a></div>"
							}
						} else {
							$("#result *").remove();
		               		tag = "<h1>추천공고</h1>"
		                    tag += data.message;
						}
							$('#result').html(tag);
							$("#result").show();
							$(".aa").hide();
						},
					error : function(request,error, status) {
							console.log("code:"+ request.status+ "message:"+ request.responseText+ "error:"+ error);
							}
						});
				});
		});
	</script>

</body>
</html>