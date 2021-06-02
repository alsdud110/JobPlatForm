<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>팀플 메인</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' type='text/css' media='screen'
	href='${contextPath}/resources/styles/myPageResume.css'>
<script src="${contextPath}/resources/libs/jquery-3.6.0.min.js"></script>
</head>
<body>
<jsp:include page="../include/header.jsp"/>
<jsp:include page="../include/main-aside.jsp"/>
  <section class="myPage">
    <div class="myPagebox">
      <article class="myPageMenu">
        <h2>개인 회원</h2>
        <hr>
        <ul>
          <h3>회원정보 관리</h3>
          <li><a href="#">개인정보</a> </li>
          <li><a href="#">개인정보 수정</a> </li>
          <li><a href="#">비밀번호 찾기</a> </li>
          <li><a href="#">회원탈퇴</a> </li>
        </ul>
        <hr>
        <ul>
          <h3>이력서 관리</h3>
          <li><a href="#">이력서 확인</a> </li>
          <li><a href="#">이력서 수정</a> </li>
        </ul>
        <hr>
        <ul>
          <h3>자기소개서 관리</h3>
          <li><a href="#">자기소개서 등록</a> </li>
          <li><a href="#">자기소개서 확인</a> </li>
          <li><a href="#">자기소개서 수정</a> </li>
        </ul>
        <ul>
          <h3>지원관리</h3>
          <li><a href="#">지원회사</a> </li>
          <li><a href="#">관심기업</a> </li>
          <li><a href="#"></a> </li>
        </ul>
      </article>
      <article class="myPageMenu-resume">
        <h1>이력서 관리</h1>
        <div class="top">
          <div class="img"></div>
          <div class="member">
            <ul>
              <li><div>Name</div><input type="text" name="name" value="한동민" readonly></li>
              <li><div>Sex</div><input type="text" name="sex" value="남" readonly></li><br>
              <li><div>Birth</div> <input type="text" name="birth" value="1994-03-21" readonly></li>
              <li><div>Phone</div> <input type="text" name="phone" value="010-9908-7712" readonly></li><br>
              <li><div>Email</div> <input class="email" type="email" name="name" value="cocu7712" readonly>
                <span>@</span><input class="email" type="email2" name="name" value="naver.com" readonly>
              </li>
                <br>
              <li><div>Address</div> <input class="address" type="text" name="address" value="서울시 관악구 행운 5길" readonly></li><br>
              <li><div>Address Line2</div> <input class="address" type="text" name="address2" value="상세주소" readonly></li>
            </ul>

          </div>
        </div>
          <div class="body">
         	<form action="resumeUpdate" method="post">
            <ul>
                <li><div>학력</div>
                <select name="school1" id="">
                    <option value="고등학교">고등학교</option>
                    <option value="대학교">대학교</option>
                    <option value="대학원">대학원</option>
                  </select>
              <input class="size2" type="text" name="school2" value="" >
            </li>
            <li>
              <div>자격증</div>
              <input class="size3" type="text" name="certificate1" value="" placeholder="자격증을 입력하세요"><br>
              <div></div>
              <input class="size3" type="text" name="certificate2" value="" ><br>
              <div></div>
              <input class="size3" type="text" name="certificate3" value="" ><br>
              <div></div>
              <input class="size3" type="text" name="certificate4" value="" ><br>
              <div></div>
              <input class="size3" type="text" name="certificate5" value="" ><br>
            </li>
            <li>
              <div>IT 경력</div>
              <input class="size3" type="text" name="work1" value="" placeholder="경력사항을 입력하세요"><br>
              <div></div>
              <input class="size3" type="text" name="work2" value="" ><br>
              <div></div>
              <input class="size3" type="text" name="work3" value="" ><br>
              <div></div>
              <input class="size3" type="text" name="work4" value="" ><br>
              <div></div>
              <input class="size3" type="text" name="work5" value="" ><br>
            </li>
          </ul>
          <input type="submit" value="작성완료">
         	</form>
        </div>
      </article>
    </div>
  </section>
  <jsp:include page="../include/footer.jsp"/>
</body>
</html>