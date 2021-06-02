<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "com.db.recruit.RecruitDto" %>
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
	<%
		RecruitDto a = (RecruitDto)session.getAttribute("recruit");
		String comName = a.getComName();
		String tag = a.getTag();
		String category = a.getCategory();
		String tel = a.getTel();
		String fax = a.getFax();
		String address = a.getAddress();
		String test1 = a.getTest1();
		String test2 = a.getTest2();
		String test3 = a.getTest3();
		String test4 = a.getTest4();
		String test5 = a.getTest5();
		String test6 = a.getTest6();
	%>
	<section class="main-company">
		<h1>추천공고</h1>
			<div class="list-box">
				<ul class="company-list">
					<li class="in-list"><a href="#">
							<div class="div-imgbox">
								<img src="#">
							</div>
							<div class="div-textbox">
								<h2><%=comName %></h2>
								<%=tag %>, <%=category %>
								<%=tel %>,<%=fax %>,<%=address %>
							</div>
					</a></li>
				</ul>
			</div>
	</section>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
</body>
</html>