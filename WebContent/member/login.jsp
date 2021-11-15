<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<form class="form-signin" action="loginDB.jsp" method="post">
<img class="mb-4" src="../img/mine.jpg" alt="" width="72" height="72">
<h1>삼무마켓</h1>
<label for="inputEmail" class="sr-only">아이디</label>
<input type="text" id="inputEmail" name="id" class="form-control" placeholder="ID 입력" required>
<label for="inputPassword" class="sr-only">비밀번호</label>
<input type="password" id="inputPassword" name="pass" class="form-control" placeholder="PW 입력" required>
<button  type="submit" class="btn btn-default">로그인</button>
<a href="/Member/join.jsp">회원가입</a> 
<a href="/Member/id_search.jsp">아이디 찾기</a>
<a href="/Member/ps_search.jsp">비밀번호 찾기</a>
</form>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>