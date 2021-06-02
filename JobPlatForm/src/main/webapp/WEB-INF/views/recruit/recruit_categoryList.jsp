<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>팀플 메인</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' type='text/css' media='screen'
	href='${contextPath}/resources/styles/main-section.css'>
<script src="${contextPath}/resources/libs/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="../include/header.jsp" />
	<jsp:include page="../include/main-aside.jsp" />
	<section class="main-banner">
		<!-- <img src="https://lh3.googleusercontent.com/proxy/qdn7kI54UAPuxCNoL0whTiq0o3EjsvV1L1XW_tYjKBxzVROzF6Y2P4ldFwZuYldes47dO6IY7JQOOcclRN19jBI_677mNPkXkG2FilSjZ90SMLGMij3XcyaFj68pfEQYbCarYqjvJPIOgleZ7Zbu9_2Fd4YrkZJZA1pXencg9RsRm85OD5Ipvsso882Zb6hDPYSJdHFS11lk8id4l0ys9XbhHKuFhXaeJVKKW5SXw_tT5LId6f5mPjSnid0hLzZb1nUCORNi0SBux5ay5kabag36gRlSbUnYwIODPN6Yf_WyfhOAo-RrlRdm_mLkzXnie6RBb2g0B1DIkDFswJWzQw1mNvei"> -->
	</section>
	<section class="main-search">
		<article class="search">
			<select name="searchBy" id="searchBy">
				<option id="tag" value="tag">태그</option>
				<option id="category" value="category">카테고리</option>
				<option id="comName" value="comName">기업명</option>
			</select> <input type="text" name="word" id="main-search" class="main-search"
				placeholder=" 검색어를 입력해주세요"> &nbsp;&nbsp;&nbsp;&nbsp; <input
				type="button" id="btn_search" value="검색"
				style="width: 80px; height: 50px;">
		</article>
	</section>
	<div id = "result">
	</div>
	<section class="main-company">
		<h1>추천공고</h1>
		<c:forEach var="recruit" items="${dto}" varStatus="i">
			<div class="list-box">
				<ul class="company-list">
					<li class="in-list"><a href="detail/${recruit.no }">
							<div class="div-imgbox">
								<img src="#">
							</div>
							<div class="div-textbox">
								<h2>${recruit.comName }</h2>
								${recruit.tag }, ${recruit.category }
							</div>
					</a></li>
				</ul>
			</div>
		</c:forEach>
	</section>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	$(function() {
		$("#result").hide();
		$("#btn_search").click(function() {
			var searchBy = $("#searchBy").val();
			var keyWord = $("#main-search").val();

			var data = {"searchBy" : searchBy,"word" : keyWord};
			$.ajax({
				url : "search.do",
				data : data,
				dataType : "json",
				success : function(r) {
					var tag = "";
					const element = document.getElementById('searchResult');

					if (r.code == 200) {
						var arr = r.result;
						for (i = 0; i < arr.length; i++) {
							tag += "<p><span>" + arr[i].comName + "</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>" + arr[i].tag + "</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>" + arr[i].category + "</span>&nbsp;&nbsp;&nbsp;&nbsp;</p>";
						}
					} else {
						tag = r.message;
					}
					$('#result').html(tag);
					$("#result").show();
					$(".main-company").hide();
				},
				error : function(request,error,status) {
					console.log("code:"+ request.status + "message:" + request.responseText + "error:" + error);
				}
			});
		});
	});
</script>
</body>
</html>