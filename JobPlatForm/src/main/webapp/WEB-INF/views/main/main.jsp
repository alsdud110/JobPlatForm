<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<jsp:include page="../include/header.jsp"/>
<jsp:include page="../include/main-aside.jsp"/>
<section class="main-banner">
	<!-- <img src="https://lh3.googleusercontent.com/proxy/qdn7kI54UAPuxCNoL0whTiq0o3EjsvV1L1XW_tYjKBxzVROzF6Y2P4ldFwZuYldes47dO6IY7JQOOcclRN19jBI_677mNPkXkG2FilSjZ90SMLGMij3XcyaFj68pfEQYbCarYqjvJPIOgleZ7Zbu9_2Fd4YrkZJZA1pXencg9RsRm85OD5Ipvsso882Zb6hDPYSJdHFS11lk8id4l0ys9XbhHKuFhXaeJVKKW5SXw_tT5LId6f5mPjSnid0hLzZb1nUCORNi0SBux5ay5kabag36gRlSbUnYwIODPN6Yf_WyfhOAo-RrlRdm_mLkzXnie6RBb2g0B1DIkDFswJWzQw1mNvei"> -->
</section>
<section class="main-search">
	<article class="search">
		<form action="test">
			<input type="text" name="search" id="main-search" class="main-search" placeholder=" 검색어를 입력해주세요">
			<input type="submit" value="검색">
		</form>
	</article>
</section>
<section class="main-company">
    <h1>추천공고</h1>
    <div class="list-box">
   	  <!-- 나중에 for문으로 변경 -->
      <ul class="company-list">
        <li class="in-list">
        <a href="#">
          <div class="div-imgbox">
            <img src="#">
          </div>
          <div class="div-textbox">
            <h2>테스트 제목 (주)</h2>
     	       내용을 입력하는중입니다.
          </div>
        </a>
        </li>
        <li class="in-list">
        <a href="#">
          <div class="div-imgbox">
            <img src="#">
          </div>
          <div class="div-textbox">
            <h2>테스트 제목 (주)</h2>
      		내용을 입력하는중입니다.
          </div>
         </a>
        </li>
        <li class="in-list">
        <a href="#">
          <div class="div-imgbox">
            <img src="#">
          </div>
          <div class="div-textbox">
            <h2>테스트 제목 (주)</h2>
      		내용을 입력하는중입니다.
          </div>
         </a>
        </li>
        <li class="in-list">
        <a href="#">
          <div class="div-imgbox">
            <img src="#">
          </div>
          <div class="div-textbox">
            <h2>테스트 제목 (주)</h2>
      		내용을 입력하는중입니다.
          </div>
         </a>
        </li>
        <li class="in-list">
        <a href="#">
          <div class="div-imgbox">
            <img src="#">
          </div>
          <div class="div-textbox">
            <h2>테스트 제목 (주)</h2>
      		내용을 입력하는중입니다.
          </div>
         </a>
        </li>
        <li class="in-list">
        <a href="#">
          <div class="div-imgbox">
            <img src="#">
          </div>
          <div class="div-textbox">
            <h2>테스트 제목 (주)</h2>
      		내용을 입력하는중입니다.
          </div>
         </a>
        </li>
      </ul>
       <!-- 나중에 for문으로 변경 -->
      <ul class="company-list-right">
        <h3>최근 공고</h3>
        <li class="company-titlt">
          <a href="#">1. 테스트1</a>
        </li>
        <li class="company-titlt">
          <a href="#">2. 테스트2</a>
        </li>
        <li class="company-titlt">
          <a href="#">3. 테스트3</a>
        </li>
        <li class="company-titlt">
          <a href="#">4. 테스트4</a>
        </li>
        <li class="company-titlt">
          <a href="#">5. 테스트5</a>
        </li>
        <li class="company-titlt">
          <a href="#">6. 테스트6</a>
        </li>
        <li class="company-titlt">
          <a href="#">7. 테스트7</a>
        </li>
        <li class="company-titlt">
          <a href="#">8. 테스트8</a>
        </li>
        <li class="company-titlt">
          <a href="#">9. 테스트9</a>
        </li>
        <li class="company-titlt">
          <a href="#">10. 테스트10</a>
        </li>
      </ul>
    </div>
  </section>
<div>
<jsp:include page="../include/footer.jsp"/>
</div>
</body>
</html>